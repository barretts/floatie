# Floatie: recent optimization attempts and research reconciliation

Documentation assembled on October 11, 2026 from saved receipts, archived sources, and existing logs. Performance work is paused. This document does not start inference, rebuild, deploy, or establish fresh live state.

## Workload and interpretation

The objective remains Laguna S 2.1 **existing Q3 target**, local API, **900 tokens/sec prefill and 30 tokens/sec generation**, first at 8k and ultimately near a filled 128k context. Those requirements remain unfinished.

Unless a row says otherwise, execution below used the existing [saved request](../checkpoint-request-8064.json), 8,064 prompt tokens, 80 generated tokens, no prompt cache, greedy decoding, context 8,192, batch/ubatch 8,192, 6,144 MiB launch cache, 16 CPU MoE threads, DFlash maximum 4, draft KV Q8_0, pinned host experts, adaptive cache, and GPU misses/token 0. The common request SHA-256 is `046c2c8571b339b0763d886fb3937d35e465568a732f29947b40ad3a8ed0363c`. Phase-specific budgets differ from the launch cache setting: the retained engine uses 5,120 MiB prefill and 8,192 MiB decode caches.

All measured checkpoint runs described here recalled `COBALT-17`, `MAPLE-42`, and `VIOLET-89` in order. This is one recall workload, not evidence of general quality or every API feature. Equal output count is distinct from equal actual tokens. CPU and GPU profile intervals overlap and cannot be added as serial latency. Single comparisons do not establish repeatable isolated gains.

## Attempt register

Speeds are **prefill / generation tokens/sec**. “On” and “off” designate the candidate and its control, not necessarily different compiled binaries.

| Attempt | Measurement | Controls and decision |
|---|---|---|
| Early cost-aware admission | Candidate **510.58 / 12.01**; prior profiled baseline **511.53 / 11.60** | Draft counts and clocks differed; +0.406 percentage points cache hits did not establish overall gain. Archived candidate; later budgeted policy superseded it. |
| Queue unchanged refresh earlier | On **764.00 / 15.74**; off **786.98 / 16.12** | Same request and binaries; actual outputs and accepted drafts differed. Entry wait fell, but CPU time rose and no overall gain was established. Rejected and restored. |
| Budgeted admission, profiled | On **785.88 / 15.94**; off **788.04 / 15.44** | Same request, CPU/CUDA/llama binaries, actual output tokens, draft counts 100/54. +3.19% observed generation; initially optional. |
| Budgeted admission, normal | On **789.85 / 16.50**; off **790.08 / 16.17** | Same binaries/request, profiling disabled, draft counts 93/54; outputs differed. +2.05% observed generation. Retained by default; fallback cadence preserved. |
| Accepted-prefix cache heat | On **790.49 / 15.58**; off **790.30 / 17.38** | Same binaries/request; common 73-token prefix, differing output tail and draft counts. CPU selections fell <0.5%, CPU time essentially unchanged. Rejected. |
| Wider prefill atlases, first guard | **748.59 / 15.05** | Requested wider path was **not exercised**: guard retained 900 MiB atlases, 45/47 layers. This is not a wider-atlas result. |
| Wider atlases with calculated reclaim | On **761.56 / 15.19**; off **778.62 / 15.68** | Same binaries/request, actual output tokens, 100 drafts/53 accepted. Candidate exercised 1,290 MiB atlases, 47/47 layers and 128 MiB prefill reclaim. No gain; fully restored. |
| Decode cache fit, initial pause | **Unmeasured** | Built default-off candidate, then owner pause. Archived source/binaries and restored baseline; no inference during pause. |
| Decode cache fit, resumed | On **720.32 / 16.07**; off **779.08 / 16.15** | Same binaries/request/actual output tokens, 96 drafts/54 accepted, profiled. Larger 9,251 MiB cache reduced CPU work but showed no generation gain; restored. |
| DFlash on/off architecture comparison | Draft on **720.32 / 16.07**; off **778.41 / 11.36** | Same binaries/request and cache-fit policy, but output tokens and automatic budgets differed. Draft-off got 10,449 MiB cache. Observed +41.49% generation with draft; keep DFlash4. |
| IQ2 four rows, original layout | On **749.48 / 14.44**; off **776.60 / 15.22** | Same binaries/request/counts, 100 drafts/53 accepted; actual tokens differed. Gate/up CPU time worsened. Rejected. This did **not** measure persistent repacking. |
| IQ2 lossless persistent R4 mirror | On **754.22 / 15.57**; off **783.12 / 15.36** | Same binaries/request; tokens and draft counts differed (96/54 versus 95/53). 22.10 GiB extra RAM and 10.17 sec startup; +1.41% observed generation did not justify retention. Rejected. |
| Prefill readiness timeline | **779.15 / 15.42** | Profile and timeline enabled; diagnostic execution, not a normal production speed. All 45 bulk uploads finished before routing; split-readiness hypothesis ruled out for that covered span. |
| Single-ID GPU metadata | On **783.26 / 15.63**; off **785.52 / 16.77** | Same binaries/request; tokens and acceptance differed (100/53 versus 96/55). Recorded expert-GPU interval fell 19.23%, prefill flat and generation lower. Rejected. |
| Cache-transition component audit | **No new execution or implementation** | Existing source preserves resident weights with D2D copies. Existing logs show ~899 ms growth; allocation/copy/synchronization breakdown was proposed and interrupted by owner stop. |

## 1. Early cost-aware admission: measured, no established gain, superseded

Mechanism: after a verification batch, predict avoided CPU work from expert heat and admit one expert when that saving exceeds the measured PCIe transfer cost. This was distinct from later admission bounded by actual overlap. It ran with profiling and phase-memory handling enabled; GPU clock holding was not measured.

Candidate: 510.5829459 prefill, 12.0128291 generation, 96 drafts/55 accepted. Earlier baseline: 511.5304638 prefill, 11.6027402 generation, 100/53. The first profile window covered 76 evaluated target rows/layer, 35,720 selections; cache hits rose 17,056 → 17,201, CPU time 1,671.22 → 1,638.23 ms, H2D 670.50 → 803.23 MiB. Cache hit increase was **0.406 percentage points**. Different acceptance and clocks prevent attribution of generation difference to admission.

The [comparison](../cost-aware-admission-comparison.json), [deployment](../cost-aware-admission-deployment.json), [launch](../cost-aware-admission-launch.json), [candidate measurement](../core8k-cost-aware-admission-dflash4-q8-cache6144.json), and [archived source](../candidates/moe-hybrid-cost-aware-admission.cu) preserve evidence. Current source has the later budgeted policy and a 16-evaluated-token fallback, not this candidate's per-batch cost-aware branch. **Coverage gap:** no dedicated rollback receipt was found; do not invent one.

## 2. Earlier unchanged cache refresh: rejected

Mechanism: queue the existing refresh after GPU reads of cached slots, before waiting for CPU completion, without changing admission volume. Profile and readback span enabled; timeline disabled. Same request and CPU/CUDA binaries.

On: 763.996368 / 15.743417, 96 drafts/54 accepted. Off: 786.981161 / 16.124559, 96/55. Actual outputs differed. Entry event wait fell **227.97 → 171.03 ms**, while fused CPU time rose **1,631.02 → 1,719.01 ms**. Caller placement differed. No overall gain was established; this is not an isolated regression estimate.

Preserved [comparison](../refresh-overlap-comparison.json), [deployment](../refresh-overlap-deployment.json), [rollback](../refresh-overlap-rollback.json), [candidate source](../candidates/moe-hybrid-refresh-overlap-rejected.cu), [on](../core8k-refresh-overlap-on-dflash4-q8-cache6144.json), and [off](../core8k-refresh-overlap-off-dflash4-q8-cache6144.json). Later successful budgeted admission uses earlier queueing **with a different bounded admission mechanism**; rejection of this experiment does not mean active uploads are serialized after CPU work.

## 3. Budgeted cache admission: retained, default enabled

Mechanism: rank cache admissions by heat, bound upload bytes by measured prior CPU/GPU overlap and calibrated H2D bandwidth, and queue them after cached GPU reads but before CPU expert completion. Calibration measured 900 MiB in 141.72 ms, **6.20 GiB/sec**. Preserve every selected expert computation; retain the existing cadence when timing/calibration is unavailable.

Profiled same-binary pair: on **785.877746 / 15.936191**, off **788.041779 / 15.443151**, identical actual output tokens and 100 drafts/54 accepted. The first 752-layer-call window had 35,720 selections and 76 evaluated rows/layer. CPU selections fell **18,633 → 16,517** (11.36%); actual cache hits rose **17,087 → 19,203** (+5.924 percentage points). Fused CPU time **1,666.70 → 1,559.67 ms**. H2D increased **670.50 → 4,716.61 MiB**; 621 budgeted refresh calls uploaded 4,548.98 MiB. GPU refresh interval rose 131.15 → 819.14 ms while CPU-wait interval fell 1,264.23 → 488.16 ms. These overlap; their differences are not additive latency savings.

Profiler-disabled same-binary pair: on **789.849416 / 16.498094**, off **790.075074 / 16.166623**, equal 93 drafts/54 accepted but different actual outputs. Observed generation gains were **3.19% profiled** and **2.05% normal**; these are small single-pair observations, not a guaranteed isolated gain.

Evidence: [profile comparison](../budgeted-admission-profile-comparison.json), [normal comparison](../budgeted-admission-production-comparison.json), [initial deployment](../budgeted-admission-deployment.json), [default-enabled deployment](../budgeted-admission-default-deployment.json), and [default production measurement](../core8k-budgeted-admission-default-production-dflash4-q8-cache6144.json), which recorded **788.232502 / 16.104240**, 100 drafts/54 accepted. The retained source SHA is `AF3E081FB5C00FA2135AE0858895074F2937D17FB69FAB89D6B70E5271246A5B`.

## 4. Accepted-prefix heat: rejected

Mechanism: reconcile expert cache history with the accepted DFlash prefix rather than accumulating rejected proposed rows as though they were accepted history. Callback logs matched all 47 layers; matching is correctness evidence for that callback workload, not a speedup.

Profiled same-binary/request pair: on **790.489037 / 15.575229**, off **790.299156 / 17.383138**. Output sequences shared 73 tokens but then differed; drafts/accepted were **100/53 versus 88/56**. Both first profile windows had 752 layer calls and 76 evaluated rows/layer. CPU selections fell **0.467%**, CPU wall time **0.032%**. There was no material reduction in actual CPU work. Observed generation difference -10.40% cannot be isolated from acceptance differences.

[Comparison](../accepted-heat-comparison.json), [deployment](../accepted-heat-deployment.json), [rollback](../accepted-heat-rollback.json), [candidate source archive](../candidates/rejected-accepted-heat-sources/ggml/src/ggml-cuda/moe-hybrid.cu). Six original sources and the complete 12-file binary set were restored; retained budgeted admission remained enabled.

## 5. Wider prefill atlases: initial guarded run, then exercised and rejected

First revision enlarged atlases to include layers 46/47, but the memory guard selected the old **900 MiB / 45-of-47-layer** configuration. It recorded **748.589919 / 15.047678**, 100 drafts/53 accepted. [Guard observation](../wide-bulk-guard-observation.json) explicitly says `wide_path_exercised=false`; this cannot support a performance conclusion about wider atlases. Preserve the [first deployment](../wide-bulk-deployment.json), [measurement](../core8k-wide-bulk-on-dflash4-q8-cache6144.json), and [guard-only source](../candidates/moe-hybrid-wide-bulk-guard-only.cu).

Second revision computed cache reclaim before allocation, using **1,290 MiB atlases, 47/47 eligible layers, and 128 MiB lower prefill cache budget**. Profiled same-binary/request pair had identical actual outputs and 100 drafts/53 accepted. On **761.563339 / 15.185409**; off **778.619104 / 15.681026** with the old 900 MiB/45-layer path. Observed differences: prefill -2.19%, generation -3.16%; no established gain. Post-inference GPU snapshots reflected idle clocks and do not establish peak memory or active performance.

[Reclaim deployment](../wide-bulk-reclaim-deployment.json), [comparison](../wide-bulk-comparison.json), [rollback](../wide-bulk-rollback.json), and [rejected source](../candidates/moe-hybrid-wide-bulk-reclaim-rejected.cu). The original source and all 12 baseline binary hashes were restored. Budgeted admission remained retained.

## 6. Decode cache fit: unmeasured pause, then controlled measurement and rejection

Mechanism: release no-longer-needed prefill allocations and fit decode expert capacity to currently free VRAM while preserving a 768 MiB reserve. Default-off `GGML_CUDA_MOE_DECODE_CACHE_FIT` candidate built successfully. The owner requested a pause before execution. Source and complete binary set were archived, original baseline restored, and no inference executed during that pause: [deployment](../decode-cache-fit-deployment.json), [pause restore](../pause-decode-cache-fit-restore.json), [pause checkpoint](../checkpoint-paused-20261011.json), and [then-unmeasured source archive](../candidates/moe-hybrid-decode-cache-fit-unmeasured.cu). Its filename denotes that historical phase, not its later status.

During authorized research resumption, the archived candidate was restored without a rebuild: [resumption receipt](../research-resume-cache-fit-deployment.json). Profiled same-binary/request comparison had identical actual output tokens, 80 output length and 96 drafts/54 accepted. Candidate **720.319578 / 16.068839** versus control **779.078195 / 16.148769**. Candidate cache was **9,251 MiB** versus **8,192 MiB**; phase hot uploads **4,133.44 versus 3,137.11 MiB** and growth transition **1,124.29 versus 901.13 ms**. CPU selections fell 5.94%, CPU time 5.13%; generation -0.495% and reported prefill -7.54%. Larger capacity reduced CPU work but did not show an overall generation gain on this request.

[Comparison](../research-cache-fit-comparison.json), [on measurement](../core8k-research-cache-fit-on-dflash4-q8-cache6144.json), [off](../core8k-research-cache-fit-off-dflash4-q8-cache6144.json), and [rollback](../research-cache-fit-rollback.json). Candidate and original archives remain; original retained engine restored. This is not proof that any cache capacity strategy cannot work.

## 7. Current-build DFlash on/off: retain DFlash4

The same candidate binaries and cache-fit policy were used for a draft-on/off architecture comparison. Draft on **720.319578 / 16.068839**, 96 drafts/54 accepted; draft off **778.409485 / 11.356898**, no speculative counters. Both cold-prefilled 8,064 tokens and generated 80, but actual outputs differed. Removing the draft allowed a **10,449 MiB** cache instead of 9,251 MiB, uploading 5,450.55 MiB hot experts and taking 1,457.68 ms growth. Automatic budgets therefore differ; this is not an equal-cache isolated draft-overhead experiment.

Draft generation was **41.49% faster observed** despite the draft-off cache advantage. Retain DFlash4. [Comparison](../research-dflash-on-off-comparison.json) and [no-draft measurement](../core8k-research-nodraft-cache-fit-q8-cache6144.json). Do not compare their first 16 target-evaluation windows as equal accepted-output windows. Later baseline restoration also removed cache-fit; this receipt does not describe the final deployed cache.

## 8. Original-layout IQ2 four rows: rejected

Mechanism: compute four output rows with AVX2 while gathering from the original packed row layout. No persistent packed mirror was created; original weight bits were unchanged, floating reduction order changed. Default-off `GGML_CUDA_MOE_IQ2_ROWS4` allowed same-binary on/off comparison.

Profiled on **749.477137 / 14.442876**, off **776.601415 / 15.224527**; both 100 drafts/53 accepted, actual token sequences differed. Candidate first-window gate/up CPU time **1,072.63 ms** versus **929.31 ms** control. Observed generation -5.13%, prefill -3.49%; no gain.

[Deployment](../iq2-rows4-deployment.json), [comparison](../iq2-rows4-comparison.json), [rollback](../iq2-rows4-rollback.json), [rejected source](../candidates/rejected-iq2-rows4/moe-iq.cpp). All 24 tracked source hashes and 12 binary hashes were restored. Initial rollback encountered a lock while overwriting an unchanged cublas DLL; retry copied only changed binaries, verified every hash, and stopped no additional application. The initial exact-path server stop's PID was not persisted before that lock error, a recorded provenance limitation.

## 9. Actual lossless IQ2 R4 mirror: separately measured and rejected

Distinct mechanism: losslessly rearrange four 82-byte IQ2_S blocks into a 328-byte R4 block, prepare model-owned CPU mirrors before serving requests, and reuse AVX2/FMA/F16C row computation. A **24 GiB remaining-physical-RAM guard** permitted fallback rather than forcing allocation. Original GGUF/GPU weights and selected experts remained unchanged. The mirror covered **92 tensors**, **23,731,372,032 bytes = 22.1015625 GiB**, prepared in **10,174.11 ms**. Packing startup is separate from request timing.

Numeric audit used local **292-byte Q8_K** named fields; the pinned IK source has a different 300-byte Q8_K structure, so its wrapper was not imported unchanged. Exact sign/scale/row integer mapping was audited. Floating reduction order differs: preservation of quantized weight bits does not prove bit-identical outputs or general-quality equivalence.

Profiled same-binary/request on **754.223356 / 15.572504**, off **783.117524 / 15.356495**. Actual tokens differ; drafts/accepted **96/54 versus 95/53**. First-window CPU gate/up **886.81 versus 938.24 ms**, fused CPU **1,610.49 versus 1,645.29 ms**; CPU misses **16,677 versus 16,347**, demonstrating changed routing/cache history. Observed generation +1.41% did not establish a material gain worth 22.10 GiB. Observed prefill -3.69% does not isolate the candidate's effect; the mirror was unused in bulk prefill.

[Deployment](../iq2-r4-deployment.json), [comparison](../iq2-r4-comparison.json), [on](../core8k-iq2-r4-on-dflash4-q8-cache6144.json), [off](../core8k-iq2-r4-off-dflash4-q8-cache6144.json), [rollback](../iq2-r4-rollback.json), [rejected source](../candidates/rejected-iq2-r4/core-engine/ggml/src/ggml-cpu/moe-iq.cpp), and [packing RAM-release receipt](../iq2-r4-off-first-launch-ram-release.json). First off launch refused at 47.9 GiB free shortly after server stop; later read-only observation saw 109.539 GiB free and no inference process. Relaunch used the already-waiting existing probe, without touching desktop applications. All 24 tracked source hashes and 12 binaries were restored; experimental flag removed.

## 10. Prefill readiness: diagnostic ruled out the proposed split

Hypothesis: splitting activation readiness from weight readiness might let expert computation begin while a full-layer upload remains in progress. Existing timeline instrumentation was used on the unchanged retained source, with profiling/readback/timeline enabled. [Measurement](../core8k-prefill-readiness-timeline-dflash4-q8-cache6144.json) recorded **779.154675 / 15.424767**, 93 drafts/54 accepted, not a production speed claim.

[Timeline analysis](../prefill-readiness-timeline-analysis.json) covers the first **8,060 prompt tokens, bulk layers 1–45**. Every bulk upload completed before routing readiness: **zero** layers late, minimum slack **53.257 ms**, maximum **513.899 ms**. Copy union **6,393.907 ms**, expert union **4,027.643 ms**, overlap **3,272.811 ms**. Existing two-bank overlap is demonstrably working in that covered span. Splitting readiness/full activation scratch would hide no observed wait there, so it was not implemented. Layers 46/47 use a different streamed path and the remaining 4 prompt tokens are outside this timeline span.

[Launch](../prefill-readiness-timeline-launch.json) preserves the raw-log location. Timeline perturbs timing; intervals are overlapping unions, not independent serial components.

## 11. Single-ID GPU metadata template: rejected

Mechanism: use a one-ID specialization for GPU integer index/metadata construction (`template<1>`), preserving the helper's floating operations. The helper change alone does not establish the cause of differing output tokens.

Profiled same-binary/request on **783.263569 / 15.628889**, off **785.517871 / 16.766655**. Actual output tokens differ; draft counts **100/53 versus 96/55**. Recorded whole expert-GPU prefill interval **4,201.82 → 3,393.79 ms**, -19.23%, but copy interval remained **6,777.55 versus 6,775.27 ms**, and prefill -0.287% overall. Whole-expert interval does not isolate the helper runtime. Observed generation -6.79% also cannot be isolated from acceptance changes. No overall gain established.

[Deployment](../single-id-deployment.json), [comparison](../single-id-comparison.json), [on](../core8k-single-id-on-dflash4-q8-cache6144.json), [off](../core8k-single-id-off-dflash4-q8-cache6144.json), [rollback](../single-id-rollback.json), [rejected source](../candidates/rejected-single-id/mmid.cu). Original mmid source, all 24 prior tracked sources and all 12 binaries restored. Experimental flag removed; normal server relaunched with profiling disabled, as recorded rather than freshly checked during documentation.

## 12. Supplied research and pinned kernel sources

This was research reconciliation, not another measured optimization. The original `E:\poolside\research\laguna-research-20261011` reports and added parent-folder documents were inspected. [Original reconciliation](../research-20261011-local-reconciliation.json), [added-source reconciliation](../research-20261011-added-sources-reconciliation.json), and [document extraction](../research-20261011/added-document-extraction.json) preserve document hashes/content evidence. The original documents and existing text extractions are now bundled in the [research index](../../research/INDEX.md). The added DOCX is a shorter version of the optimization Markdown; both PDF versions have identical extracted text despite different file hashes, all six pages were rendered/read, and the added HTML is byte-identical to the dated HTML report. These copies are not independent algorithm evidence.

Reports proposed several mechanisms **already implemented**: per-layer frequency-decay adaptive caching, pinned 41.91 GiB expert RAM, physical-core worker affinity, grouped 2–4-token IQ2/IQ3/IQ4 computation, upload/CPU overlap, compact SWA KV, quantized KV and DFlash Hadamard injection. DFlash is supported for verification batches, not restricted to single-token decode. Q6 grouped fallback remains the established standard per-pair dot path. Corrected Q8 draft GPU weights are about 1,130 MiB, DraftMax4 and batch/ubatch8192, unlike report BF16/width15/ubatch512 premises.

Least-Stale concerns cross-layer eviction in a shared cache; local victims are already restricted to their layer. Its 85–90% hit rates are not verified Laguna hit rates. ExpertFlow predictive caching needs predictor artifacts/training; Mira uses custom INT8 experts rather than the owner's pinned Q3. No ready Laguna backend or authorized additional weight quantization was inferred. Thread/chunk/speculation sweeps and new suites were not adopted because the owner prohibited them.

Corrected model arithmetic is **calculation**, not runtime measurement: 128k global KV F16 payload is 6 GiB; Q8_0 3.1875 GiB, plus padded SWA storage based on window+ubatch (8,704 cells here), about 0.635 GiB Q8_0. Nominal 512-token attention does not imply only 512 allocated SWA cells. FLOP counts divided by shader TFLOPS do not prove flash-attention speed, because local kernels use tensor-core MMA and causal attention changes the square calculation. Worker overhead percentages do not prove weight decoding is memory-bound.

Pinned [IK source receipt](../research-20261011/ik-source-audit/source-receipt.json) records commit `89bba35c8841618502b2be8273fb5265b405aca1`, exact file hashes and upstream URLs; [MIT license](../research-20261011/ik-source-audit/LICENSE) retained. This informed the two distinct IQ2 attempts above. Older reconciliation labels “R4 unmeasured” accurately describe their own timestamp; **R4 was subsequently measured and rejected**, as its later comparison proves.

## 13. Latest interrupted cache-transition audit

No new optimization, source edit, deployment, build, or benchmark was completed in this last audit before the owner stopped work. The proposed next measurement was to separate allocation, initialization, resident D2D copying, new-capacity H2D copying, and synchronization costs during prefill→decode cache growth.

Existing [resize_cache source](../../ggml/src/ggml-cuda/moe-hybrid.cu) already retains residents: it ranks existing resident experts by heat, reserves replacement buffers, copies each surviving resident **device to device**, synchronizes, swaps buffers, restores slot mappings, and promotes into remaining capacity. It does **not** re-upload all existing residents from RAM.

[Last saved state](../research-20261011-packed-routing-active-state.json) records source-accounting correction: **4,789.4765625 MiB retained D2D**, **3,137.109375 MiB new-capacity H2D**. These exact figures are saved accounting conclusions, not freshly isolated component timings. The existing [single-ID-off launch](../single-id-off-launch.json) identifies raw log `E:\poolside\logs\single-id-off-20261011-143959.stderr.log`: at log time `0.32.822.610`, 8,192 MiB phase budget, **3,137.11 MiB** hot uploads and **899.78 ms** transition; its 5,120 MiB prefill transition was 268.38 ms with zero hot uploads. The [readiness launch](../prefill-readiness-timeline-launch.json) raw log similarly recorded 899.15 ms growth and 267.55 ms initial transition. These aggregate times do not isolate allocation versus copying/synchronization.

**Coverage gap:** there is no completed standalone allocation/copy/synchronization profile or dedicated interrupted-audit receipt. The next measurement remained a proposal. Do not promote the ~0.9-second transition into a proven removable bottleneck or a measured speedup.

## Last recorded restored state

Latest saved **normal, profiler-disabled** result is [after-R4 production](../core8k-after-r4-production-dflash4-q8-cache6144.json): **770.831742 prefill / 15.847660 generation**, 8,064 prompt / 80 output, no cached prompt, 100 drafts/54 accepted, all three checkpoints. Its [launch](../after-r4-production-launch.json) records context8192/cache6144/batch8192/MoE16/DFlash4/Q8_0, pinned/adaptive, profile/readback/timeline off.

The later [restored-state receipt](../research-20261011-packed-routing-active-state.json), timestamp **2026-10-11 14:46:21 -05:00**, records restored 24-source-plus-mmid and complete 12-binary hashes, healthy normal API, and no profiling. It expressly says **performance was not remeasured after the final restart**. Its `goal_status=active` is historical; the owner subsequently stopped work and the goal was paused. No fresh process/health check or performance run was performed for this documentation task.

Retained CPU hash `F12D74DF8BB2E6EC3296974DD21BD1117B12E062650D5DD69A024EBBD4FA7D4E`; CUDA `465D152C90671D4CF70D9DCFD0B99A5135B7DB7D71691CFADBFEC45B68006EC2`; llama `03AF4A1A15ABEA96C088BDB06622EFDFE905ED853B4855A2A7CBDB5658DCF718`; server `56A839707A3EF9DCA966905221357F71EF4A37DBCF54574CD32F432E4B834A7E`. These are saved restored-state identities, not freshly rehashed E: binaries.

Current-engine near-full 128k speed, 900/30 at 8k, full non-UI feature verification, and the earlier unexplained desktop-window closure remain unresolved. No test suite, sweep, additional weight quantization, desktop process stop, or GPU/driver reset was introduced here.
