# Laguna S 2.1: CPU experts & GPU cache uploads — research report

Date: 2026-10-11. Engine inspected: poolsideai/llama.cpp, branch `laguna` (shallow clone of tip ~Aug 2026).
Mission: fastest practical execution strategy for Laguna S 2.1's non-VRAM-resident experts on
Threadripper 1950X + RTX 4060 Ti 16GB. Current: 779 tok/s prefill, 16.1 tok/s gen @ 8k.
Targets: 900 / 30.

## 0. Bottom line

At decode batch sizes the CPU expert path is **DRAM-bandwidth-bound on expert weight bytes** —
nothing else in the CPU path is worth optimizing. Throughput obeys one equation:

```
tok/s  ≈  (effective host streaming bandwidth) / (expert weight bytes read per token)
```

Everything below is a consequence of that equation. The highest-value work is therefore:
(1) confirm the two unknowns that set the ceiling (effective host BW, bytes/token mix),
(2) remove bytes (hot experts → VRAM, lower-bpw requant), not kernels;
(3) fix the prefill upload path, which is fully serialized on the CUDA main stream today.

A critical scoping finding: **the stock poolside `laguna` fork contains no GPU expert-cache code at all**
(verified by source grep — see §1). The "GPU cache-refresh uploads queued after CPU expert computation"
behavior in the task premise must come from a locally-applied patch (most likely modeled on upstream
PR #27861 or equivalent). §5 evaluates the overlap proposal against that reference design, but the
**first verification step is to identify which cache code is actually in the local install** — and
whether its decode-only gate (n_tokens == 1) makes it completely inert under DFlash verification
batches (n_tokens = n_draft+1 ≥ 2).

---

## 1. ESTABLISHED FACTS (with sources)

### 1.1 Model architecture

- Laguna S 2.1: 118B total, ~8B activated/token, 48 layers (12 global + 36 sliding-window, window 512),
  256 routed experts + 1 shared expert, top-10 routing, GQA with 8 KV heads, head dim 128,
  vocab 100,352, 1M context, sigmoid routing with score-correction bias, softplus attention output gate.
  Source: official model card, https://huggingface.co/poolside/Laguna-S-2.1
- Derived dimensions (see §2 for math): **n_embd = 4096, expert FFN dim = 768**,
  routed expert weight = 3 × 4096 × 768 = 9,437,184 params.
- GGUF variants: https://huggingface.co/poolside/Laguna-S-2.1-GGUF —
  `laguna-s-2.1-Q8_0.gguf` 129 GB ("routed experts Q8_0, signal path kept BF16"),
  `laguna-s-2.1-Q4_K_M.gguf` 68 GB, `laguna-s-2.1-F16.gguf` 235 GB,
  `laguna-s-2.1-DFlash-BF16.gguf` 2.2 GB.
- UD-IQ3_S file in use: unsloth `Laguna-S-2.1-UD-IQ3_S.gguf`, 48,428,911,520 bytes (~45.1 GiB),
  sha256 `8a9ab3f8b3ff1723441cd251e873b295a7ef086d78dbae7515e5e27c8382b002`
  (third-party measurement log: https://github.com/hizrianraz/laguna-s-2.1-spark-agentic/blob/HEAD/results/sku_unsloth-ud-iq3-s/README.md).
  Expert tensors use mixed quantization including IQ2_S, IQ4_XS, Q6_K (per task brief).
- Quant bit-rates: IQ2_S = 2.5625 bpw (from struct size in code, see below; HF docs round to 2.5),
  IQ4_XS = 4.25 bpw, Q6_K = 6.5625 bpw. Source: https://huggingface.co/docs/hub/gguf and
  `ggml/src/ggml-common.h` (`block_iq2_s` = 82 bytes / 256 weights).
- DFlash: 5-layer Llama-style draft model proposing up to 7 tokens/step at ~70% per-position
  acceptance on coding tasks (per Laguna XS 2.1 card, same draft family;
  https://huggingface.co/poolside/Laguna-XS-2.1). Official S 2.1 llama.cpp recipe uses
  `--spec-draft-n-max 15`, draft pinned to GPU via `--spec-draft-override-tensor '.*=CUDA0'`.
  Community measurements on llama.cpp say n-max 15 is too high on consumer GPUs
  (K=15 → 10–15 tok/s; K=7 → 40–50 tok/s per NVIDIA forum report; n-max 4 → 41.5–43.9 tok/s
  vs 15.5 tok/s at n-max 15 on Strix Halo):
  https://github.com/dai8647/llama-cpp-turboquant-experts-laguna,
  https://huggingface.co/raulvidis/Laguna-S-2.1-ROCmFP4-STRIX-GGUF.

### 1.2 Engine: what the poolside `laguna` fork is and isn't

- Branch `laguna` of https://github.com/poolsideai/llama.cpp. Diffs vs upstream are:
  "Full laguna support" (commit `9c899a6`, 2026-07-20: arch support incl. `src/models/laguna.cpp`,
  `src/models/dflash.cpp`, DFlash draft contract in `common/speculative.cpp`, chat autoparser),
  "laguna: add Laguna-S.2" (`2bd55d0`), DFlash non-finite-feature sanitization (`cf7fe54`, `04b2b72`),
  plus a docs merge (`06f8ceb`, 2026-08-04). Source: commit list
  https://github.com/poolsideai/llama.cpp/commits/laguna and
  https://github.com/poolsideai/llama.cpp/commit/9c899a6.
- Base Laguna arch support also merged upstream as ggml-org/llama.cpp#25165 (merged 2026-07-22,
  merge commit `1f66c3ce`).
- **A source grep for `moe.?cache`, `expert.?cache`, `prefetch.?expert` across `src/`, `ggml/`,
  `common/` of the fork returns zero hits.** There is no GPU expert cache, no prefetch,
  no per-expert placement in the stock fork. Any "cache-refresh upload" behavior in the local
  install comes from a patch applied on top — verify which one before optimizing it.

### 1.3 How Laguna's MoE executes (from `src/models/laguna.cpp` + `src/llama-graph.cpp`)

Per MoE layer, in order (all verified in `build_moe_ffn`, `src/llama-graph.cpp`):

1. Router: `logits = ffn_gate_inp × cur` → `[256, n_tokens]`; sigmoid → probs; + `ffn_exp_probs_b`
   selection bias; `selected_experts = argsort_top_k(probs, 10)` → `[10, n_tokens]`;
   `weights = get_rows(probs, selected)` → `[1, 10, n_tokens]`. (GPU; tiny.)
2. `up   = mul_mat_id(ffn_up_exps   [4096, 768, 256], cur [4096,1,n_tokens], selected)` → `[768, 10, n_tokens]`
3. `gate = mul_mat_id(ffn_gate_exps [4096, 768, 256], cur, selected)` → same shape
4. `cur  = swiglu(gate, up)` — already a single fused kernel (`ggml_swiglu_split`).
5. f16-safety rescale: per-column L2 norm (`sqr → sum_rows → sqrt → div → scale`), a few elementwise
   passes over `[768, 10, n_tokens]` (~30 KB at k=1) — negligible.
6. `down = mul_mat_id(ffn_down_exps [768, 4096, 256], swiglu_out, selected)` → `[4096, 10, n_tokens]`
7. `experts = down * weights`; 10 views + 9 adds to aggregate.

Gate and up are **separate** `GGML_OP_MUL_MAT_ID` ops sharing the same input activation and the
same `selected_experts` ids. (A merged gate_up tensor path exists in `build_moe_ffn` but Laguna's
GGUF stores separate tensors, so it is not taken.)

### 1.4 CPU expert kernel reality (`ggml/src/ggml-cpu/`)

- `ggml_compute_forward_mul_mat_id` (`ggml-cpu.c`): rows grouped by expert; threads split the
  `(rows × pairs)` grid into chunks (`chunk_size = 64` when `nr0 == 1 || nr1 == 1`, i.e. decode);
  if chunks < 4×nthreads it falls back to a plain nthreads-way row split — all 32 threads stay busy
  at batch 1 (768 rows gate/up, 4096 rows down vs 32 threads). One `ggml_barrier` per op.
  NUMA chunking is disabled when `ggml_is_numa()` — which is **false unless `--numa` is passed**,
  because the default strategy is `GGML_NUMA_STRATEGY_DISABLED` (`common/common.h`; `llama_numa_init`
  is a no-op for DISABLED). So on the 1950X, stock flags = no thread pinning, no NUMA awareness.
- The IQ2_S dot product (`ggml_vec_dot_iq2_s_q8_K`, `ggml/src/ggml-cpu/arch/x86/quants.c`, AVX2 path):
  per 256-weight super-block it does grid-table lookups via scalar loads into `_mm256_set_epi64x`,
  sign-bit unpacking (`shuffle/and/cmpeq/xor/sub`), `_mm256_maddubs_epi16` dots and
  `_mm256_madd_epi16` scale accumulation — roughly 70–80 µops per 64 weights. The activation side
  is Q8_K (input is quantized once per op via `from_float`, cost partitioned across threads).
- There is **no fused gate/up (or gate/up/down) CPU path** in this tree, and no newer fused MoE CPU
  kernel to port. GPU side already fuses at graph level: `mul_mat_id_glu_ops`
  (`MUL_MAT_ID, MUL_MAT_ID, GLU` → one node, `ggml-cuda.cu`), but that only applies to
  GPU-resident experts.

### 1.5 Scheduler: when experts run on CPU vs GPU, and how uploads work today

- `-ncmoe N` / `-cmoe` = tensor buffer overrides putting `blk.N.ffn_(up|down|gate|gate_up)_exps`
  (routed experts only; shared experts stay on GPU) into CPU buffers
  (`common/arg.cpp`, `common/common.h` `LLM_FFN_EXPS_REGEX`).
- The CUDA backend's `offload_op` (`ggml/src/ggml-cuda/ggml-cuda.cu`):
  `get_op_batch_size(op) >= op_offload_min_batch_size` (default 32, env `GGML_OP_OFFLOAD_MIN_BATCH`);
  for `MUL_MAT_ID` the "batch" is `op->ne[2]` = n_tokens. **Consequence: decode (1 token) and
  DFlash verification (≤16 tokens) always run experts on CPU; prefill ubatches (≥32) offload
  expert matmuls to the GPU with uploads.**
- The used-experts-only upload path (`ggml_backend_sched_compute_splits`, `ggml/src/ggml-backend.cpp`):
  when a CPU-resident `MUL_MAT_ID` is offloaded, the scheduler reads back the ids tensor
  (`tensor_get_async` + **full `ggml_backend_synchronize(ids_backend)` — a device-wide drain**),
  builds the used-expert bitset (cached per unique ids tensor pointer), groups consecutive experts,
  and issues `cudaMemcpyAsync` H2D **on the backend's main compute stream**
  (`ggml_backend_cuda_set_tensor_async` → `cudaMemcpyAsync(..., cuda_ctx->stream())`).
  Uploads and kernels are therefore fully serialized today; the ids readback also serializes
  every layer's prefill ubatch.
- `--load-mode none` matters with `-ncmoe`: default `auto` resolves to mmap, leaving CPU expert
  buffers pageable instead of pinned; a fork's measured cost of the default is **2.8× slower
  prefill, 1.15× slower decode** (https://github.com/wyverntkc/llama.cpp-4xv100/blob/HEAD/docs/moe-offload.md).

### 1.6 Reference implementations (closest prior art)

- **Upstream PR ggml-org/llama.cpp#27861** — "GPU-resident LRU cache for host-offloaded MoE expert
  weights" (csantiago78): companion `[ne0,ne1,K+1]` tensors per cached layer, I32 id→slot tables
  (device copy remaps ids for a second mul_mat_id chain; host copy lets the CPU mul_mat_id skip
  cached ids), exact split by construction, **decode-only (n_tokens == 1)**,
 
...[truncated 19044 chars]
  throttled async uploads by a worker thread, new mapping published only after upload completes.
  Env: `LLAMA_MOE_CACHE_SLOTS`, `LLAMA_MOE_CACHE_INSERTS`. Measured on Qwen3.8-Flash-Next
  UD-Q4_K_XL (512 experts, 10 routed): LRU-64 ~67% hit rate, decode 15.5 → 19–20 tok/s.
  Source: https://github.com/ggml-org/llama.cpp/pull/27861
- **Fable's MoE-offload prefill fixes** (thecodacus/llama.cpp, branches `fable5/host-register` and
  `fable5/prefetch-experts`): `GGML_CUDA_REGISTER_HOST=1` pins mmap'd CPU expert weights
  (H2D 6–7 → ~20 GB/s on their box); `GGML_SCHED_PREFETCH_EXPERTS=1` prefetches each layer's
  experts on a **second CUDA stream** so uploads overlap compute. Measured prefill 1143 → 1880
  tok/s (+64%), token-identical, on RTX 3060 + Qwen3.6-35B-A3B with `-ncmoe 26`.
  Source: https://github.com/terrazamelchor/modoo-jev-llama.cpp
- **markldn/llama.cpp-qwen4exp-lru-async**: `--moe-expert-cache-experts` / `--moe-expert-cache-inserts`
  VRAM pool in front of `-ncmoe` tensors; miss runs the normal CPU path (never stalls);
  background thread fills the cache off the critical path; mapping published via table swap at a
  later `llama_moe_cache_step()`; uploads throttled per layer per step; `-ncmoe` experts pinned at
  load. (Repo 404s as of 2026-10-11; design captured from indexed README excerpts.)
- **leoustc/llama.cpp-moe** "experts-first" slot design + **dai8647/llama-cpp-turboquant-experts-laguna**
  frequency-based placement (`--moe-freq-report-path` two-pass: profile then pin hot experts):
  router-aware expert-level paging, full-slot or frequency modes; Laguna S 2.1 tested on ROCm.
  Sources: https://github.com/leoustc/llama.cpp-moe/blob/HEAD/work.md,
  https://github.com/dai8647/llama-cpp-turboquant-experts-laguna

### 1.7 Zen 1 execution facts used below

- Zen 1 cracks 256-bit AVX2 instructions into two 128-bit µops (half the vector throughput of
  Zen 2+); no AVX-512, no VNNI. 2× 128-bit FMA units → ~8 FP32 FLOP/cycle/core.
- 1950X: 2 dies; BIOS NPS1 (UMA, interleaved) shows 1 NUMA node, NPS2 shows 2. Quad-channel
  DDR4-2133: theoretical 68.3 GB/s; achievable STREAM usually 60–75% of that.

---

## 2. ESTIMATES (math shown)

### 2.1 Architecture dims derived from official GGUF sizes

Q8_0 file = 129 GB = "routed experts Q8_0, signal path kept BF16" (official notes).
Signal path ≈ attention (48 × 41.9M = 2.01B) + shared experts (48 × 3×4096×768 = 0.45B)
+ embeddings (100352 × 4096 = 0.41B) ≈ 2.9B params × 2 B = 5.8 GB.
Routed experts = 129 − 5.8 = 123.2 GB at 8.5 bpw (Q8_0) → 115.96B params.
Per expert: 115.96B / (48 × 256) = 9.437M = 3 × 4096 × 768 → **n_embd = 4096, n_ff_exp = 768**.
Cross-checks: F16 235 GB ≈ 117.5B × 2 B (vs 118.8B estimated incl. head — 1%, file size is rounded);
Q4_K_M 68 GB ≈ 115.96B × ~4.55 bpw (imatrix mix) + 3.1 GB Q8_0 signal ≈ 69 GB ✓.

### 2.2 The one equation: bytes per token → tok/s ceiling

- Per expert matrix: 4096 × 768 = 3,145,728 params.
- IQ2_S @ 2.5625 bpw → 1,007,616 B ≈ **0.984 MB** per matrix; per expert (gate+up+down) **2.95 MB**.
- Per token per layer (10 routed experts; shared expert stays on GPU under -ncmoe): 29.5 MB.
- 48 layers: **1.416 GB/token** at pure IQ2_S; at mixed avg ≈ 3.2 bpw (UD-IQ3_S file:
  48.43 GB / 118B params = 3.28 bpw overall): **≈ 1.77 GB/token**.
- Decode ceiling: tok/s ≤ BW_eff / 1.77 GB.
  BW_eff = 45 GB/s → 25.4 tok/s; **BW_eff = 28 GB/s → 15.9 tok/s ≈ the measured 16.1.**
  The measurement is consistent with CPU-expert streaming at ~28 GB/s effective and nothing else
  binding. (DFlash draft/verify overhead is evidently near net-neutral at current settings.)

### 2.3 Fused IQ2 gate/up: the bound that kills it

Gate and up read the same input activation (4096 fp32 = 16 KB at batch 1 — L1-resident) but
**different weight matrices** (0.984 MB each). A fused kernel reads each weight matrix exactly
once, same as unfused. Maximum conceivable saving: 16 KB re-read + one kernel launch
(~2–5 µs) vs ~19.7 MB weights + ~0.65 ms/layer → **< 1%**, and vs the 0.26% non-compute budget
Amdahl caps the gain at **1.0026×** even if all of it vanished. Dequant work is also
per-weight and not shared between gate and up. Conclusion: fusion optimizes the wrong side of a
~99%-weight-streaming op. This holds at verification batch sizes too (§2.4).

### 2.4 Verification batches (DFlash): still memory-bound, with one real inefficiency

Per verify pass with k tokens: pairs P = 10k; distinct experts D(k) = 256×(1−(1−10/256)^k)
(D(16) = 121, i.e. 24% fewer than P = 160). Bytes/pass/layer (3 matrices): D × 0.984 × 3;
arithmetic intensity = 2×P×768×4096×3 / bytes ≈ 6.4–8.5 FLOP/B for k = 1–16, vs a Zen 1 ridge
point ≈ 10.5 FLOP/B (474 GFLOPS / 45 GB/s) → **memory-bound throughout**.
Dequant µop budget: ~70–80 µops/64 weights → ~3.4 µops/byte; 119 MB/layer/pass → ~0.6 ms
compute vs 2.6 ms memory at 45 GB/s → **4–5× margin: memory-bound, dequant is not close**.
Real inefficiency: `one_chunk` loops pairs-outer, rows-inner, so each pair re-streams the
expert's weights from DRAM (0.984 MB × P instead of × D; L3 = 32 MB shared across 32 threads
can't retain them). A rows-outer restructure (dequantize row once, dot against all pairs'
activations) would cut verification-pass expert bytes by ~24% at k=16. It cannot beat the
§2.2 floor (every token's experts must be read ≥ once).

### 2.5 Upload-overlap proposal: quantified

Assume a #27861-style cache with I inserts/layer/step, expert = 2.95 MB, link = 6.6 GB/s:
- Upload/layer = I × 2.95 MB → I=2: 5.9 MB → **0.89 ms**; CPU expert compute/layer ≈ 0.66 ms
  (at 45 GB/s) to 0.98 ms (at 28 GB/s). Per-layer uploads do **not** fit in per-layer CPU time —
  overlap must pipeline across layers.
- Per step totals: I=2 → 283 MB → **43 ms** vs CPU total 31.5–47 ms → uploads exceed the CPU
  window: throttled to I=1 (21.5 ms) they fit inside it.
- Contention: DMA reads pinned host RAM at 6.6 GB/s while 32 threads stream at ~28–45 GB/s →
  ~15–24% of host memory-controller bandwidth stolen during overlap → CPU side slows ~10–20%
  in the overlap window. Net: overlap converts up to ~21 ms of serialized upload into overlapped
  upload at the cost of ~10–20% slower CPU streaming in that window. Positive but small —
  and only if the cache is actually engaged (see §4.4).

### 2.6 Prefill upload model (explains 779 tok/s)

Per prefill ubatch, per CPU-expert layer: all 256 experts touched (8192-token prompt) →
3 × 256 × 0.984 MB = **755 MB/layer** → 48 layers = **36 GB/ubatch** → 5.5 s at 6.6 GB/s.
At `-ub 4096` (2 ubatches): ≈ 10.9 s ≈ measured 10.5 s for 8k tokens. **Prefill ≈ upload-bound
today**, consistent with uploads serialized on the main stream (§1.5). Doubling the ubatch
halves the re-upload count; overlapping uploads with compute (Fable's second-stream prefetch)
attacks the 5.5 s/ubatch directly.

---

## 3. HYPOTHESES (labeled; each names its falsifier)

- **H1. Fused IQ2 gate/up failed because the op is DRAM-weight-streaming-bound (§2.3).** The two
  candidates optimized launch/activation overhead (<1% of op time). Falsifier: a profile showing
  gate/up vec_dot achieving < 50% of STREAM bandwidth (would indicate a compute/dequant or
  threading problem instead).
- **H2. Effective host streaming is ~28 GB/s, well below the 45+ GB/s the hardware should give,**
  possibly from single-node page residency (no `--numa`, first-touch on node 0) or IF contention.
  Falsifier: `STREAM` triad ≥ 45 GB/s *and* per-token expert bytes/time matching §2.2 at that rate.
- **H3. `--spec-draft-n-max 15` is too high for this box** (community: K=15 → 10–15 tok/s,
  K=4–7 → 40+ tok/s on other hardware). Smaller blocks → less verification work per accepted
  token. Falsifier: A/B sweep (§6, exp. D) shows 15 optimal here.
- **H4. If the local cache is #27861-style with its `n_tokens == 1` gate, it is completely inert
  under DFlash** (target passes are always verification batches, n_tokens = n_draft+1 ≥ 2), making
  all cache-upload machinery pure overhead. Falsifier: local cache code has no n_tokens gate, or
  target single-token passes exist (check with cache-stats counters).
- **H5. Expert selection is skewed enough that static hot-expert placement beats any dynamic cache**
  (PR #27861 measured 67% LRU-64 hits on Qwen; Laguna routing may differ). Falsifier: measured
  selection histogram near-uniform → static placement buys little, prefer the dynamic cache.

---

## 4. Upload-overlap proposal — detailed evaluation

### Verdict
Directionally correct, small expected net gain, and **premature until H4 is resolved**: if the
cache never engages during verification batches, overlapping its uploads is optimizing a no-op.
If the cache does engage, the proposal is sound but must be implemented with exact stream/event
discipline — specified below. For prefill, the same idea (Fable's proven port) is high-value.

### 4.1 Exact CUDA stream ordering (for a #27861-style worker-thread cache)

Streams: `computeStream` (existing main stream: GPU expert GEMMs), `copyStream` (new, dedicated).
Events: `evKernelsDone`, `evUploadDone` (both `cudaEventDisableTiming`).

Per decode step, per layer:
1. Enqueue GPU cached-expert GEMMs on `computeStream` (reads only already-valid slots).
2. `cudaEventRecord(evKernelsDone, computeStream)` — marks the point after which victim slots
   are safe to overwrite.
3. `cudaStreamWaitEvent(copyStream, evKernelsDone, 0)` — **this is the missing edge in the
   "queued after CPU completion" design**: without it, early uploads can tear a slot still being
   read by an in-flight kernel. (The current after-everything ordering is safe but serial.)
4. Issue `cudaMemcpyAsync` H2D of the I new expert slices into victim slots on `copyStream`.
   Source = the pinned CPU expert tensors (immutable during inference — no staging copy needed).
5. `cudaEventRecord(evUploadDone, copyStream)`.
6. CPU expert computation proceeds concurrently on the host (no dependency on 2–5).
7. **Publish (next step boundary, before next step's GPU kernels):**
   `cudaStreamWaitEvent(computeStream, evUploadDone, 0)`, then atomically swap the id→slot table
   (same "publish only after upload completes" rule as #27861; a running graph never sees a torn slot).

### 4.2 Pinned-buffer lifetimes
- Source (host expert weights): pinned for the whole run — already true iff `--load-mode none`
  (else the mmap'd buffer is pageable and uploads go through the driver's bounce buffer; verify in
  the load log). Never unpin/free while the cache lives.
- Destination (VRAM slots): pool allocated once at startup, sized `n_cached_layers × (K+1)` expert
  slices (+1 dummy zero slot per #27861). Slot memory must outlive any in-flight kernel — guaranteed
  by the evKernelsDone edge, not by allocation lifetime tricks.

### 4.3 Double-buffering requirement
Yes, on the **destination** side: the worker writes slot generation N+1 while `computeStream` may
still read generation N. The evKernelsDone→copyStream edge (§4.1 step 3) is the lightweight form
of this (temporal double-buffering via events rather than 2× memory). Full 2× slot memory is only
needed if you want uploads for step t+1 to start before step t's kernels finish — not recommended
here; the event edge suffices and costs no extra VRAM.

### 4.4 DMA-vs-compute contention on the 6.6 GB/s link (not free — quantified)
- Upload rate 6.6 GB/s vs host streaming 28–45 GB/s → **15–24% host-memory-bandwidth contention**
  during overlap; expect the overlapped CPU expert work to slow ~10–20% in that window.
- Copy engine vs compute engines do not contend on Ada (async copy engines) — GPU kernel
  throughput is unaffected; only host RAM bandwidth is shared.
- Net arithmetic per step (I=1): ~21.5 ms of upload hidden behind ~31–47 ms of CPU work, minus
  ~10–20% CPU slowdown in the overlap window → expected net **≈ 5–12% decode-step reduction,
  and only on steps where the cache actually inserts**. Throttle inserts so
  I × 2.95 MB × n_cached_layers / 6.6 GB/s < CPU expert time per step, else uploads become the
  new bottleneck (§2.5).
- Interaction with DFlash: verification passes already batch k tokens through CPU experts
  (higher intensity, §2.4); the cache-hit path only helps the tokens whose experts are resident.
  Measure hit rate with cache-stats counters before tuning inserts.

---

## 5. Reference implementations worth porting (ranked by fit)

1. **Fable `fable5/prefetch-experts`** (thecodacus/llama.cpp): second-stream expert prefetch +
   host pinning for the *scheduler's* prefill upload path — directly fixes the serialized
   5.5 s/ubatch upload (§2.6). Proven +64% prefill, token-identical.
2. **Upstream PR #27861** (`exp/moe-lru-cache`): the LRU cache mechanism itself — but only after
   resolving H4 (extend or remove the n_tokens==1 gate for DFlash verification batches).
3. **dai8647 frequency placement** (`--moe-freq-report-path` two-pass): the cheapest way to get
   H5's histogram and a static hot set — profile first, then decide static vs dynamic.
4. **leoustc experts-first slot design**: the per-expert placement primitive, if static
   per-expert pinning wins (needs code; `-ot` can't split one expert tensor across backends).
5. Already-done fusions to NOT redo: `swiglu` (single kernel), CUDA graph-level
   `MUL_MAT_ID+MUL_MAT_ID+GLU` fusion (GPU-resident experts only).

Ruled out (with cause): fused IQ2 gate/up (§2.3); threadpool/barrier work (0.26% budget given);
128-bit "Zen-1-specific" kernels (cracked AVX2 already executes as 2×128-bit µops — same work);
gate/up/down activation reuse (16 KB, L1-resident — already free).

---

## 6. Ranked implementation changes (assumption + minimal A/B each)

All A/Bs: same prompt, same flags except the variable under test; `llama-bench -m <UD-IQ3_S>
-ngl 99 … -p 8192 -n 128` (or the server's `/metrics`); measure tok/s **and** per-phase ms
(prefill vs decode). Warm up 1 run; report median of 3.

1. **Confirm the two unknowns (1 h, no code).** Assumption: §2.2's ceiling model.
   Evidence needed: load-log lines (buffer types, `-ncmoe` value, `--load-mode`, free VRAM),
   `numactl --hardware`, STREAM triad, and per-request prefill/decode split.
   A/B: n/a — this gates everything below. If effective BW is already ~45 GB/s, the ceiling is
   ~25 tok/s and only byte-removal helps; if ~28 GB/s, NUMA/pinning may recover 30–60%.

2. **`--load-mode none` + `--numa distribute` sweep (5 min, flags only).**
   Assumption: pageable buffers and/or single-node residency are taxing streaming (H2).
   Evidence: load log shows buffer types; `numactl --hardware` shows node layout.
   A/B: baseline flags vs `+ -lm none` vs `+ -lm none --numa distribute` vs
   `numactl --interleave=all` launcher. Expected: 0–30% decode, up to 2× prefill if pinning
   was the prefill limiter. Kill if < 3%.

3. **DFlash `--spec-draft-n-max` sweep: 3, 4, 5, 7, 15 (30 min, flags only).**
   Assumption: H3 (15 overshoots on this box). Evidence: acceptance length per n-max from logs.
   A/B: fixed prompt, greedy, measure accepted-tokens/s and verify-pass ms. Community data
   predicts 4–7 wins big; kill if 15 wins here.

4. **Static GPU placement of 8 layers' experts: `-ncmoe 40` (10 min, flags only).**
   Assumption: ~6–7 GB VRAM is free (verify in load log); any 8 layers ≈ −17% CPU expert bytes.
   Evidence: `nvidia-smi` / load-log free VRAM ≥ 6.5 GB; no OOM.
   A/B: `-ncmoe 48` (or current) vs `-ncmoe 40`. Expected ≈ +15–20% decode (Amdahl on the
   CPU-expert share). If VRAM allows, extend to the max that fits. Kill on OOM or < 5%.

5. **Port Fable's second-stream prefetch for prefill uploads (1–2 days, ggml-cuda/sched).**
   Assumption: prefill is upload-serialized on the main stream (§1.5, §2.6).
   Evidence: prefill phase profile showing H2D before kernels per layer/ubatch.
   A/B: `-p 8192 -n 0` prefill tok/s, `-ub 512` and `-ub 4096`, before/after; must be
   token-identical. Expected: toward overlapped bound (~1300+ tok/s at ub 4096). This is the
   main lever for the 900 tok/s prefill target.

6. **Expert frequency profile → static hot-expert pinning (2–4 days, needs code).**
   Assumption: H5 (skew exists). Evidence: selection histogram over a representative
   workload (port dai8647's `--moe-freq-report-path` counter or add one to `build_moe_ffn`'s
   ids path). A/B: top-K experts pinned (leoustc-style slots or extended `-ot`) vs baseline;
   expected ≈ hit-rate × CPU-expert share (e.g. 50% hits → +25–40% decode). Kill if
   histogram is near-uniform — then prefer the dynamic cache instead.

7. **Upload-overlap for the cache worker (§4.1–§4.4) (2–3 days).**
   Assumption: local cache exists AND engages during verification batches (resolve H4 first —
   if the n_tokens==1 gate holds under DFlash, do this instead: remove/extend the gate, then
   re-measure; the overlap itself is moot until then).
   Evidence: cache hit/miss counters per step; Nsight/nvprof showing upload after CPU-done.
   A/B: same cache config, uploads-after-CPU vs uploads-after-GPU-enqueue (event-edged);
   measure step ms and hit rate. Expected: 5–12% on inserting steps (small — do 1–6 first).

8. **Rows-outer restructure of CPU `mul_mat_id` for verification batches (3–5 days, hardest).**
   Assumption: verification passes carry >1 pair/expert (true at n-max ≥ 3).
   Evidence: pairs/expert distribution from the ids tensors.
   A/B: decode tok/s at n-max 7/15 before/after; expected ~10–20% of the verification-pass
   CPU-expert time (≈ 24% byte cut at k=16, §2.4). Only after 1–6; cannot beat the §2.2 floor.

### Explicitly not recommended
Fused IQ2 gate/up kernels (§2.3 — <1% theoretical); threadpool/barrier tuning (0.26% budget);
buying a bigger VRAM cache before measuring hit rate; any work premised on the cache without
first identifying the local cache code and its n_tokens behavior (H4).

## 7. Open questions for the local install (needed to tighten this report)

1. Which expert-cache patch (if any) is applied on top of the poolside fork? (The stock fork has none.)
2. Exact launch flags: `-ncmoe` value, `--load-mode`, `-ub`/`-b`, `-t`, `--numa`, DFlash n-max.
3. Load-log buffer summary (free VRAM, buffer types for `blk.*.ffn_*_exps`).
4. `numactl --hardware` + BIOS NPS mode; STREAM triad number.
5. What the two fused gate/up attempts actually did (to name the flaw precisely rather than by category).
