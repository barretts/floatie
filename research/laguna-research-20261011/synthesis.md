# Laguna S 2.1 research program — cross-report synthesis (2026-10-11)

Three independent investigations. Prompt 1 via deep research (report in ~/workspace/research_notes/laguna-arch-comparison-20261011-1207/report.md); prompts 2 and 3 via subagent researchers (cpu-experts-gpu-uploads-report.md, 128k-scaling-report.md, same folder as prompts.md).

## Where the investigations converge

Both researchers independently derived the same governing physics for decode:
**tok/s ≈ effective host DRAM bandwidth ÷ expert weight bytes per token.**
- Researcher A: ~1.77 GB/token → ceiling 25.4 tok/s at 45 GB/s; measured 16.1 tok/s implies only ~28 GB/s effective streaming — the box is likely under-streaming (no `--numa`, no thread pinning by default).
- Researcher B: ~2.14 GB/token (different quant-mix assumption) → ~60–65 ms/token → ~13–15 tok/s at 128k.
- Both agree: the CPU expert path is DRAM-weight-streaming-bound; kernel fusion is pointless (<1% theoretical — fused IQ2 gate/up capped at 1.0026× by Amdahl vs the 0.26% non-compute budget).

Reconciled discrepancy: A derived n_embd=4096 / expert-FFN=768 from GGUF file sizes; B read hidden_size=3072 / moe_intermediate_size=1024 from config.json. 3×4096×768 = 3×3072×1024 = 9.437M — identical product, so every byte/traffic total agrees. B's factorization (config.json) is authoritative for arch dims.

## Critical scoping correction (changes Prompt 2's premise)

The stock poolside `laguna` fork contains **zero** expert-cache code (verified by source grep for moe.?cache / expert.?cache / prefetch.?expert across src/, ggml/, common/). The "GPU cache-refresh uploads queued after CPU expert computation" behavior must come from a **locally-applied patch** (most likely modeled on upstream PR #27861). Before any cache-upload work: identify which patch is in the local install, and check for an `n_tokens==1` gate (like #27861) — it would make the cache completely inert under DFlash verification batches (n_tokens = n_draft+1 ≥ 2).

## DFlash (both researchers agree)

- Retune n-max down: sweep 3/4/5/7/15; community data favors 4–7 on consumer GPUs. Prompt-1 research found DFlash 2–4× *slower* than no draft in three independent sources on this fork.
- At 128k DFlash is likely net-negative (verification-batch expert amplification ~8–11× traffic for ~2–3 accepted tokens) → n-max 3–4 or off.
- Correctness warning: this fork predates the upstream DFlash quantized-KV rotation fix (ggml-org/llama.cpp#25823 absent) — do NOT combine quantized KV with DFlash without validation.

## 128k verdict (Prompt 3)

Feasible to run, but **900 tok/s prefill and 30 tok/s generation are not reachable on this hardware** — hard floors, not tuning gaps:
- 5.1 PFLOP of global attention alone exceeds the 146 s budget implied by 900 tok/s (needs ~3× the card's FLOPs).
- 30 tok/s needs 33 ms/token vs the ~60 ms DDR4 expert-traffic floor (would require ≥58% of experts ≈ 26 GB resident in VRAM).
- Realistic envelope: **~220–340 tok/s prefill, ~13–15 tok/s decode**.
- Good news: the GGUF ships with 256K YaRN embedded (factor 32, covers ≤262144) — no rope override needed at 128k. SWA is truly window-bounded (ISWA dual cache, 1024 cells/layer), not just masked.

## Combined highest-value actions (in order)

1. **Flags-only first (minutes):** `--load-mode none` + `--numa distribute` sweep (default `auto` leaves CPU expert buffers pageable — one fork measured 2.8× slower prefill / 1.15× slower decode at default); DFlash `--spec-draft-n-max` sweep 3/4/5/7/15; `-ncmoe 40` to pin 8 layers' experts on GPU (~+15–20% decode). Kill threshold <3–5%.
2. **Port Fable's second-stream expert prefetch** (`fable5/prefetch-experts` + `GGML_CUDA_REGISTER_HOST=1`): fixes the fully-serialized prefill upload path (5.5 s/ubatch today at 6.6 GB/s). Proven +64% prefill, token-identical. Main lever toward 900 tok/s prefill at 8k.
3. **For 128k:** `-c 131072` (no rope override), `--cache-type-k q4_0 --cache-type-v q4_0` + draft moved to CPU, DFlash n-max 3–4 or off. Do NOT combine quantized KV with DFlash (missing rotation fix).
4. **Identify the local expert-cache patch** before touching any cache-upload code (check for n_tokens==1 gate).
5. Ruled out — do not spend time on: fused IQ2 gate/up kernels; thread-pool/barrier work; porting Niko1221/Strata's streaming design (6.6 GB/s PCIe < 50 GB/s RAM); adopting ro99/strata (needs 64 GB VRAM for 18.6 tok/s).

## Open questions for the local install (needed to proceed)

1. Which expert-cache patch (if any) is applied on top of the poolside fork?
2. Exact launch flags: `-ncmoe`, `--load-mode`, `-ub`/`-b`, `-t`, `--numa`, DFlash n-max.
3. Load-log buffer summary (free VRAM, buffer types for `blk.*.ffn_*_exps`).
4. `numactl --hardware` + BIOS NPS mode; STREAM triad number.
5. Server speculative stats (acceptance rate, mean accepted length) at current settings.
