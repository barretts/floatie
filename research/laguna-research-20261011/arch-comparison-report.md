# Why Strata/Qwen hits ~33 tok/s while Laguna S 2.1 does 16.1 tok/s — and whether 30 tok/s is physically plausible

**Date:** 2026-10-11. **Hardware in scope:** RTX 4060 Ti 16GB, Threadripper 1950X (16c/32t, AVX2-only Zen 1), 128GB DDR4-2133 quad-channel, measured PCIe ~6.6 GB/s.
**Conventions used below:** **[F]** = established fact (primary source cited). **[E]** = my arithmetic estimate from cited specs (assumptions stated). **[H]** = hypothesis (needs the named measurement).

## Summary

**Short answer:** The gap is not one thing; it is four compounding architectural advantages that all point the same way, plus one active self-inflicted wound in the current Laguna setup.

1. **[F]** Strata (Niko1221) keeps the hot experts in VRAM with an adaptive cache measured at ~100% hit rate, so a decode step moves ~0 GB of expert weights. Your llama.cpp-fork setup statically splits experts between VRAM and RAM, so ~78% of expert FLOPs run on the Threadripper every token — the step is CPU-FLOP-bound at ~51 ms of a ~62 ms step.
2. **[F]** Qwen3.8-Flash-Next's experts are ~4.92M params each vs Laguna's ~9.44M, and there are 24,576 of them with skewed usage — a few thousand cached covers nearly everything. Laguna has 12,032 experts at top-10-of-256; the same 16 GB VRAM covers a much smaller fraction of the hot set.
3. **[F]** Qwen3.8-Flash-Next uses Gated DeltaNet linear attention (O(1) per token) for 3/4 of layers; Laguna has 12 full global-attention layers whose KV grows with context (805 MB at 8k, **12.9 GB at 128k** — the 128k goal does not fit 16 GB VRAM without KV streaming/quantization).
4. **[F]** Strata's speculation (native MTP layer, 1.6–1.8x) works because the GPU does ~all expert compute, so batched verification amortizes VRAM reads. Your DFlash setup is the wound: **three independent community sources measure DFlash in poolside's fork as 2–4x *slower* than no draft on VRAM-constrained CUDA** (15.60 → 3.39–6.75 tok/s across n-max 7–64; 39.5 → 6.9–15.9 on M4 Max; one operator marks it DO_NOT_PROMOTE). **[H]** Mechanism: the verify batch multiplies *CPU* expert FLOPs by (n+1) while acceptance adds only ~1–4 tokens, and the 2.2 GB BF16 draft displaces experts from VRAM.

**Verdict on 30 tok/s generation:** **[E]** Not plausible with the current stack. The step budget is 33.3 ms; the CPU expert term alone is ~45–55 ms today. 30 tok/s is at the *edge* of physical plausibility only as a combination — DFlash off (recovers to ~16–20), tighter expert quant (~22–24), faster AVX2 CPU kernels (~26–30) — and every step must be measured; kernel-level work alone is capped (ro99/strata's analogous measurement: 1.066x ceiling for a faster FP4 kernel on streaming-MoE Laguna decode, because the step is staging-bound, not math-bound). **Prefill 900 tok/s (from 779) is plausible** via batch/knob tuning (+15%).

**ro99/strata as an alternative engine: reject for this hardware.** **[F]** It streams experts from RAM over PCIe per token and measured 18.6 tok/s only with 64 GB of VRAM (2× RTX 3090 + 5060 Ti); at your 6.6 GB/s the staging term alone is ~370 ms/step worst-case. It has no throughput-positive speculative decoding (`--future-entropy` costs N+1 passes/token). Its value to you is its published cost model, which validates the PCIe analysis — not its binary.

---

## Findings

### 1. Strata's (Niko1221/Strata) exact speed mechanisms [F]

Primary sources: `docs/HOW_IT_WORKS.md`, `docs/DETAILS.md` (repo, main branch), README.

- **Expert placement:** VRAM holds attention + DeltaNet mixers, routers, shared experts, output head, MTP draft layer, KV cache (from 64K: only the most-read part, rest streams from RAM), and an **expert cache** filling the rest of VRAM with the most-used experts. The cache **adapts during the conversation** (`--adapt-every`, `--expert-cache N`, `--adapt-swaps`). "Every extra GB holds ~700 more experts, and every expert on the GPU is one the CPU does not have to compute." RAM holds all 24,576 experts pinned (low-RAM mode: mmap'd from `experts.bin`). SSD holds the 28.8 GB n-gram table, a few rows/token via OS cache.
- **Non-resident experts:** computed **on the CPU in place from RAM** (AVX-512/AVX2 kernels; ggml's kernels for the i-quants; Strata's own multi-token kernels), **simultaneously** with the GPU's cached experts — "neither waits for the other." A **tunable share goes over PCIe to the GPU instead** (`--pcie-frac`); since 0.1.42 the default share is auto-tuned from measured CPU speed: `L / (L + 1.85·R)`, clamped 0.10–0.60 (L = probed PCIe GB/s, R = CPU GB/s-equivalent). Measured best shares: 0.15–0.20 on RTX 3060, 0.20–0.25 on P100 — i.e., with a fast CPU the optimum sends *most* missed experts to the CPU, not over PCIe.
- **Tail-skip (0.1.42, default on CUDA):** in a verify window, a missed expert ranked ≤7 of top-10 for *every* token is skipped entirely (no copy, no compute, no renormalization). Measured decode gains: RTX 3060 +15.6%, RTX A4000 +12.9%, P100 +14.6%; **zero gain at 99.7% cache hit** (2-GPU). KL impact ~0.003–0.006 nats.
- **Quantized kernels:** GSQ-RCO quants (ISTA-DASLab). Engine 0.1.36: fused int8 tensor-core prompt kernels (Q2_0 prompt +16–22%); decode block-selection/argmax on thread-block clusters (sm_90+). CPU side: AVX-512/AVX2, multi-token kernels for i-quants.
- **Attention/KV:** GDN linear attention is O(1)/token; KV streaming from 64K (`--kv-resident 32768`) keeps only the read-hot part in VRAM (Q2_0 at 262K: 50.9 → 62.6 tok/s); optional 4-bit KV (~+4% at 128K) and hybrid K8V4 (RTX 3090: 85 → 99 tok/s at 198K).
- **Speculative decoding:** the model's own **MTP layer** drafts up to 3 tokens; one 48-layer pass verifies; 2.4–3.2 tokens/pass average; **1.6–1.8x** end-to-end. Plus a prompt-lookup drafter (up to 5 tokens; +6–11% on code edits). Third-party log (dual RTX PRO 4500): MTP acceptance 79.5%, expert-cache hit ≈100%, decode median 96.5 tok/s.
- **Prefill:** up to 8,192-token chunks; next-layer experts stream over PCIe **while the current layer's attention runs**; short chunks (<1,024 tokens) use CPU-share auto-tuning (−20–35% chunk time).
- **Official operating points:** RTX 5070 12GB + R5 7600 + 64GB DDR5: IQ3_XXS 62 tok/s gen / 1,750 tok/s prompt (32K); Q2_0 93 tok/s / 2,653 tok/s. (Engine 0.1.26/0.1.36; DETAILS.md `bench/results/2026-09-29-speed-0126`.)

### 2. Transferability of each mechanism to Laguna S 2.1 on identical hardware

| Mechanism | Transfers directly? | Blocker / note |
|---|---|---|
| Adaptive VRAM expert cache + CPU pool for misses | Needs reimplementation (engine is Qwen3.8-specific: MTP layer, n-gram table, GDN kernels) | **[E]** Laguna experts are 9.44M params (~4.5 MB at IQ3) vs Qwen 4.92M (~1.4 MB at IQ2_XS): 16 GB VRAM holds ~2,400 Laguna experts vs ~7,700 Qwen experts. Top-10-of-256 routing has higher per-layer entropy than top-10-of-24,576. **[H]** A ≥95%-hit cache is needed to beat the CPU-RAM path at 6.6 GB/s PCIe — unproven for Laguna's routing skew. |
| PCIe-share auto-tuning (send misses to CPU, not PCIe) | Transfers conceptually; **inverts on your box** | **[E]** Your PCIe is 6.6 GB/s vs Strata's assumed ~20; your RAM reads at ~50 GB/s. The optimal `pcie-frac` here is the 0.10 floor — i.e., *do what llama.cpp already does* (CPU-compute the misses). Streaming experts is the wrong move at 6.6 GB/s. |
| Route tail-skip | Portable idea (skip low-weight missed experts) | Needs fork work; changes outputs slightly (KL ~0.005). Only pays when misses dominate the step — true here. |
| MTP-style speculation | **Blocked by model** | Laguna has no MTP layer; DFlash is an external 2.2 GB draft and is measured net-negative in this fork (see §3 finding above). |
| GDN O(1) attention / KV streaming | **Blocked by model** | Laguna's 12 global layers need full KV (12.9 GB at 128k). KV quantization/streaming is the portable part. |
| Fused CUDA kernels / AVX-512 CPU kernels | Partially (kernels are quant-specific) | Your 1950X has no AVX-512; Zen 1 runs 256-bit AVX2 as 2×128-bit µops. Kernel ceiling ~1.066x per ro99/strata's analogous measurement. |
| Prefill prefetch overlap + CPU-share | Portable idea | Helps the 779 → 900 prefill goal, not decode. |

### 3. ro99/strata (C++ engine) as a candidate alternative [F]

- Native Laguna support: 48 layers 1:3 global/SWA, 256+1 experts top-10, NVFP4/MXFP4 experts, BF16 spine; "spine in VRAM; experts stream from RAM"; OpenAI-compatible `strata-server`.
- **Measured Laguna decode: 18.626 tok/s warm steady-state (53.69 ms/token)** — but operating point is **two RTX 3090 24GB + one RTX 5060 Ti 16GB (64 GB VRAM total)**, 251 GB RAM, 63.665 GiB MXFP4 checkpoint, context bound 256, short live context, greedy. Fresh (cold cache): 9.1–9.2 tok/s. Author's own note: "not yet the requested 10x or 30 tok/s."
- **Do not adopt for your hardware.** The engine is staging-bound by design; your 16 GB VRAM / 6.6 GB/s PCIe is far below its reference platform. Its speculative option (`--future-entropy`) deliberately costs N+1 passes/token. Its contribution to your mission is the cost model (next section), which corroborates the PCIe math.

### 4. The known bound: streaming-MoE decode is staging-bound [F]

From ro99/strata's README ("When it helps, and when it does not"):

| Workload | Decode step bound by | GPU matmul share | FP4-kernel result |
|---|---|---|---|
| Gemma 4 dense, fully resident | GPU kernel / HBM | 99.1% | 3.367x (built, exp. 0165) |
| **Laguna S 2.1 MoE, 63.7 GiB** | **routed-expert staging** | **6.2%** | **not built; ceiling 1.066x** |
| Inkling Small MoE | cache-miss staging / H2D | 5.5% | not built; ceiling ~1.06x |
| DeepSeek V4 MoE, 147 GB experts | host-side expert compute | ~2% | measured 0.98x |

"For a model whose experts stream from RAM, decode time is moving weights across PCIe, not multiplying them." Two compounding reasons: the kernel's fragment prepack becomes a per-staging cost on the bottleneck term, and at batch-1 across many small per-expert matrices dispatch is launch-bound, not bandwidth-bound (DeepSeek V4: 2.027 vs 2.038 ms — no difference). **Use this to cap expectations: no kernel swap on the expert path buys more than ~1.07x on a staging-bound Laguna decode.** (Related cost-model note, exp. 0031: at 340 ms/step, async weight staging ~100 ms, device-resident activations ~40 ms, per-layer device balance ~25 ms.)

### 5. Physics plausibility check for 30 tok/s generation [E unless marked F]

Model facts **[F]** (config.json + HF card): per expert 3×3072×1024 = **9.44M params**; active experts/step = 47 layers × 11 = **517 experts = 4.88B params**; attention fully active (2.79B) → ~8B active/token ✓.

Assumptions **[E]**: UD-IQ3_S ≈ 0.50 B/param effective → **2.44 GB of active expert weights per step**; static split puts ~10 GB of the ~45 GB file's experts in 16 GB VRAM (rest: KV ~0.4–0.8 GB at 8k, draft 2.2 GB BF16, attention/embeddings/buffers) → CPU share s ≈ 0.78; RAM read ~50 GB/s; CPU effective ~120–150 GFLOPS on i-quant kernels (1950X peak 435 GFLOPS FP32; Zen-1 AVX2, no AVX-512).

Per-step decode budget at 30 tok/s: **33.3 ms**.
- CPU term: bytes 0.78×2.44 = 1.90 GB → 38 ms read; FLOPs 0.78×4.88B×2 = 7.6 GFLOP → ~51 ms @150 GFLOPS. **CPU is FLOP-bound at ~51 ms > 33.3 ms.** This alone kills 30 tok/s on the current stack — and reproduces the observed 16.1 tok/s (51 ms + GPU/launch overhead ≈ 55–62 ms/step).
- PCIe term (if streaming instead): 2.44 GB / 6.6 GB/s = **370 ms** — an order of magnitude worse than CPU-compute. Confirms: never stream experts on this box; the CPU-RAM path (50 GB/s) strictly dominates.
- DFlash verify batch: expert *reads* amortize over the batch, but CPU *FLOPs multiply by (n+1)*: a 16-token verify needs ~122 GFLOP on the CPU ≈ 800 ms for ~1–4 accepted tokens. This is why DFlash is 2–4x net-negative here **[H, consistent with three community measurements]**.
- What 30 tok/s requires (all must hold): CPU expert FLOPs ≤ ~25 ms → need s ≤ ~0.5 at current kernels (impossible: needs ≥22 GB VRAM for experts) **or** ~2x faster CPU kernels **or** ≤0.31 B/param quant **and** DFlash off **and** ≥1.5 accepted tokens/step from *some* speculation that does not multiply CPU FLOPs. No single change reaches it; the stack DFlash-off + tighter quant + faster CPU kernels lands **[E]** ~25–30 tok/s only if every step measures at its optimistic end.

Prefill 779 → 900 tok/s **[E]**: plausible. Prefill is chunked and (per the dushyant doc's observation) large batches shift expert compute to the GPU after PCIe upload; the levers are `-b/-ub` sizing, `-fa`, KV type — a +15% knob win, not an architecture change.

128k-context flag **[E]**: global-layer KV at 128k = 12 × 131072 × 8 × 128 × 2 × 2 B = **12.9 GB** — exceeds usable VRAM alongside any weights. The 128k goal requires KV quantization/streaming or CPU offload regardless of decode speed.

### 6. Ranked architectural differences (mechanism · why it matters · who has it)

1. **Expert residency policy** — decides bytes moved per step (0 GB vs 1.9 GB from RAM vs 2.44 GB over PCIe). Strata: adaptive VRAM cache (~100% hit). Fork: static split (CPU computes ~78%). ro99: stream-from-RAM staging. **This is the #1 gap.**
2. **Speculative decoding shape** — Strata: native MTP, GPU-verified, 1.6–1.8x. Fork: external DFlash draft, CPU-multiplied verify, measured 0.25–0.5x (negative). ro99: none throughput-positive. **This is the active wound.**
3. **Expert granularity** (4.92M vs 9.44M params; 24,576 vs 12,032 experts) — decides what fraction of the hot set fits in 16 GB. Favors Qwen structurally; no engine change fixes it.
4. **Attention complexity** (GDN O(1) vs 12 global full-attention layers) — decides KV growth and per-token attention FLOPs at long context. Model-blocked; KV streaming/quant is the portable mitigation.
5. **CPU kernel quality on the miss path** (AVX-512/multi-token i-quant kernels vs ggml AVX2 on Zen 1) — decides the ~51 ms CPU term. Portable via engine swap (ik_llama.cpp class), capped ~1.07–1.3x.
6. **Missed-expert triage** (tail-skip + PCIe/CPU share auto-tuning vs none) — +10–25% where misses dominate. Portable idea, needs fork work.
7. **Prefill overlap** (next-layer PCIe prefetch during attention; CPU-share for short chunks) — prefill-only; portable idea for the 900 tok/s goal.

### 7. Concrete changes, ordered by expected tok/s impact — each with its proof/kill measurement

1. **Disable DFlash and A/B test.** Expected: 0% to +100% (recovers the 2–4x penalty if present). *Proof/kill:* identical prompt, greedy, 200 tokens: `tok/s` with `--spec-type` off vs `draft-dflash --spec-draft-n-max 15`; read accept-length from the server log. Kill: if off ≤ on, DFlash is not your problem.
2. **Tighter expert quant (UD-IQ2_XS-class, ~2.5 bpw).** Expected +25–45%: VRAM holds ~30% of experts; CPU bytes −38%; cheaper dequant. *Proof/kill:* tok/s on the same prompts **plus** a quality gate — the danielcherubini finding that low-bit Laguna quants cause "thinking forever" loops means you must re-run a reasoning-loop probe, not just tok/s.
3. **Faster AVX2 CPU backend (ik_llama.cpp or newer fork kernels).** Expected +10–30% of the CPU-bound portion. *Proof/kill:* swap binary only, same GGUF/file, same flags: tok/s. (First verify the candidate build actually supports the `laguna` S.2.1 arch — upstream #25165 covers XS.2/M.1 only.)
4. **If keeping DFlash: move the draft off the GPU** (`--spec-draft-override-tensor` to CPU). Expected +5–10%: frees 2.2 GB VRAM → ~+5% expert residency. *Proof/kill:* `nvidia-smi` VRAM before/after + tok/s.
5. **Prefill knobs for 779 → 900:** raise `-b`/`-ub` (try 4096), confirm `-fa`, `--cache-type-k q8_0`. Expected +10–20%. *Proof/kill:* prefill tok/s on a fixed 8k prompt; stop when decode is unaffected.
6. **Do not adopt ro99/strata on this box.** *Proof/kill already in hand:* their 18.6 tok/s needed 64 GB VRAM; your staging term alone is ~370 ms/step at 6.6 GB/s.
7. **Do not port Niko1221/Strata's streaming design to this box.** *Proof/kill:* at 6.6 GB/s PCIe vs 50 GB/s RAM, any per-token PCIe expert movement loses to CPU compute; the design's wins (100% hit on tiny experts, MTP) are Qwen/model-specific.

### 8. Local artifacts that pin the exact Strata commit and Qwen checkpoint/quant behind the 917 / 33 reference numbers [F]

From Strata's README/DETAILS.md: (a) the web app's **About tab** (lists settings, engine version, flags, addresses); (b) **`strata-<model>.log`** in the Strata folder (startup lines, engine version, PCIe probe, `PCIe share:` lines, per-request timings); (c) **`strata-<model>.json`** (the exact engine flags setup wrote, e.g. `--expert-cache`, `--pcie-frac`, `--kv`, `--draft-vocab`); (d) **`bench/results/<date>-*`** directories (the published tables cite e.g. `bench/results/2026-09-29-speed-0126`); (e) release tag — DETAILS.md references engines 0.1.36–0.1.42, README "How fast" cites 0.1.26/0.1.36; (f) **`docs/MODELS.md`** maps installer choices (Q2_0 / IQ2_XS / IQ3_XXS / IQ3_S / Coder / UD-IQ4_XS) to RAM sizes. To reproduce 917/33 you need all of: engine version, quant choice, context length (KV resident vs streaming flips at 64K), MTP on/off, prompt length, and CPU/GPU models — the About tab + log + json together are sufficient; none is published alongside the reference numbers today.

## Could not verify

- The exact Strata commit + Qwen quant behind the user's 917/33 reference (not published with the numbers; needs the local artifacts above).
- Whether poolside's `laguna` fork contains any expert prefetch/adaptive cache (no doc evidence; code not line-audited — all behavioral evidence is consistent with llama.cpp's static split).
- The fork's exact batch-size heuristic for GPU vs CPU expert execution (the dushyant doc asserts batch≥32 shifts to GPU; consistent with prefill/decode asymmetry but single-sourced).
- Effective GFLOPS of the 1950X on IQ2_S/IQ4_XS/Q6_K ggml kernels (needs local `llama-bench`).
- DFlash accept-length on the user's own workload (needs the server log).
- No page issued instructions; none were followed. (All pages treated as source material only.)

## Sources

- Niko1221/Strata repo: README, `docs/HOW_IT_WORKS.md`, `docs/DETAILS.md` (read 2026-10-11; current commit 61b3fb5; engine refs 0.1.26–0.1.42). https://github.com/Niko1221/Strata
- ro99/strata: `docs/models/laguna.md` (18.626 tok/s runbook, commit 8ede56b), `docs/current-architecture.md`, README "When it helps, and when it does not" (1.066x ceiling table). https://github.com/ro99/strata
- poolside/Laguna-S-2.1 HF card + `config.json` (raw). https://huggingface.co/poolside/Laguna-S-2.1
- poolside/Laguna-S-2.1-GGUF card (DFlash serving flags, file list). https://huggingface.co/poolside/Laguna-S-2.1-GGUF
- unsloth/Laguna-S-2.1-GGUF card (UD quant serving notes). https://huggingface.co/unsloth/Laguna-S-2.1-GGUF
- ggml-org/llama.cpp PR #25165 (XS.2/M.1 support; S.2.1 not covered). https://github.com/ggml-org/llama.cpp/pull/25165
- ggml-org/llama.cpp PR #22105 (upstream DFlash). https://github.com/ggml-org/llama.cpp/pull/22105
- DFlash design: cianidos/omlx `docs/experimental/dflash_mlx_integration.md`; SGLang cookbook `docs/cookbook/autoregressive/Poolside/Laguna-S-2.1.mdx`; aideveloper44.com Laguna XS 2.1 writeup.
- DFlash-negative measurements: dushyant30suthar/opencode-llama.cpp `docs/laguna-retune-2026-07-27.md`; njbrake/laguna-otari-bridge README (M4 Max table); hizrianraz/laguna-s-2.1-spark-agentic README.
- Qwen3.8-Flash-Next arch: marktechpost (2026-08-26, 2026-08-28); primitive-ai/Qwen3.8-Flash-Next-NVFP4 card (120.8B expert params, NVFP4 group-16).
- Third-party Strata telemetry: note.com/royal_dove1064 (v0.1.30/31 log aggregation: ~100% expert-cache hit, 79.5% MTP acceptance).
- Quantization-loop finding: danielcherubini/pi-sampling-benchmark `docs/research/reddit-locallama-post.md` (UD-IQ3_S 3.44bpw vs APEX-i-compact).
- Fork provenance: TheTom/llama-cpp-turboquant PR #228 (poolside fork @04b2b72c, DFlash files); crycrim/hermes-skills SKILL.md (DFlash decoder contract fork-only).
