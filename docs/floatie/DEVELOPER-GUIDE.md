# Floatie developer guide

## Start here

This is a complete Poolside llama.cpp checkout with Floatie's retained changes applied at the normal source paths. It replaces the partial `core-engine/` overlay used during development. The base revision is `06f8cebd7fe728687be3d19f8bdedb70d75883af`.

Read the [README](../../README.md), [instructions](../../AGENTS.md), and [attempt history](../../performance/ATTEMPTS-AND-RESULTS.md). The immediate unfinished milestone is 900 tokens/sec prefill and 30 tokens/sec generation at 8k. Near-full 128k performance is also unfinished. The recorded performance task is paused; this package does not resume it.

[Source manifest](../../source-manifest.json) records the current changed engine files and their identities. The [engine patch](../../patches/floatie-engine.patch) captures all 26 changes against the pinned base. The full source is included; the patch is an audit/recovery artifact, not a required installation step.

## Build and model preparation

The current Windows profile requires PowerShell 7; Visual Studio C++ build tools with x64 MSVC and Windows SDK; CMake and Ninja on `PATH`; CUDA Toolkit 12.6; and Python 3. The default CUDA path is `C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.6`.

The build selects CUDA architecture 89. The reference GPU is an RTX 4060 Ti 16 GB, the CPU is a Threadripper 1950X with AVX2, and the host has 128 GB RAM. Other hardware performance is unestablished. Allow disk space for original and corrected model files, build products, and backups.

From the repository root:

```powershell
python .\download-models.py
python .\tools\repair_draft.py --source .\models\Laguna-S-2.1-DFlash-Q8_0.gguf --output .\models\Laguna-S-2.1-DFlash-Q8_0-swa512.gguf
.\build.ps1
```

Both Python helpers use the standard library. The downloader pins model revisions, byte sizes, and SHA256 hashes from `model-artifacts.json`; it verifies full-file hashes and writes `.receipt.json` files. The repair verifies the pinned original draft's size and hash, adds four official metadata entries with source provenance, verifies the unchanged tensor payload, and writes a `.metadata-repair.json` receipt. It does not overwrite an existing corrected file.

The target is `Laguna-S-2.1-UD-IQ3_S.gguf`. The Q3 name does not describe every tensor: expert tensors use mixed formats, including IQ2_S, IQ3_S, IQ4_XS, and Q6_K. Use the corrected `Laguna-S-2.1-DFlash-Q8_0-swa512.gguf` draft in the supplied launch profiles.

The build script configures the root source, writes products to `build/`, and builds `llama-server`. It excludes the UI and test targets. `build/bin/` holds the executable and required runtime libraries. The script does not run inference or tests. The original installed engine built successfully; the newly packaged checkout has not been independently compiled or executed during publication.

Weights retain their separate licenses and are downloaded locally, not committed. Never commit weights, credentials, tokens, or machine-specific caches.

## Launch and API

`Start-Floatie-8k.bat` sets context 8,192 and startup expert cache 6,144 MiB. `Start-Floatie-128k.bat` sets context 131,072 and startup expert cache 3,072 MiB. Both use batch/ubatch 8,192, MoE threads 16, DFlash maximum 4, Q8 KV, pinned host experts, adaptive caching, and ordinary GPU misses/token 0.

Run one profile at a time. The API is `http://127.0.0.1:1235/v1`; the model alias is `laguna-s-2.1-iq3-s`. Allocation at 128k does not establish speed at 128k. The long-prefill repair remains unverified by execution.

Verify executable path and PID before stopping a server. Never use a broad process-name match, reset the GPU, or stop desktop applications as a routine inference action. A prior incident in which desktop application windows disappeared remains unexplained.

## Source entry points

| Path | Responsibility |
|---|---|
| `ggml/src/ggml-cuda/moe-hybrid.cu` | Expert caches, upload scheduling, prefill streaming, CPU/GPU coordination, and internal profiling |
| `ggml/src/ggml-cpu/moe.cpp` | CPU expert scheduler, worker pool, and worker placement |
| `ggml/src/ggml-cpu/moe-iq.cpp` | Grouped AVX2 expert kernels |
| `common/speculative.cpp` | Draft/target integration and trimmed draft-window rebuild |
| `src/models/dflash.cpp` | DFlash graph and attention-state handling |
| `tools/server/server-context.cpp` | API serving and speculative-failure cleanup |
| `src/` and backend attention sources | Compact SWA KV, bounded attention, and mask preparation |
| `tools/repair_draft.py` | Corrected draft GGUF preparation |
| `performance/` | Requests, measurements, comparisons, deployment/rollback receipts, and candidate archives |
| `performance_probe.py` | Existing measurement helper; use only when execution is authorized |

Inspect source before proposing a feature. Adaptive caches, pinned weights, concurrent CPU/GPU work, two-layer streaming, DFlash, and quantized/compact KV already exist. Active expert work uses RAM and VRAM. Task Manager's shared-GPU-memory number does not establish how these buffers are used.

## Historical evidence and path map

Saved records describe the original machine and installation at their timestamps. They are not fresh observations of this checkout or a live server.

| Historical path | Current counterpart |
|---|---|
| `C:\code\poolside-strata\core-engine\...` | Root source path, with `core-engine/` removed |
| `E:\poolside\engine\...` | Root source path |
| `E:\poolside\models\...` | `models/`, after local preparation |
| `E:\poolside\build\bin\...` | `build/bin/`, after a local build |
| Selected historical installed files | `performance/installed-evidence/`, with original provenance |
| Other E: logs and backups | Original local installation; unbundled |
| `E:\poolside\research\...` | Supplied external research; local and unbundled |

Do not silently rewrite historical receipts to describe a new build. Root source is the retained state; archived candidate files and patches under `performance/` are experimental history. Selected installed evidence is bundled with original receipt/hash information and a portability map. Other original absolute paths are provenance references only.

The [measurement index](../../performance/MEASUREMENT-INDEX.md) contains 98 saved response measurements, and the [ledger](../../performance/attempts-ledger.json) inventories 336 pre-documentation evidence records. Later DFlash repair records are additional evidence. This inventory does not claim every original E: log or backup is present. Supplied third-party research documents and their extracted copies are intentionally unbundled.

## Most recent correctness change

The [DFlash repair](../../performance/DFLASH-POSITION-FIX.md) addresses a multi-batch prefill position gap. Draft KV ended at 5,313; the next trimmed suffix attempted injection at 12,482. Failure then left target and draft caches at different positions, causing repeated errors on prefix reuse.

The repair clears the affected draft sequence before rebuilding a complete retained standard sliding window at original absolute positions. It checks removal success and preserves the global consecutive-position validator. On a false speculative-processing result, the server clears active requests' target/draft caches, prompt history, serialized state, and checkpoints before release.

The repair was source-reviewed and rebuilt in the original installation. No inference regression, throughput run, or quality comparison followed. General exceptions still use existing handling. The saved normal 770.83 / 15.85 tokens/sec result predates this repair.

## Continue the work

1. Confirm the owner's current task and execution authorization. Documentation does not resume paused performance work.
2. Read the relevant receipt and source. Identify the observed bottleneck or failure, separating observations, calculations, and hypotheses.
3. Preserve recoverable source and the complete binary/library set before replacing an installed build.
4. Make a focused change. Preserve quantized weights and selected experts; dropping experts, routing changes, or further quantization require owner direction.
5. When authorized, use the existing `performance/checkpoint-request-8064.json` and `performance_probe.py`. Do not create a new suite or parameter sweep without a request.
6. Keep model files, prompt, output settings, context, cache policy, binaries, and profiling comparable. Record output tokens and draft acceptance when available.
7. Retain supported candidates; archive unsuccessful experiments and restore the measured baseline.

The fixed request has 8,064 prompt tokens, asks for 80 output tokens, and disables prompt reuse. Its expected codes are `COBALT-17`, `MAPLE-42`, and `VIOLET-89` in order. Correct checkpoints do not establish identical computation or general quality. CPU/GPU timing intervals overlap and cannot be added as serial costs. Single runs do not establish repeatability.

Before revisiting an archived candidate, identify a distinct mechanism or new evidence. Rejected original-layout four-row IQ2, persistent packed R4, larger bulk atlases, expanded IQ2, and GPU single-ID candidates are documented. A paper's hit rate or retrospective best-cache estimate does not predict this model's future performance.

## Attribution and upstream contributions

Floatie is an MIT private fork with upstream notices preserved. Read root `NOTICE` and `LICENSE`. Original upstream files are preserved as `README.llama.cpp.md` and `AGENTS.llama.cpp.md`.

This repository includes substantial AI-assisted development. Its owner-authorized private publication is not an upstream PR. For any later upstream contribution, independently follow that project's contribution rules, disclosure requirements, and maintenance expectations. Do not send messages or create PRs without current owner authorization.

## Private repository publication

The owner-authorized source handoff is `barretts/floatie`, a private repository. GitHub Actions is disabled for the initial publication so inherited workflows do not automatically run tests or builds. The original upstream workflow files and history are retained. No independent package build, inference request, or test suite was executed during publication.
