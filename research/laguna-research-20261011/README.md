# Laguna S 2.1 local-performance research bundle (2026-10-11)

Goal: Laguna S 2.1 through an OpenAI-compatible API, 8k now → 128k later, on RTX 4060 Ti 16GB + Threadripper 1950X + 128GB DDR4-2133. Targets: 900 tok/s prefill, 30 tok/s generation. Current at 8k: 779 / 16.1.

## Files

- `prompts.md` — the shared context + the 4 research prompts (3 run, 1 drafted).
- `arch-comparison-report.md` — Prompt 1: why Strata/Qwen hits ~33 tok/s while Laguna does 16.1; 30 tok/s plausibility; ranked architectural differences.
- `cpu-experts-gpu-uploads-report.md` — Prompt 2: fastest CPU-expert execution strategy; upload-overlap evaluation; ranked implementation changes with A/B kill criteria.
- `128k-scaling-report.md` — Prompt 3: KV math, memory/latency budgets at 8k vs 128k, engine capability status, 128k verdict.
- `synthesis.md` — cross-report synthesis: where the investigations converge, the premise correction on the expert-cache patch, DFlash agreement, combined highest-value actions in order, open questions for the local install.
- `laguna-s-2-1-speed-research.html` — the findings page (all three investigations as one brief).

## Headline verdicts

1. The 33-vs-16.1 gap is Strata's adaptive VRAM expert cache (~100% hit, ~0 GB moved/step) vs the fork's static split (~78% of expert FLOPs on the Threadripper, CPU-bound ~51ms of a ~62ms step).
2. DFlash is measured 2–4x SLOWER than no draft in three independent sources on the poolside fork — first move is turn it off and A/B test.
3. 30 tok/s generation is not plausible on the current stack at 8k (CPU term ~51ms > 33.3ms budget); edge-plausible only as DFlash-off + tighter quant + faster CPU kernels combined.
4. At 128k the 900/30 targets are NOT reachable — hard floors (5.1 PFLOP global attention; ~60ms DDR4 expert-traffic floor). Realistic envelope: ~220–340 tok/s prefill, ~13–15 tok/s decode.
5. The stock poolside `laguna` fork contains ZERO expert-cache code — the observed "GPU cache uploads" must come from a locally-applied patch that needs identifying (check for an `n_tokens==1` gate).
6. Both researchers converged on tok/s ≈ host DRAM bandwidth ÷ expert bytes/token; measured 16.1 tok/s implies only ~28 GB/s effective streaming — try `--load-mode none` + `--numa distribute`.
7. GGUF ships with 256K YaRN embedded — no rope override needed at 128k. Do NOT combine quantized KV with DFlash (fork predates the rotation fix).
