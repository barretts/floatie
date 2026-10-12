# Floatie: project instructions

## Project and scope

- Floatie is a local engine for Poolside Laguna S 2.1, based on Poolside llama.cpp commit `06f8cebd7fe728687be3d19f8bdedb70d75883af`.
- Read `README.md` and `docs/floatie/DEVELOPER-GUIDE.md` before implementation. Original upstream instructions are preserved in `AGENTS.llama.cpp.md`; upstream submission rules apply when preparing an upstream contribution.
- This is an owner-authorized private fork. Publication here does not authorize PRs, messages, or submissions to another project.
- The target is the pinned Q3 model, local API, 900 tokens/sec prefill, and 30 tokens/sec generation, ultimately at nearly full 128k. Make 8k fast first. These targets remain unmet.
- Hardware-specific changes for the reference RTX 4060 Ti 16 GB, Threadripper 1950X AVX2, and 128 GB RAM are acceptable. The UI is outside initial scope.
- Follow the owner's current instruction and explicit pause/stop requests. The recorded performance task is paused; packaging and documentation do not resume it.

## Repository map

- This is a full source checkout. Engine paths start at the root: `ggml/`, `common/`, `src/`, and `tools/server/`.
- Historical `core-engine/` references describe the old partial overlay; remove that prefix to find current source.
- `source-manifest.json` and `patches/floatie-engine.patch` record all 30 current changed engine files against the pinned base.
- `models/`, `build/`, `logs/`, and caches are local artifacts, not source to commit.
- `performance/` holds saved workloads, measurements, comparisons, deployment/rollback receipts, and candidate archives. Historical absolute E: paths retain their original meaning. Selected installed evidence is bundled; other local logs/backups remain unbundled.
- `research/` preserves the owner-requested supplied research documents and existing text extractions. Read `research/INDEX.md` for portable links and local reconciliation records; `research/source-manifest.json` records original paths, sizes, and SHA256 hashes.
- Poolside llama.cpp is the engine base. Niko1221/Strata supplied reference ideas and adapted CPU IQ code. ro99/strata is separate.
- Preserve upstream notices and adapted-code provenance. Model licenses are separate from the code's MIT license.

## Existing mechanisms

Inspect source before proposing to add per-layer adaptive VRAM caching, frequency decay, budgeted admission, pinned host weights, asynchronous transfers, concurrent CPU/GPU expert work, physical-core placement, grouped AVX2 IQ kernels, two-layer prefill streaming, fused gate/up, DFlash, quantized/compact SWA KV, bounded attention, or mask improvements. These already exist, with fallback paths for unsupported formats.

The active expert path uses RAM and VRAM. Do not assume an SSD lookup or infer architecture from Task Manager's shared-GPU-memory number.

## Performance and correctness work

1. Establish the bottleneck or failure from existing source and receipts. Separate observation, calculation, and hypothesis.
2. Check earlier attempts. Revisit rejected candidates only for a distinct mechanism or new evidence.
3. Preserve recoverable source and the complete executable/library set before replacing an installed build. Record source and binary identities.
4. Make focused changes; retain them only when evidence supports the result. Archive unsuccessful experiments and restore the measured baseline.
5. Do not add or run tests, new benchmarks, or sweeps without a current explicit request. Use the existing request and probe when execution is authorized.
6. Report prompt/output size, context, model identity, cache policy, draft settings, profiling state, and receipt path with throughput. Never call an unmeasured build faster.

The established request is `performance/checkpoint-request-8064.json`: 8,064 prompt tokens, 80 requested output tokens, no prompt reuse, expected codes `COBALT-17`, `MAPLE-42`, and `VIOLET-89` in order. Preserve controls and compare output tokens and draft acceptance where available. Correct codes do not establish identical computation or general quality.

CPU/GPU intervals overlap; do not sum them as serial costs. Expert evaluations, jobs, groups, proposals, and accepted tokens are different counts. Retrospective cache estimates are not predictions. Model-card limits and memory arithmetic do not establish local 128k allocation or speed; SWA workspace can exceed the nominal window.

Preserve quantized weights and selected experts. Dropping/substituting experts, routing bias, or further quantization require owner direction. Document changed floating-point reductions; do not assert identical output without evidence.

The DFlash position repair was initially rebuilt without an execution regression or throughput measurement. Later tool-protocol checks passed; the original long-prefill failure and nearly full 128k performance have not been independently reproduced. The saved normal 770.83 / 15.85 tokens/sec result predates both repairs. See `performance/TOOL-CALL-INVESTIGATION.md` for native termination and protocol verification, and `performance/OMP-LOOP-FOLLOWUP.md` for repaired named-argument ordering and restored parallel calls. Original OMP task convergence remains unverified.

## Process control

- Verify exact executable path and PID before stopping an authorized inference server. Never use a broad process-name match.
- Run one profile at a time. Background helpers must use hidden windows unless the user requests otherwise.
- Do not reset GPUs/drivers, stop desktop applications, change system settings, or use administrator helpers for routine inference work.
- An earlier incident where desktop application windows disappeared remains unexplained.
- Documentation-only and side tasks must not control inference, rebuild, deploy, or interfere with active work without explicit authorization.

## Publication and continuity

- The 900/30 target and current near-full 128k speed remain unfinished. Read dated receipts for concrete figures; README figures are historical.
- Distinguish experimental, measured baseline, and retained states. Archived candidates are not active code.
- No commits, pushes, publication, PRs, or messages to others without current authorization. Authorization to publish this private fork applies to that task, not unrelated future submissions.
- Keep documentation changes in documentation unless implementation/deployment is requested.
- Keep weights, credentials, caches, temporary tools, runtime binaries, and machine backups outside the source package. Supplied research documents are included at the owner's explicit request; preserve their original bytes and attribution.
