# REPORT B — Keeping Laguna fast at 128k (Prompt 3)

Research completed 2026-10-11 by an independent web-research subagent. Fact/estimate/hypothesis separation preserved as delivered.

## Bottom line up front
128k is *feasible* to run, but the 900 tok/s prefill and 30 tok/s generation targets are **not reachable on this hardware** — both are blocked by hard floors (model FLOPs and DDR4 expert-traffic), not by tuning. Realistic: ~230–340 tok/s prefill (7–9 min TTFT at 128k) and ~13–15 tok/s single-stream decode; DFlash likely goes neutral-to-negative at 128k and should be re-tuned to n-max 3–4 or off.

## 1. ESTABLISHED FACTS (with sources)

### Model architecture
- **Laguna S 2.1**: 118B total, ~8B activated/token, 48 layers (12 global + 36 sliding-window-512, interleaved 1:3), 256 routed experts top-10 + 1 shared expert, GQA 8 KV heads, head_dim 128. Source: [model card](https://huggingface.co/poolside/Laguna-S-2.1); confirmed field-by-field from [config.json](https://huggingface.co/poolside/Laguna-S-2.1/resolve/main/config.json): `hidden_size 3072`, 48 attn heads on full layers / 72 on SWA layers, `num_key_value_heads` 8 (uniform), `moe_intermediate_size` 1024, `layer_types` full at layers 0,4,8,…,44.
- **Per-layer-type RoPE**: full layers = YaRN, θ=5e5, factor **128**, orig_ctx 8192, beta_fast 32 / beta_slow 1.0, `attention_factor` 1.4852, **partial_rotary_factor 0.5** (64 of 128 dims rotated); SWA layers = plain RoPE, θ=1e4, all 128 dims. Source: config.json `rope_parameters`.
- **The UD-IQ3_S GGUF** (header parsed directly from [unsloth/Laguna-S-2.1-GGUF](https://huggingface.co/unsloth/Laguna-S-2.1-GGUF), 814 tensors): embeds `laguna.context_length = 262144`, `rope.scaling.type = yarn`, `factor = 32.0`, `original_context_length = 8192`, `freq_base_swa = 10000.0`, `dimension_count = 64` / `dimension_count_swa = 128`, `attention.sliding_window = 512`. Expert tensors: **IQ2_S ×92, IQ4_XS ×45, Q6_K ×2, IQ3_S ×2** (141 = 47 layers × 3); non-experts: Q6_K ×378, F32 ×287 (norms), Q8_0 ×8.
- **GGUF ships configured for 256K**; beyond that: `--ctx-size 1048576 --rope-scaling yarn --rope-scale 128 --yarn-orig-ctx 8192`. Source: [poolside/Laguna-S-2.1-GGUF](https://huggingface.co/poolside/Laguna-S-2.1-GGUF). **At 128k no rope override is needed** — the embedded factor 32 covers up to 262144.

### Engine (poolsideai/llama.cpp, branch `laguna`)
- **SWA is truly bounded, not just masked.** The fork routes laguna through the dual ISWA cache (`src/models/laguna.cpp:167-168` → `build_attn_inp_kv_iswa()`). SWA cache = `GGML_PAD(min(ctx, n_swa + n_ubatch), 256)` cells (`src/llama-kv-cache-iswa.cpp:73`) — 512 + 512 = **1024 cells/layer** at default ubatch, regardless of context length. SWA compute is O(n·window), SWA memory O(window). Per-layer-type RoPE implemented (`src/models/laguna.cpp:42-51`).
- **KV cache placement follows layer offload** (`src/llama-kv-cache.cpp:212-218`); `--no-kv-offload` forces CPU RAM.
- **KV quantization CLI exists**: `-ctk/-ctv` accept `f32,f16,bf16,q8_0,q4_0,q4_1,iq4_nl,q5_0,q5_1` (`common/arg.cpp:301-310`). CUDA flash-attention **decode (vec kernel)** handles Q4_0/Q8_0/BF16/F16 natively (`ggml/src/ggml-cuda/fattn-common.cuh:622-650`). **Prefill (mma/tile kernels) requires F16 K/V** → quantized KV allocates a full-KV F16 conversion scratch per layer per chunk (`fattn.cu:557-576`).
- **Expert VRAM/RAM split is static, per-layer** (no dynamic expert cache in the fork): `--cpu-moe` / `--n-cpu-moe N` / `--override-tensor` push whole layers' `ffn_*_exps` to CPU (`common/arg.cpp:2475-2498`). Consequence: **chunked prefill cannot thrash any expert cache** — chunk size only affects compute buffers, the KQ mask, and kernel efficiency.
- **DFlash**: `--spec-type draft-dflash`, block size from `dflash.block_size` metadata, n-max clamped to block_size−1 (`common/speculative.cpp:945-966`). Draft GGUF metadata (parsed): **1.1B params, 6 layers, block_size 16, 72 heads / 8 KV heads, SWA-512 on all 6 layers, `rope.scaling.type = none`, θ=5e5**, attaches to target layers [2,11,20,30,39,48]. MoE is built per-layer over whole `[n_embd, n_ff, n_expert]` tensors, so **each expert's weights are read once per forward regardless of batch size** — verification-step expert traffic scales with *unique* experts in the batch, not tokens × 10.
- **The fork predates the upstream DFlash quantized-KV rotation fix**: no rotation handling in `common/speculative.cpp` (upstream `ggml-org/llama.cpp#25823` absent). Quantized KV + DFlash together is a correctness risk in this fork.
- Upstream PR `ggml-org/llama.cpp#25165` is the base; the fork adds S 2.1 in commits `9c899a6`/`2bd55d0` plus the DFlash path.

### Weight / traffic constants
- Expert weights: 47 × 256 × 3 × 3072 × 1024 = **113.6B params @ ~3.21 bits ≈ 45.5 GB**
- Signal path (attention + shared experts + embeddings + norms): ~4.0B params, mostly Q6_K ≈ **3.3 GB**
- Per-token expert traffic: **2.14 GB/token**; activated-params check ≈ 7.8B ✓ ("~8B activated")

## 2. KV CACHE MATH (estimates, math shown)
Per-token per-layer: `n_kv_heads(8) × head_dim(128) × 2 (K+V) × bytes/elem`. KV head count uniform across layers (config.json).

| Format | bytes/token/layer |
|---|---|
| F16 / BF16 | 8×128×2×2 = **4096 B (4 KiB)** |
| Q8_0 | **2048 B (2 KiB)** |
| Q4_0 | 8×128×2×0.5625 = **1152 B** |

| Cache segment | 8k / F16 | 128k / F16 | 128k / Q8_0 | 128k / Q4_0 |
|---|---|---|---|---|
| Global: 12 layers × n × 4 KiB | **384 MiB** | **6.00 GiB** | 3.00 GiB | 1.69 GiB |
| SWA: 36 layers × 1024 cells × 4 KiB (window-bounded, n-independent) | **144 MiB** | **144 MiB** | 72 MiB | 40.5 MiB |
| **Total target KV** | **528 MiB** | **6.14 GiB** | **3.07 GiB** | **1.73 GiB** |
| DFlash draft KV (6 lyr × 1024 cells) | 24 MiB | 24 MiB | — | — |

**Global-layer KV is the only cache term that grows with context** — and it competes 1:1 with the VRAM expert cache.

## 3. MEMORY BUDGET TABLES

### VRAM (16 GB card, ~15.5 GiB usable)
| Item | 8k (today, F16 KV) | 128k / F16 KV | 128k / Q8_0 KV | 128k / Q4_0 KV, draft→CPU |
|---|---|---|---|---|
| Signal path (Q6_K/F32, GPU) | 3.3 | 3.3 | 3.3 | 3.3 |
| Experts in VRAM | ~8.7 (~19%) | ~8.7 | ~7.5 (~16%) | ~6.5 (~14%) |
| DFlash draft BF16 (CUDA0) | 2.2 | 2.2 | 2.2 | 0 (→CPU) |
| KV cache | 0.53 | 6.14 | 3.07 | 1.73 |
| Compute buffers + KQ mask + CUDA ctx | ~1.0 | ~1.5 | ~1.5 | ~1.5 |
| **Total** | **~15.7 (fits, tight)** | **~21.8 ✗** | **~17.6 ✗** | **~13.0 ✓** |

Notes: KQ mask for global layers at 128k/ub512 = 131072×512×2 B = **134 MB** transient per chunk. With Q4_0/Q8_0 KV, prefill needs per-layer F16 conversion scratch (~256 MB/layer transient). `--swa-full` is off by default (keep it off).

### System RAM (128 GB DDR4-2133)
| Item | 8k | 128k |
|---|---|---|
| Experts in RAM (rest of 45.5 GB) | ~36.8 GB | ~39 GB |
| Draft (if moved to CPU) | 0 | 2.2 GB |
| OS / server / misc | ~4 GB | ~4 GB |
| **Total** | **~41 GB** | **~45 GB — comfortable** |

## 4. PER-STEP LATENCY BUDGET
Calibration anchors (user-measured at 8k): prefill 779 tok/s (10.5 s / 8k), decode 16.1 tok/s (62 ms/token, DFlash on).

**Constant with context:** expert weight traffic per token (~1.7 GB from RAM → ~60 ms/token, the dominant decode term), SWA attention O(n·window), draft cost (~10–15 ms/step), sampling.
**Grows with context:** global-layer attention (prefill O(n²), decode O(n) KV reads), global KV memory, KQ mask fill.

### Prefill per 131072-token prompt at 128k
| Term | Time (est.) |
|---|---|
| Global attention: 12 lyr × 4·n²·6144 ≈ **5.1 PFLOP** | **230–390 s** (22 TFLOPS FP16 @ 60–100% flash-attn eff.) |
| Expert MLP: 256 chunks × ~45.5 GB × 0.84 from RAM ≈ 9.8 TB | **~150–200 s** (@ ~50 GB/s, calibrated from 8k) |
| SWA attention ≈ 89 TFLOP | ~4–7 s |
| Masks/fill/overhead | ~5 s |
| **Total TTFT** | **~390–600 s → ~220–340 tok/s avg** |

The 5.1 PFLOP global-attention term alone exceeds the 146 s budget implied by 900 tok/s. **900 tok/s prefill is infeasible on a 22-TFLOP card** — a model-FLOPs floor, not a tuning gap.

### Decode per token at 128k
| Term | Time |
|---|---|
| Expert traffic (single token): ~1.7 GB from DDR4 | **~60–65 ms** (calibrated) |
| Global attention KV read: 12×131072×1152 B (Q4_0) = 1.8 GB from VRAM @ 360 GB/s | ~5 ms |
| SWA attention, norms, sampling, launch | ~3–5 ms |
| **Single-stream total** | **~68–75 ms → ~13–15 tok/s** |

**DFlash verification step** (batch B = 1 + n_draft): expert traffic scales with unique experts per layer (~69 @ B=8, ~119 @ B=16 under uniform routing); attention = B × single-token.

| n-max (B) | step time (est.) | accepted/step E (α≈0.65) | effective |
|---|---|---|---|
| 7 (8) | ~380–530 ms | ~2.8 | **5–8 tok/s — worse than no draft** |
| 3 (4) | ~120–160 ms | ~2.3 | ~14–18 tok/s — roughly break-even |
| off (1) | 68–75 ms | 1 | **13–15 tok/s** |

30 tok/s needs 33 ms/token < the ~60 ms DDR4 expert-traffic floor. **Infeasible**: would require ≥58% of experts (≈26 GB) resident in VRAM.

## 5. ENGINE CAPABILITIES REQUIRED — status in the fork
| Capability | Status |
|---|---|
| Per-layer-type RoPE (YaRN full + plain SWA, partial-rotary 64 dims) | **Present** (`laguna.cpp:42-51`) |
| Window-bounded SWA KV (ISWA dual cache) | **Present** (`llama-kv-cache-iswa.cpp:73`) |
| YaRN factor from metadata | **Present** |
| KV cache quantization (Q8_0/Q4_0) + CUDA flash-attn | **Present** (vec kernel native; prefill via F16 conversion scratch) |
| Static expert VRAM/RAM split (`--n-cpu-moe`, `--override-tensor`) | **Present** |
| DFlash block speculative decoding | **Present** |
| DFlash + quantized-KV rotation fix (upstream #25823) | **Missing** — do not combine `--cache-type-k q8_0/q4_0` with DFlash without validation |
| Dynamic/paged expert caching; per-expert placement | **Missing** (static only) |

## 6. HYPOTHESES (labeled)
- **H1 — Draft acceptance degrades at 128k.** The draft's RoPE has `scaling.type = none`; at 128k positions it is far out of distribution even though its window is 512. Combined with verify-batch expert amplification, DFlash may be net-negative at 128k. *Evidence needed:* server speculative stats (acceptance rate) at 8k vs 128k from the same build.
- **H2 — Routing locality makes verify cheaper than the uniform-random estimate.** Consecutive tokens likely share experts; unique-experts-per-batch may be well under 69 @ B=8. *Evidence needed:* per-step decode time vs n-max sweep (3/4/7/15) at fixed context.
- **H3 — The "pinned" in "pinned system RAM" is imprecise.** The fork places CPU experts via `ggml_backend_cpu_buffer_type()` (regular host allocation); no pinned-memory expert path found. Functionally irrelevant to the budget.

## 7. CONCRETE RECOMMENDATIONS (each with verification evidence)
1. **Run 128k as `-c 131072` with no rope override** (embedded YaRN factor 32 covers ≤262144). *Verify:* startup log shows `rope scaling: yarn, factor 32`; run a needle-in-haystack eval at 100k+ tokens.
2. **Fit VRAM with `--cache-type-k q4_0 --cache-type-v q4_0` and move the draft to CPU** (`-ngld 0`, drop `--spec-draft-override-tensor '.*=CUDA0'`). *Verify:* startup "KV cache size" line + `nvidia-smi` ≤ 15 GB; perplexity f16-KV vs q4_0-KV on a long-context sample.
3. **Do NOT combine quantized KV with DFlash in this fork** until validated (missing rotation fix). *Verify:* A/B output-quality check f16-KV+DFlash vs q4_0-KV+DFlash.
4. **Retune DFlash for 128k: try `--spec-draft-n-max 3` or disable entirely**; n-max 7–15 expected to hurt at 128k. *Verify:* tok/s A/B at 128k for n-max ∈ {0,3,4,7} with acceptance stats. (Community data point: width 4 beats width 7 at 32k.)
5. **Chunked prefill: keep `-ub 512`** (default); optionally try 1024 — it does not thrash anything (no dynamic expert cache), only grows the 134 MB KQ mask. *Verify:* TTFT comparison; watch for compute-buffer allocation failures.
6. **Reset the targets:** ~250–330 tok/s prefill and ~13–15 tok/s decode is the hardware-plausible envelope at 128k; 900/30 needs ~2× VRAM for experts (≥26 GB resident) and ~3× attention FLOPs — i.e., a bigger GPU, not flags.

## 8. EXACT EVIDENCE NEEDED TO SETTLE UNCERTAINTIES
- Full `llama-server` command line and startup log (rope config, KV cache bytes, per-device VRAM, dflash block_size lines).
- Server speculative stats at 8k vs 32k vs 128k (acceptance rate, mean accepted length) — settles H1/H2.
- `nvidia-smi dmon` during decode and prefill timing logs at 128k (validates the 5.1 PFLOP attention floor vs expert-streaming split).
- Needle-in-haystack or long-perplexity run at 128k with the embedded 256K YaRN config — settles long-context correctness before perf tuning.
