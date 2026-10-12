# Floatie

A local CPU/GPU inference engine for **Poolside Laguna S 2.1 Q3**, based on [Poolside's llama.cpp fork](https://github.com/poolsideai/llama.cpp).

Floatie keeps expert weights in host RAM, caches selected experts in VRAM, and runs CPU expert work alongside GPU computation. The SSD stores and initially loads model files; the active expert path uses RAM and VRAM. The initial interface is a local API.

This repository contains the complete engine source, retained Floatie changes, portable Windows setup scripts, recorded development history, and [supplied research documents](research/INDEX.md). Model weights, caches, and build products are excluded.

## Why are we publishing something we don't intend to continue?

We're publishing Floatie as a stepping stone for anyone trying to run Laguna on similar hardware. We don't plan to continue development, but the source and development records give the next person a place to start.

We saved our dead ends and documented what we tried, what worked, what failed, and what remains unresolved. The [attempts and results](performance/ATTEMPTS-AND-RESULTS.md) include rejected experiments and rollback records alongside retained changes. Anyone picking this up can use that history to build on the work and choose what to explore next.

## Status

The target is **900 tokens/sec prefill and 30 tokens/sec generation**, first at **8k**, then at nearly full **128k context**. These targets remain unmet.

The latest saved normal measurement on October 11, 2026 used 8,064 prompt tokens and 80 output tokens, context 8,192, DFlash maximum 4, Q8 KV, a 6,144 MiB startup expert cache, no prompt reuse, and profiling disabled:

| Prefill tokens/sec | Generation tokens/sec | Evidence |
|---:|---:|---|
| 770.83 | 15.85 | [Saved normal measurement](performance/core8k-after-r4-production-dflash4-q8-cache6144.json) |

That request recalled `COBALT-17`, `MAPLE-42`, and `VIOLET-89` in order. It establishes that request's result, not general quality or repeatable throughput.

A subsequent [DFlash speculative-batch position repair](performance/DFLASH-POSITION-FIX.md) was rebuilt on October 11, 2026. It rebuilds trimmed draft windows at their original positions and invalidates request caches after speculative failure. That repair initially had no inference regression or throughput measurement. Later [tool-protocol checks](performance/TOOL-CALL-INVESTIGATION.md) ran on the installed engine; they do not establish near-full 128k performance. The table predates both repairs. Current-engine near-full 128k speed is unestablished, and performance work remains paused at the owner's request.

## Quick start: Windows

The supported development profile is Windows, PowerShell 7, Visual Studio C++ build tools, CMake, Ninja, CUDA 12.6, and Python 3. The build script targets CUDA architecture 89. The reference machine has an RTX 4060 Ti 16 GB, Threadripper 1950X with AVX2, and 128 GB quad-channel DDR4-2133. Performance on other hardware has not been established.

From the repository root:

```powershell
python .\download-models.py
python .\tools\repair_draft.py --source .\models\Laguna-S-2.1-DFlash-Q8_0.gguf --output .\models\Laguna-S-2.1-DFlash-Q8_0-swa512.gguf
.\build.ps1
.\Start-Floatie-8k.bat
```

The standard-library-only download helper pins revisions, byte sizes, and SHA256 hashes from [model-artifacts.json](model-artifacts.json), verifies downloaded files, and writes a receipt. The standard-library-only repair produces the corrected draft required by the launch profiles, preserves its tensor payload, and writes a metadata repair receipt. Keep those receipts with the model files.

The API is `http://127.0.0.1:1235/v1`, with model alias `laguna-s-2.1-iq3-s`. Run one profile at a time. To use the 128k allocation profile after stopping the 8k server:

```powershell
.\Start-Floatie-128k.bat
```

| Profile | Context | Startup expert cache | Shared settings |
|---|---:|---:|---|
| `Start-Floatie-8k.bat` | 8,192 | 6,144 MiB | Batch/ubatch 8,192, MoE threads 16, DFlash maximum 4, Q8 KV, pinned/adaptive experts, ordinary GPU misses/token 0 |
| `Start-Floatie-128k.bat` | 131,072 | 3,072 MiB | Same settings |

Both profiles enable parallel tool calls by default. Requests can set `parallel_tool_calls: false` to request one call. The [OMP follow-up](performance/OMP-LOOP-FOLLOWUP.md) records the named-argument ordering repair and completed protocol checks. The original OMP task's convergence remains unverified.

The 128k profile is a launch configuration, not a measured speed guarantee. Read the [developer guide](docs/floatie/DEVELOPER-GUIDE.md) for setup, source entry points, and a starting point for continuing the work. The installed engine was rebuilt and protocol-tested after publication; the packaged checkout has not been independently built during publication.

## Retained mechanisms

- Per-layer adaptive VRAM caches, frequency decay, and budgeted admission.
- Pinned host expert weights and asynchronous transfers.
- Concurrent CPU/GPU expert computation, physical-core worker placement, and grouped AVX2 IQ2_S/IQ3_S/IQ4_XS kernels with established fallbacks.
- Two-layer prefill streaming and supported fused GPU gate/up work.
- DFlash speculation with corrected draft metadata and attention-state handling.
- Quantized KV, compact sliding-window KV allocation, bounded attention, and reduced mask work.
- Local llama-server API; the initial build excludes the web UI.

## Continue the work

Start with [attempts and results](performance/ATTEMPTS-AND-RESULTS.md): retained changes, rejected candidates, failed builds/launches, controls, rollback receipts, and unresolved gaps. The [measurement index](performance/MEASUREMENT-INDEX.md) lists all 98 saved response measurements; the [ledger](performance/attempts-ledger.json) preserves exact fields and hashes.

The [research index](research/INDEX.md) includes the original reports, prompts, PDF and Word documents, and existing text extractions. It links the reports to our local review notes so you can distinguish proposed improvements from measured results.

The historical records include paths from the original `E:\poolside` installation and an earlier `core-engine/` overlay. In this repository, engine source is at the root. Selected historical installed evidence is bundled in `performance/installed-evidence/`; unbundled local paths remain provenance references. Archived candidates are evidence, not active code. See the guide's path map before following an old receipt.

[Source manifest](source-manifest.json) identifies the packaged changed files. The [engine patch](patches/floatie-engine.patch) captures all 30 current engine changes against the pinned Poolside base, including three files absent from the earlier overlay and the later tool-protocol changes.

## Sources and licenses

The engine base is Poolside llama.cpp commit `06f8cebd7fe728687be3d19f8bdedb70d75883af`. Niko1221/Strata supplied references and adapted CPU IQ code from commit `82f46a8c8f475f001ad76d92f58f4a4f8ffb0253`. ro99/strata was inspected as a separate reference and is not the engine base.

Floatie's code is distributed under [MIT](LICENSE), with upstream notices retained. Read [NOTICE](NOTICE) for attribution. Model weights and conversions have separate terms; this repository's MIT license does not replace them. Floatie is not an official Poolside product.

The pinned conversions are [Unsloth Laguna GGUF](https://huggingface.co/unsloth/Laguna-S-2.1-GGUF/tree/750f92f90cf54159c4d7a610cb7b3e74498e75c6) and [dev7a DFlash GGUF](https://huggingface.co/dev7a/Laguna-S-2.1-DFlash-GGUF/tree/0f7234ea9b0de138a2b9b119e805b82322dba0fd). Read their terms and the [Laguna model license](https://huggingface.co/poolside/Laguna-S-2.1/blob/main/LICENSE.md) before downloading or redistributing weights.

The original engine [README](README.llama.cpp.md) and [agent instructions](AGENTS.llama.cpp.md) are preserved. This is an owner-authorized private fork; no upstream contribution or pull request is implied.
