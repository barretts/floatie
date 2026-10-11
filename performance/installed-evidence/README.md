# Poolside Laguna S 2.1 - local hybrid MoE MVP

Private Windows build for this workstation: Threadripper 1950X (16 cores), 128 GiB RAM, RTX 4060 Ti 16 GiB, PCIe 3.0 x8. All artifacts live under `E:\poolside`.

## Status

Prepared for the first run attempt. The native server compiled successfully, both model files passed complete SHA256 checks, and static DLL import inspection found all dependencies. See `prepared-state.json` and `logs/` for the preparation record. No inference, model initialization, or automated tests have been run. The eventual target is 30+ generated tokens/sec near a filled 128k context; that speed is unmeasured and is not a promise. Compilation and static review cannot establish output correctness or throughput.

## First launch

Close the existing Qwen Strata model yourself to release its RAM and VRAM. This package never stops it. Then, when ready for the first run attempt:

```powershell
powershell.exe -ExecutionPolicy Bypass -File E:\poolside\launch.ps1
```

The launcher checks the pinned download receipts, available memory, and port before starting the server. It binds to `http://127.0.0.1:1235/v1`, with model alias `laguna-s-2.1-iq3-s`. Logs go to `E:\poolside\logs`. There is no web interface. The context limit of 131072 covers prompt and generated tokens together.

Initial settings: IQ3_S target, Q8_0 DFlash draft, Q8_0 K/V caches, 131072 context, one request slot, 512-token prefill batches, up to four drafted tokens, 16 CPU workers, 3072 MiB GPU expert cache. `launch.ps1` exposes `-CacheMiB`, `-MoeThreads`, `-DraftMax`, and `-Port`.

## What was implemented

The foundation is Poolside's Laguna branch of llama.cpp, pinned at `06f8cebd7fe728687be3d19f8bdedb70d75883af`.

- Native Laguna attention, RoPE, routing, shared experts, tokenizer, chat template, API server, and DFlash come from that fork.
- A new `GGML_OP_MOE_HYBRID` fuses each routed expert's gate, up, SwiGLU, and down projections. The existing graph retains router selection, normalization, 2.5 weight scaling, and top-10 summation.
- `CUDA_MOE_HOST` keeps routed expert tensors in owned system RAM. The scheduler passes these weights directly to the hybrid operator without making full GPU copies.
- The GPU computes cached expert triplets while persistent CPU workers compute cache misses using GGML's quantized AVX2 dot products. Both contributions are merged before routing weights are applied. All ten selected experts are evaluated.
- Prefill stages selected experts into reusable GPU buffers and uses existing quantized matrix kernels. Prompt routing frequency populates the cache; later promotions are bounded.
- Decode uses matrix-vector chunks so repeated zero placeholders for CPU misses cannot violate the matrix-matrix kernel's unique-ID assumption.
- CUDA graph capture is disabled for graph splits containing the hybrid operator because CPU work requires readback. The DFlash graph can use its normal backend path.

The target labeled UD-IQ3_S is a mixed quantization checkpoint, including mostly IQ2_S gate/up weights, mostly IQ4_XS down weights, IQ3_S in the last layer gate/up, Q6_K in the last two down projections and dense weights, and a few Q8_0 tensors. These original tensor representations are preserved.

## Memory placement

| Allocation | Approximate GiB |
| --- | ---: |
| Target non-routed weights (GPU budget upper bound) | 3.193 |
| Q8 draft weights | 1.107 |
| Target global attention Q8 K/V at 131072 | 3.188 |
| Draft Q8 K/V at 131072 | 1.594 |
| Persistent GPU expert cache | 3.000 |
| Largest complete layer staging allocation | 1.260 |
| Routed expert weights in system RAM | 41.906 |

GPU estimates exclude sliding-window caches, graph buffers, CUDA allocation overhead, and desktop usage. The CUDA flash-attention path can also use about 512 MiB of F16 K/V scratch per backend at full context during batched processing; target and draft maintain separate allocation pools. Native input-embedding placement may leave some weights on CPU, so the non-routed GPU weight budget is conservative. The initial 3 GiB cache leaves space for these. Peak allocation still needs observation during the first run. The default launcher requires at least 14 GiB free VRAM and 64 GiB free physical RAM.

SSD stores the GGUF checkpoints and build artifacts. Routed experts fit in RAM, so this implementation does not intentionally read expert weights from SSD while decoding. Niko's separate disk-backed Qwen PLE/ngram lookup has no corresponding Laguna table.

## Files

- `engine/`: private modified source; upstream license retained.
- `build/bin/llama-server.exe`: compiled server.
- `build.ps1`: native MSVC/CUDA 12.6 build for architecture 89; no test targets.
- `launch.ps1`: manual first-run entry point; never invoked by preparation.
- `model-artifacts.json`: pinned model revisions, sizes, and SHA256 hashes.
- `model-layout.json`: actual GGUF metadata, tensor formats, and memory inventory.
- `source-manifest.json`: private source revision, patch hash, and changed-file hashes.
- `download-models.py`: resumable parallel downloads and complete-file SHA256 validation.
- `models/`: target, draft, and integrity receipts.
- `logs/`: download, compilation, and future server logs.
- `patches/hybrid-moe.patch`: complete private source changes.

To resume artifact preparation or rebuild:

```powershell
python E:\poolside\download-models.py
powershell.exe -ExecutionPolicy Bypass -File E:\poolside\build.ps1 -Jobs 4
```

These commands do not launch the inference server.

## Limits of this MVP

Only the pinned Laguna checkpoint and one NVIDIA GPU are configured. Hybrid routed experts reject LoRA, expert biases/scales, clamped SwiGLU, or unsupported tensor types. These restrictions do not affect the selected checkpoint. Concurrent requests are limited to one slot.

Outstanding first-run evidence: successful model initialization, plausible/correct generated output, peak RAM/VRAM, draft acceptance rate, prefill latency, and throughput at long context. CPU memory bandwidth, full global attention, and DFlash verification cost may prevent the 30 tokens/sec generation target. With the initial 512-token batches, a large uncached prompt restages many expert weights for every batch; full 128k prefill can be much slower than the existing Qwen Strata setup. That is a separate unresolved performance limit. No benchmark result is claimed.

## Sources and provenance

- Poolside Laguna runtime: https://github.com/poolsideai/llama.cpp/tree/laguna
- Model: https://huggingface.co/poolside/Laguna-S-2.1
- Target quantization: https://huggingface.co/unsloth/Laguna-S-2.1-GGUF
- Draft quantization: https://huggingface.co/dev7a/Laguna-S-2.1-DFlash-GGUF
- Niko Strata execution reference: https://github.com/Niko1221/Strata
- ro99 Strata reference: https://github.com/ro99/strata

ro99 contains native Laguna code and tiered expert placement, but its four-bit floor and native FP4 checkpoint path do not provide the requested Q3 implementation. It was examined as reference material. This package is a private Poolside llama.cpp derivative; no upstream commit, pull request, or publication was made. New hybrid code was generated with AI assistance and has not been executed with a model.
