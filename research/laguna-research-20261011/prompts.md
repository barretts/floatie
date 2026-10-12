# Laguna S 2.1 local performance research program

Started 2026-10-11. Goal: Laguna S 2.1 through an OpenAI-compatible API, 8k now → 128k later.
Hardware: RTX 4060 Ti 16GB, Threadripper 1950X, 128GB DDR4-2133, ~6.6 GB/s PCIe.
Current at 8k: 779 tok/s prefill, 16.1 tok/s generation. Targets: 900 / 30.

Prompts 1–3 were run via research agents on 2026-10-11. Prompt 4 drafted, not yet run.

## Shared context

I want Poolside Laguna S 2.1 running locally through an API, initially at 8k context and eventually at 128k.

Hardware: RTX 4060 Ti 16GB, Threadripper 1950X (16c/32t, AVX2 only — Zen 1 executes 256-bit AVX2 as two 128-bit micro-ops), 128GB DDR4-2133 across four memory channels. Measured CPU–GPU transfer bandwidth is approximately 6.6 GB/s.

Model (confirmed): Laguna S 2.1 — 118B total, ~8B activated per token, 48 layers (12 global + 36 sliding-window, window 512), 256 routed experts + 1 shared expert, top-10 routing, GQA with 8 KV heads, head dim 128.

Engine (to confirm from local install): presumed poolside's llama.cpp fork, branch `laguna` (upstream PR ggml-org/llama.cpp#25165), serving GGUF through an OpenAI-compatible API. It splits expert weights between VRAM and pinned system RAM. The GGUF is named UD-IQ3_S, but its expert tensors use mixed quantization, including IQ2_S, IQ4_XS, and Q6_K. DFlash speculative decoding is enabled (draft model: poolside/Laguna-S-2.1-DFlash).

Reference point: on the same hardware I run Niko1221/Strata serving Qwen3.8-Flash-Next (~125B-parameter MoE, 24,576 experts, top-10 routing, NVFP4) at ~917 tok/s prefill and ~33 tok/s generation. Note: ro99/strata is a different, unrelated engine with native Laguna support — treat it as a candidate alternative engine, not as the engine I currently run.

Current Laguna performance at 8k: 779 tok/s prefill and 16.1 tok/s generation. Targets: 900 tok/s prefill and 30 tok/s generation.

Research primary sources and actual implementation details. Separate established facts, estimates, and hypotheses. Recommend core engineering changes, with the evidence needed to verify them.

## Prompt 1 — Architecture comparison and feasibility

Goal: explain why Niko1221/Strata runs Qwen3.8-Flash-Next at ~33 tok/s generation on my hardware while my Laguna S 2.1 setup reaches only 16.1 tok/s, and determine whether 30 tok/s is physically plausible for Laguna here.

Sources:
- https://github.com/Niko1221/Strata — the engine I run for Qwen (especially docs/HOW_IT_WORKS.md, DETAILS.md, bench/, src/)
- https://github.com/ro99/strata — a separate C++ engine with native Laguna support; evaluate as a candidate alternative engine (especially docs/models/ runbooks, docs/current-architecture.md)
- https://huggingface.co/poolside/Laguna-S-2.1 and https://huggingface.co/poolside/Laguna-S-2.1-GGUF
- poolside's llama.cpp fork, branch `laguna` (https://github.com/poolsideai/llama.cpp), and upstream PR ggml-org/llama.cpp#25165

Investigate:
1. Strata's exact speed mechanisms: expert placement policy (which experts stay in VRAM, prefetching/prediction), how non-resident experts are executed (CPU compute vs PCIe upload), quantized kernels, attention implementation, KV cache layout, and its speculative decoding design (claimed 1.6–1.8x).
2. Which mechanisms transfer directly to Laguna S 2.1 on identical hardware, which need reimplementation, and which are blocked by model differences (Laguna: 256+1 experts top-10 vs Qwen: 24,576 experts top-10; different attention layouts).
3. The known bound: ro99/strata measured streaming-MoE decode as PCIe-staging-bound, with only a 1.066x ceiling from a faster FP4 kernel on Laguna. Use this to bound expectations for kernel-level work.
4. A physics plausibility check for 30 tok/s generation: per-step bytes moved (active experts × bytes/element across VRAM, PCIe, and RAM), expert reuse across DFlash verification batches, CPU FLOPS available on the 1950X for CPU-side experts, and measured vs theoretical PCIe throughput at 6.6 GB/s.

Deliver: a ranked list of architectural differences (mechanism, why it matters, which engine has it), concrete changes ordered by expected tok/s impact, and for each the single measurement that would prove or kill it. Also list the local artifacts (log files, About-tab settings, engine version) that would pin down the exact Strata commit and Qwen checkpoint/quant my reference numbers come from.

## Prompt 2 — CPU experts and GPU cache uploads

Goal: find the fastest practical execution strategy for Laguna S 2.1's non-VRAM-resident experts on a Threadripper 1950X + RTX 4060 Ti 16GB.

Established profiling facts:
- CPU gate/up and down projections dominate the CPU expert path.
- Worker wakeup and phase boundaries account for only ~0.26% of measured phase time — do not propose thread-pool or barrier optimizations; that budget is exhausted.
- Two paired (fused) IQ2 gate/up kernel candidates were tried and failed to improve throughput — treat fused IQ2 gate/up as ruled out unless you can name the specific flaw in those attempts.

Hardware constraints to respect: Zen 1 executes 256-bit AVX2 as two 128-bit micro-ops; no AVX-512, no VNNI; 1950X NUMA topology (2 dies — consider NPS/mode implications for thread pinning and memory interleaving); ~6.6 GB/s measured PCIe; quad-channel DDR4-2133.

Investigate:
1. Why the fused IQ2 gate/up kernels likely failed: memory-bound vs compute-bound analysis for IQ2_S dequant + GEMV shapes at batch 1, with an Amdahl check against the 0.26% non-compute budget.
2. Remaining CPU-side levers: dequantization cost vs compute for IQ2_S/IQ4_XS/Q6_K at decode batch sizes, activation reuse across the gate/up/down trio, expert batching across verification tokens, NUMA-aware thread pinning and weight interleaving, and whether any expert work should move to GPU instead of being optimized on CPU.
3. The upload overlap proposal: GPU cache-refresh uploads are currently queued after CPU expert computation. Evaluate moving them to after cached GPU weight reads and before CPU completion polling, so uploads overlap CPU work. Specify exact CUDA stream ordering, pinned-buffer lifetimes, and double-buffering requirements; quantify DMA-vs-compute contention risk on a 6.6 GB/s link; do not assume overlap is free.
4. Reference implementations: current llama.cpp/ggml IQ2_S, IQ4_XS, Q6_K CPU kernels and any newer fused paths worth porting.

Deliver: the highest-value implementation changes ranked by expected gain, each with the assumption it rests on and the minimal A/B experiment (same inference request, same prompt, what to measure) that would confirm or kill it.

## Prompt 3 — Keeping Laguna fast at 128k

Goal: a concrete memory and latency budget showing how to sustain 900 tok/s prefill and 30 tok/s generation near 128k context with Laguna S 2.1 on RTX 4060 Ti 16GB + 128GB DDR4-2133.

Architecture facts (from the model card): 48 layers, 12 global + 36 sliding-window (window 512), GQA with 8 KV heads, head dim 128. The DFlash draft uses a 512-token sliding window.

Investigate:
1. KV cache math at 8k vs 128k: per-token KV bytes for global layers vs SWA layers (show the formula: KV heads × head dim × K+V × bytes/element × layer counts); total KV at both context lengths in BF16 and in quantized KV formats (Q8_0/Q4_0) if the engine supports them; how global-layer KV growth directly competes with the 16GB VRAM expert cache.
2. Whether the engine's sliding-window attention actually bounds compute and memory (true windowed kernels / paged allocation) or just masks full attention — check poolside's llama.cpp fork branch `laguna` and upstream PR ggml-org/llama.cpp#25165.
3. Chunked prefill: chunk-size tradeoffs against PCIe expert traffic and time-to-first-token at 128k; does chunking thrash the expert cache?
4. Speculative verification cost growth: how DFlash verification batch size scales attention and expert-cache pressure with context length; draft-model KV cost (small, but quantify it).
5. Long-context correctness requirements: YaRN / per-layer-type rotary scales the engine needs to reach 128k (the model card mentions per-layer-type rotary scales).

Deliver: a memory budget table (VRAM and RAM) at 8k and 128k, a per-step latency budget at both lengths naming what grows with context and what stays constant, the engine capabilities required (status: present / missing / unknown in the fork), the likely bottleneck at 128k, and the exact model metadata or runtime logs needed to settle anything uncertain.

## Prompt 4 — DFlash speculative decoding tuning (DRAFTED, not yet run)

Goal: close the 16.1 → 30 tok/s generation gap (needs ~1.86x) through speculative decoding alone or primarily — Strata's own documentation claims 1.6–1.8x from its guess-and-check design, so this is the highest-leverage single lever and it is currently under-investigated.

Sources: the DFlash draft model (poolside/Laguna-S-2.1-DFlash per poolside's vLLM example config), poolside's llama.cpp fork branch `laguna` (DFlash implementation, `--spec-type draft-dflash`), vLLM/SGLang DFlash integrations for reference configs.

Investigate:
1. The draft model: parameter count, available quantization options, its standalone speed on this hardware, and where it should live (VRAM vs CPU) given the 16GB budget.
2. The acceptance lever: how to measure per-step acceptance rate from server logs or stats endpoints; expected acceptance vs temperature / top-p / reasoning settings; `num_speculative_tokens` / `--spec-draft-n-max` (poolside suggests 7) — the tradeoff curve between longer drafts and verification cost.
3. Verification cost on this hardware: a verification batch touches more experts per step than plain decode — quantify the extra PCIe/RAM traffic per accepted token and how it interacts with the expert cache.
4. Failure modes: what low acceptance looks like in logs, draft-target distribution mismatch symptoms, and when to conclude the draft isn't helping.

Deliver: recommended draft config for this hardware, the measurement protocol (which log fields or stats endpoints expose acceptance rate and tokens per verification step), and the acceptance-rate threshold below which speculative decoding should be disabled.
