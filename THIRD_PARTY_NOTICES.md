# Third-party notices and source provenance

Floatie additions are distributed under the repository MIT license. Original components keep their own copyright notices, license grants and source headers. This document does not replace their license terms.

## Engine base

Poolside's llama.cpp `laguna` branch, base commit `06f8cebd7fe728687be3d19f8bdedb70d75883af`, is the engine base. Its root MIT license and bundled vendor notices remain. Preserve the individual licenses in `vendor/`, `ggml/`, `common/`, and other upstream files when redistributing relevant portions.

## Adapted Strata CPU IQ kernels

`ggml/src/ggml-cpu/moe-iq.cpp` is adapted from Niko1221/Strata `iq_avx2.cpp` and `iq_avx2_rows.inl`, commit `82f46a8c8f475f001ad76d92f58f4a4f8ffb0253`.

Copyright (c) 2026 Niko1221 and the Strata contributors.

The full MIT copyright, permission and warranty notice remains in that source header. Upstream license: https://github.com/Niko1221/Strata/blob/82f46a8c8f475f001ad76d92f58f4a4f8ffb0253/LICENSE .

## Archived IK research candidates

The recorded IK source audit and rejected kernel candidates refer to ik_llama.cpp commit `89bba35c8841618502b2be8273fb5265b405aca1`, MIT. The original ggml, llama.cpp, IK and applicable Iwan Kawrakow notices remain with the archived source and `performance/research-20261011/ik-source-audit/LICENSE`.

These candidates are historical evidence; their presence does not mean they are compiled into the retained engine. ro99/strata was a separately inspected Apache-2.0 reference; the recorded work does not establish incorporation of its implementation.

## Model materials

The target and draft model files are downloaded separately using `model-artifacts.json`; they are not distributed as Floatie MIT code. Preserve and follow their original model/conversion terms. The official Laguna S 2.1 target license is OpenMDW-1.1: https://huggingface.co/poolside/Laguna-S-2.1/blob/main/LICENSE.md . The official DFlash card currently identifies its license as `other`; this repository does not assert a blanket MIT or target-license grant for the draft weights.

No NVIDIA runtime libraries, downloaded Laguna weights, temporary PDF tooling, or third-party research documents are included in the Floatie additions. Any future binary release needs the license notices for the components it distributes.
