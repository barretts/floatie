# Floatie: attempted improvements and results

Compiled **2026-10-11** from existing local evidence. **Performance work remains paused at the owner's request.** The original compilation was documentation-only; Stage 4 records a later owner-authorized correctness repair. Stage 5 records the subsequently authorized tool-protocol investigation and live verification. Stage 6 repairs named-argument ordering and restores parallel calls by default.

## Current recorded result

| Workload / state | Prefill tok/s | Generation tok/s | Meaning |
|---|---:|---:|---|
| Latest saved normal 8k run: 8,064 prompt / 80 output, context 8,192, no prompt reuse, profiling disabled | **770.83** | **15.85** | [After-R4 production receipt](core8k-after-r4-production-dflash4-q8-cache6144.json); three checkpoint codes correct. |
| Original near-full run: 130,278 prompt / 52 output, context 131,072 | **320.37** | **1.76** | [Historical native log](/E:/poolside/logs/laguna-20261010-175153.log); 0/204 drafts accepted. Owner reported three correct codes; original request/output token IDs missing. |
| Owner's target, first at 8k, then near-full 128k | **900** | **30** | Unmet. Current-engine 128k speed has not been established. |

The last saved restoration record is **2026-10-11 14:46:21 -05:00**: original retained sources and binaries restored, normal API healthy at that checkpoint, profiling disabled, **no throughput run after the final restart**. Its old `goal_status=active` predates the later stop and pause. These are recorded observations; this documentation task makes no fresh server-health or speed claim. [Restored-state receipt](research-20261011-packed-routing-active-state.json).

## Scope and how to read this record

The inventory covers **336 pre-existing direct JSON evidence files**, including **98 response measurements**, **27 comparison files**, and **51 deployment files**. It also uses the specifically cited installed logs, model manifests, candidate archives and research reconciliations. It does not claim a recursive audit of every file or historical E: log.

- [Measurement index](MEASUREMENT-INDEX.md): every saved response measurement, including slow, cached, unsuccessful and profiling runs; links to all 336 inventoried JSON records.
- [Evidence ledger](attempts-ledger.json): exact timings, request/output metadata, hashes, and **74 structured entries** through Stage 6. Entries can revisit a mechanism or document a diagnostic/research step; this count is not a count of independent controlled experiments.
- Detailed stage companions: [early](documentation-drafts/early.json), [middle](documentation-drafts/middle.json), [recent](documentation-drafts/recent.json). Original receipt fields remain authoritative; later evidence resolves earlier pending decisions.

**Disposition terms:** retained means a source/default/checkpoint records adoption; rejected/reverted means the candidate was archived and the retained baseline restored; diagnostic means an observation that directed work; research-only means review without a local performance result; unmeasured/interrupted means no completed inference measurement for that proposed phase. A successful build, API response or healthier subcounter alone is not a speed improvement.

Unless specified otherwise, later runs use the saved 8,064-token request, 80 outputs, context/batch/ubatch 8,192, temperature 0, seed 42, top-k 20, top-p 1, prompt cache off, 16 CPU MoE threads, base cache 6,144 MiB, DFlash4, Q8 draft KV, pinned/adaptive experts and zero ordinary GPU misses per token. Retained phase budgets are 5,120 MiB prefill and 8,192 MiB decode. Early 8,192-token receipts instead used configured context 131,072; cached one-token prefill is explicitly excluded from full-prompt comparisons.

Subsequent owner-authorized correctness repair receipts are documented in Stage 4; the original 336-file measurement inventory is preserved.

The machine is an RTX 4060 Ti 16 GiB, Threadripper 1950X (16 physical cores, AVX2), 128 GiB DDR4-2133 with four channels, and PCIe 3 x8. Measured expert-upload bandwidth is about 6.2 GiB/s. The pinned target is the existing mixed-format Q3 GGUF, not newly requantized weights. [Project/model context](../README.md), [bandwidth evidence](budgeted-admission-profile-comparison.json).

## Root Cause

The receipts identify several distinct limitations rather than one proven universal cause:

1. **Broken initial draft acceptance:** metadata repair alone left 2/298 acceptance. Corrected quantized-KV feature transformation, working-batch handling and later window/chunk handling restored useful speculation. Historical near-full 0/204 acceptance does not describe the corrected current draft path.
2. **Prefill serialization and excessive masked work:** routing metadata transfers sat behind large weight copies; mapped metadata increased measured transfer/compute overlap. Exact SWA tile bounds, contiguous mask fill and obsolete draft-feature trimming removed recorded work. Their individual controls and bundled follow-ups are distinguished below.
3. **Decode CPU misses and result handoff:** per-layer cache capacity, expensive CPU expert work and waiting to combine CPU/GPU results remain relevant. Bounded mapped completion, masked-tile bounds and upload-budgeted admission were retained. Larger caches, more decoded weight RAM, fewer launches and smaller GPU intervals repeatedly failed to establish faster serving.
4. **Finite hardware capacity and transfer bandwidth:** tens of GiB of experts cannot reside in 16 GiB VRAM. RAM/CPU work and PCIe transfers are unavoidable in the implemented path. No measurement establishes the full remaining generation gap as a single kernel, memory-bandwidth, clock, or cache-transition defect.

The latest cache-growth audit was interrupted before component profiling. The existing engine already preserves resident weights with device-to-device copies. Roughly 899 ms aggregate growth is recorded; an allocation/zero/copy/synchronization breakdown and a removable share are unproven.

## Solution Pattern

Keep the pinned Q3 weights and selected expert work intact. Use exact attention bounds, grouped CPU kernels, pinned expert buffers, overlapped GPU prefill, bounded CPU result handoff, corrected DFlash and measured upload budgets. Evaluate candidates against the saved request with profiling, actual output tokens, acceptance and cache state recorded. Archive unsuccessful variants and restore source/binary identities. Retain historical failures and unmeasured proposals with explicit limits. No single-run subcounter reduction proves the 900/30 target or current 128k performance.

## Recurrence Scan

The same pattern recurred in compact decode slots, section graphs, wider atlases, cache-fit, paired/expanded IQ2, persistent R4 and single-ID metadata: improving padding, dispatch count, cache hits, CPU work or a GPU interval did not establish an overall speed gain. Those candidates and rollback evidence are preserved below.

These paths share cache placement, routing, speculative verification and host/GPU handoff: [hybrid backend](../core-engine/ggml/src/ggml-cuda/moe-hybrid.cu), [CPU scheduling](../core-engine/ggml/src/ggml-cpu/moe.cpp), [CPU IQ kernels](../core-engine/ggml/src/ggml-cpu/moe-iq.cpp), [draft integration](../core-engine/common/speculative.cpp), and [DFlash model](../core-engine/src/models/dflash.cpp). Counter windows and asynchronously overlapping intervals need their own coverage; they cannot be added into one serial cost or compared without matching evaluated work.

The current RAM/VRAM architecture and adapted grouped kernels were already present in several supplied research proposals. SSD expert lookup is not established in the active local decode path. A zero/nonzero Task Manager shared-GPU-memory counter alone does not identify SSD lookup, VRAM paging or CPU expert execution; recorded shared usage included registered expert RAM. [Historical memory checkpoint](checkpoint-core8k-production-baseline.json).

## Automation Opportunity

The documentation inventory now makes omitted receipts and contradictory dated statuses easier to find. A future measurement record could require candidate/control identities, actual-token equality, acceptance, profiling state, phase budgets and explicit final disposition together. This is a documentation recommendation only. No new runner, benchmark suite, tuning sweep or automated performance work was added.

## Verification

The original compilation checked saved files, hashes, numbers and document links without inference, builds or deployments. The later authorized repair in Stage 4 was deployed and rebuilt; no software tests or inference regression were run. All **336 original JSON artifact hashes** match the inventory; **98 measurements** are indexed, and all **27 comparisons / 51 deployments** are linked in this record. All **655 local links** across the report, repair record, measurement index and README resolved at the documentation check. The measurement index preserves missing original recall fields and identifies the eight early receipts whose answers were reviewed from saved response content. Original JSON is unchanged; the ledger stores that review separately.

The record distinguishes owner reports, research projections, exact calculations and measured execution. Missing direct Niko/ro99 controls, original near-full token IDs, isolated early controls, complete non-UI API verification, current 128k measurements and the unexplained desktop-window closure remain explicit. Documentation coverage does not claim those unfinished requirements are solved.

## Stage 1: model support, RAM/VRAM placement, streaming and draft repair

Documentation only; the performance goal remains paused. Target: Q3, local API, **900 prefill / 30 generation tok/s**, first at **8k**, then near-full **128k**. These early results do not achieve the target.

Retained/rejected status uses current-source or explicit checkpoint evidence. A successful request alone is not adoption. Historical sequential controls are listed where present and do not imply a matched causal A/B. Full precision, request hashes, token hashes, acceptance counts, and evidence hashes are in [early.json](documentation-drafts/early.json).

The regular receipts request 80 output tokens: greedy temperature 0, seed 42, top-k 20, top-p 1, min-p 0. The first family uses 8192 prompt tokens in configured context 131072; the later family uses the saved 8064 prompt tokens in context 8192. Prompt caching is disabled except the explicitly marked cached answer. Each receipt retains its own request hash.

### early-reference-evaluation: Strata and ro99 evaluation

**Status:** researchonly. **Mechanism:** Compare Qwen-specific Niko Strata execution with Laguna attention, routing, DFlash, and Q3 format support; select Poolside llama.cpp as the engine base.

**Result:** Niko supplied memory tiering ideas and adapted IQ kernel code. ro99 was inspected for Laguna and tiered placement, but the E: README records its four-bit floor/native FP4 path as unsuitable for the requested Q3. Floatie uses Poolside llama.cpp commit 06f8cebd7fe728687be3d19f8bdedb70d75883af.

**Controls:** {}.

**Limits:** Qwen 128k capability and roughly 30-38 tok/s around 50k were owner/session claims. No controlled, same-prompt Qwen/Laguna comparison or direct ro99 execution receipt was found in this family.

**Evidence:** [README.md](../README.md), [README.md](/E:/poolside/README.md), [prepared-state.json](/E:/poolside/prepared-state.json).

### early-architecture-essay: Run Laguna2.1 via Strata research essay

**Status:** researchonly. **Mechanism:** Review Poolside backend support, SWA allocation, pinned experts, short DFlash blocks, confidence filtering, attention requantization, and multi-GPU regex balancing.

**Result:** The full essay was reviewed; SHA256 ade039862d4352f00c97236f35636106d4bc063837012d17a460409b52abe957. The local engine implemented Poolside model support, owned host experts, compact SWA, and repaired Q8 DFlash. These receipts do not establish attention requantization, multi-GPU interleaving, or confidence-threshold optimization.

**Controls:** {}.

**Limits:** Its external claims include 18-20 / 60-64 generation tok/s, 7.2-7.8% attention requantization gain, 58 to 23 tok/s with DFlash, and 6.8 ms extra verification cost. These are source claims on other machines. Its 512-cell SWA estimate, all-48-MoE description, vocabulary/FF dimensions, and 1M-context claim must not override actual GGUF metadata or local allocation evidence.

**Evidence:** [Run Laguna 2.1 via Strata.md](<../research/Run Laguna 2.1 via Strata.md>), [model-layout.json](/E:/poolside/model-layout.json), [checkpoint-core-streaming.json](checkpoint-core-streaming.json).

### early-prepared-hybrid: Initial hybrid engine build and artifact preparation

**Status:** retained. **Mechanism:** Implement owned RAM experts, GPU caching, concurrent standard quantized CPU misses, a fused routed operator, GPU quantized prefill, local API, and DFlash.

**Result:** Compilation and pinned model checks succeeded. Target: 48,428,911,520 bytes, SHA256 8a9ab3f8b3ff1723441cd251e873b295a7ef086d78dbae7515e5e27c8382b002. Initial profile: cache 3072 MiB, context 131072, batch 512, DFlash 4, and Q8 KV. Preparation contained no inference metric.

**Controls:** {}.

**Limits:** The prepared-state receipt explicitly says inference/model initialization had not occurred. This foundation evolved substantially. Initial UI asset downloads failed TLS verification; the compiled API did not require the UI.

**Evidence:** [prepared-state.json](/E:/poolside/prepared-state.json), [source-manifest.json](/E:/poolside/source-manifest.json), [README.md](/E:/poolside/README.md).

### early-full-context-run: Initial near-full130278-token run

**Status:** inconclusive. **Mechanism:** Execute the initial hybrid API at context 131072, cache 3072 MiB, batch 512, DFlash 4, and Q8 KV.

**Result:** Native log: 320.37 tok/s prefill, 1.76 tok/s generation, 52 output tokens, 0/204 draft tokens accepted. The owner reported all three codes recalled. A prior 130501-token run recorded 329.60 tok/s prefill and an invalid 1000000 tok/s generation figure from one output token timed at 0 ms.

**Controls:** {"configured_context": 131072, "prompt_tokens": 130278, "output_tokens": 52, "batch": 512, "expert_cache_mib": 3072, "draft_max": 4, "draft_kv": "q8_0", "profile": "not established"}.

**Limits:** The matching log belongs to the Poolside hybrid installation; ro99 execution is not established. The owner's original request/output token IDs were not preserved. This does not prove current-engine 128k speed. The reported comparison with Niko's prefill has no same-prompt control here.

**Evidence:** [laguna-20261010-175153.log](/E:/poolside/logs/laguna-20261010-175153.log), [launch-before-tuning-20261010-182545.ps1](/E:/poolside/logs/launch-before-tuning-20261010-182545.ps1).

### early-raw-request-failures: Initial request/launch interruptions

**Status:** failed. **Mechanism:** Preserve early malformed API requests, an interrupted no-draft long prompt, and a build wrapper failure.

**Result:** Two malformed JSON requests returned HTTP 500 parse error 101. A no-draft 131072-context attempt reached 5120 prompt tokens without a final timing receipt. A PowerShell 5.1 build invocation stopped on CMAKE_BUILD_TYPE=Release output under ErrorActionPreference=Stop.

**Controls:** {}.

**Limits:** Later wrapper exit code -1 lines alone do not prove crashes or OOM; many accompanied deliberate server stops. No OOM diagnosis is asserted. These failures are operational evidence, not speed comparisons.

**Evidence:** [laguna-20261010-175153.log](/E:/poolside/logs/laguna-20261010-175153.log), [laguna-20261010-182702.log](/E:/poolside/logs/laguna-20261010-182702.log), [build-20261010-183317.log](/E:/poolside/logs/build-20261010-183317.log).

### early-batch512-thinking: 512-batch initial8k run

**Status:** inconclusive. **Mechanism:** Run an 8192-token prompt with cache 3072 MiB, batch 512, and drafting disabled.

**Result:** 73.64 tok/s prefill / 9.49 generation. Thinking consumed the 80-token output cap before the checkpoint answer.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [nodraft-cache3072-batch512-8k.json](nodraft-cache3072-batch512-8k.json) | 8192 / 80 | 73.64 | 9.49 | unrecorded / unrecorded | unanswered |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run."}.

**Limits:** The request hash and thinking mode differ from later explicit-BOS and 8064 comparisons. This run did not deliver a recall answer within the cap.

**Evidence:** [nodraft-cache3072-batch512-8k.json](nodraft-cache3072-batch512-8k.json), [nodraft-short-20261010-182853.stderr.log](/E:/poolside/logs/nodraft-short-20261010-182853.stderr.log).

### early-batch512-cached-answer: Cached512-batch answer attempt

**Status:** failed. **Mechanism:** Reuse 8191 cached tokens and disable thinking in the answer request.

**Result:** Only one uncached prompt token was evaluated: 2.374 prompt tok/s is not full-prompt prefill. Generation was 9.86 tok/s. The first three codes were MAPLE-42 / MAPLE-42 / MAPLE-42: incorrect.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [nodraft-cache3072-batch512-8k-answer.json](nodraft-cache3072-batch512-8k-answer.json) | 1 / 80 | 2.37 | 9.86 | unrecorded / unrecorded | incorrect |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": true, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run."}.

**Limits:** Cached prefill cannot be compared with uncached runs. The answer request's BOS handling was subsequently corrected.

**Evidence:** [nodraft-cache3072-batch512-8k-answer.json](nodraft-cache3072-batch512-8k-answer.json).

### early-batch2048-answer: 2048-batch no-draft answer attempt

**Status:** inconclusive. **Mechanism:** Increase the target batch from 512 to 2048 with cache 3072 MiB and drafting disabled.

**Result:** 206.94 tok/s prefill / 9.46 generation. The beginning checkpoint was incorrect: MAPLE-42 / MAPLE-42 / VIOLET-89.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [nodraft-cache3072-batch2048-8k-answer.json](nodraft-cache3072-batch2048-8k-answer.json) | 8192 / 80 | 206.94 | 9.46 | unrecorded / unrecorded | incorrect |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 3072}.

**Limits:** The prompt differs from the thinking and explicit-BOS requests. Throughput does not establish valid output or an isolated batch-size benefit.

**Evidence:** [nodraft-cache3072-batch2048-8k-answer.json](nodraft-cache3072-batch2048-8k-answer.json), [nodraft-b2048-20261010-183437.stderr.log](/E:/poolside/logs/nodraft-b2048-20261010-183437.stderr.log).

### early-dflash-metadata-fix: DFlash GGUF metadata repair

**Status:** retained. **Mechanism:** Add the official 512-token window, all-SWA pattern, 128 RoPE dimensions, and no RoPE scaling without changing the draft tensor payload.

**Result:** All 76 tensor descriptors and the 1,184,848,896-byte payload were preserved; payload SHA256 8437edb6262d450ba224ffa546ee986af0408405c305d874eb9e9ef2f7715339. Answer request: 197.07 / 2.57 tok/s and incorrect beginning code. Explicit BOS: 187.95 / 2.56 and correct codes. Both accepted only 2/298 draft tokens (0.67%).

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [fixed-dflash4-cache3072-batch2048-8k-answer.json](fixed-dflash4-cache3072-batch2048-8k-answer.json) | 8192 / 80 | 197.07 | 2.57 | 298 / 2 | incorrect |
| candidate: [fixed-dflash4-cache3072-batch2048-8k-bos.json](fixed-dflash4-cache3072-batch2048-8k-bos.json) | 8192 / 80 | 187.95 | 2.56 | 298 / 2 | correct |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 3072, "draft_max": 4, "draft_kv": "q8_0"}.

**Limits:** Metadata repair alone did not repair quantized-KV feature injection. No speedup is claimed; poor acceptance is retained as failure evidence.

**Evidence:** [Laguna-S-2.1-DFlash-Q8_0-swa512.gguf.metadata-repair.json](/E:/poolside/models/Laguna-S-2.1-DFlash-Q8_0-swa512.gguf.metadata-repair.json), [fixed-dflash4-cache3072-batch2048-8k-answer.json](fixed-dflash4-cache3072-batch2048-8k-answer.json), [fixed-dflash4-cache3072-batch2048-8k-bos.json](fixed-dflash4-cache3072-batch2048-8k-bos.json).

### early-pinning-cache5120: Pinned expert RAM and5120MiB cache

**Status:** retained. **Mechanism:** Register 41.91 GiB of expert RAM and enlarge cache 3072 to 5120 MiB; use batch 2048 and explicit BOS without drafting.

**Result:** 257.05 tok/s prefill / 10.22 generation; all three codes correct. Pinning and a larger cache persisted in later mechanics.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [nodraft-cache5120-pinned-batch2048-8k-bos.json](nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 257.05 | 10.22 | unrecorded / unrecorded | correct |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 5120, "pin_experts": true}.

**Limits:** BOS, cache, pinning, and prior code differed together. The benefit of pinning is not isolated. 5120 MiB is a historical budget, not the latest decode budget.

**Evidence:** [nodraft-cache5120-pinned-batch2048-8k-bos.json](nodraft-cache5120-pinned-batch2048-8k-bos.json), [pinned-cache5120-20261010-184227.stderr.log](/E:/poolside/logs/pinned-cache5120-20261010-184227.stderr.log).

### early-adaptive-cache: Initial adaptive cache admission

**Status:** retained. **Mechanism:** Cap old prefill history, decay heat by 0.97 per evaluated token, and permit one promotion per layer call.

**Result:** 257.88 / 9.04 tok/s versus the preceding 257.05 / 10.22. Codes were correct. Adaptive history persisted; admission subsequently changed.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 257.88 | 9.04 | unrecorded / unrecorded | correct |
| historical control: [nodraft-cache5120-pinned-batch2048-8k-bos.json](nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 257.05 | 10.22 | unrecorded / unrecorded | correct |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 5120, "pin_experts": true, "adaptive": true}.

**Limits:** This initial admission regression does not establish a regression in the current budgeted policy. Output tokens and expert work differ.

**Evidence:** [adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json), [adaptive-cache5120-20261010-184440.stderr.log](/E:/poolside/logs/adaptive-cache5120-20261010-184440.stderr.log).

### early-overlap: Initial compute/upload overlap

**Status:** retained. **Mechanism:** Queue cache/GPU work while CPU expert misses compute.

**Result:** 256.16 / 9.61 tok/s versus preceding adaptive 257.88 / 9.04. Codes and output token hashes match the adaptive control.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 256.16 | 9.61 | unrecorded / unrecorded | correct |
| historical control: [adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 257.88 | 9.04 | unrecorded / unrecorded | correct |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 5120, "pin_experts": true, "adaptive": true}.

**Limits:** Single sequential runs do not prove repeatability. The current overlap mechanism evolved further; no isolated sustained gain is established.

**Evidence:** [overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json).

### early-submit: Explicit Windows stream submission

**Status:** retained. **Mechanism:** Explicitly submit Windows CUDA transfer/compute queues before waiting.

**Result:** 242.12 / 10.63 tok/s versus preceding overlap 256.16 / 9.61. Codes and output token hashes match. Entry-event wait declined in the profile, while prefill regressed. Current code retains submit_stream.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [submitted-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](submitted-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 242.12 | 10.63 | unrecorded / unrecorded | correct |
| historical control: [overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 256.16 | 9.61 | unrecorded / unrecorded | correct |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 5120, "pin_experts": true, "adaptive": true}.

**Limits:** Single sequential runs; CPU/GPU intervals overlap and must not be summed.

**Evidence:** [submitted-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](submitted-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json), [submitted-cache5120-20261010-185327.stderr.log](/E:/poolside/logs/submitted-cache5120-20261010-185327.stderr.log).

### early-core-streaming: Bounded core streaming and grouped AVX2

**Status:** retained. **Mechanism:** Bound GPU tiles to 4096 selections; use two 32-expert transfer banks, reuse admissions, group IQ CPU work across up to four tokens, and repair Hadamard draft KV injection.

**Result:** The compiled checkpoint initially stopped before inference. Subsequent no-draft 8064-prompt runs measured 464.63 / 9.44 and 499.06 / 9.56 tok/s after Strata stopped. Codes were correct.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-nodraft-cache8192-pinned-batch8192.json](core8k-nodraft-cache8192-pinned-batch8192.json) | 8064 / 80 | 464.63 | 9.44 | unrecorded / unrecorded | correct |
| candidate: [core8k-nodraft-cache8192-strata-stopped-repeat.json](core8k-nodraft-cache8192-strata-stopped-repeat.json) | 8064 / 80 | 499.06 | 9.56 | unrecorded / unrecorded | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 0, "draft_kv": "q8_0", "expert_cache_base_mib": 8192, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 1, "profile": true, "cache_prompt": false}.

**Limits:** Batch, context, cache, and kernels changed together; gains cannot be attributed individually. Output tokens differ. Shared GPU memory counters alone do not prove paging.

**Evidence:** [core-streaming-deployment.json](core-streaming-deployment.json), [checkpoint-core-streaming.json](checkpoint-core-streaming.json), [core8k-nodraft-cache8192-pinned-batch8192.json](core8k-nodraft-cache8192-pinned-batch8192.json), [core8k-nodraft-cache8192-strata-stopped-repeat.json](core8k-nodraft-cache8192-strata-stopped-repeat.json).

**Direct log evidence:** [core8k-nodraft-20261010-225936.stderr.log](/E:/poolside/logs/core8k-nodraft-20261010-225936.stderr.log).

### early-dflash-working-batch: DFlash512working batch plus corrected injection

**Status:** retained. **Mechanism:** Cap draft working batch at 512 independently of the target 8192 batch, alongside the corrected Hadamard quantized-KV feature injection.

**Result:** 422.24 / 11.22 tok/s; 55/96 draft tokens accepted (57.29%), versus the earlier broken injection's 2/298. All codes were correct.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-dflash4-q8-cache6144-pinned-batch8192.json](core8k-dflash4-q8-cache6144-pinned-batch8192.json) | 8064 / 80 | 422.24 | 11.22 | 96 / 55 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 1, "profile": "native profile enabled", "cache_prompt": false}.

**Limits:** Recovery followed multiple changes and context reduction; this is not an isolated working-batch gain. Q8 draft KV works after correcting feature transformation; the essay's F16-only recommendation is not established.

**Evidence:** [dflash-working-batch-deployment.json](dflash-working-batch-deployment.json), [core8k-dflash4-launch.json](core8k-dflash4-launch.json), [core8k-dflash4-q8-cache6144-pinned-batch8192.json](core8k-dflash4-q8-cache6144-pinned-batch8192.json), [checkpoint-core-streaming.json](checkpoint-core-streaming.json).

**Direct log evidence:** [core8k-dflash4-q8-20261010-230719.stderr.log](/E:/poolside/logs/core8k-dflash4-q8-20261010-230719.stderr.log).

### early-decode-upload-budget: Throttle decode cache refresh

**Status:** retained. **Mechanism:** Compute ordinary misses on CPU and refresh at most one expert per layer after 16 evaluated tokens.

**Result:** 445.91 / 11.35 tok/s; 52/102 draft tokens accepted, correct codes. The 16-token refresh fallback remains; later budgeted admission overlaps further refreshes.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-budgeted-dflash4-q8-cache6144-nsys.json](core8k-budgeted-dflash4-q8-cache6144-nsys.json) | 8064 / 80 | 445.91 | 11.35 | 102 / 52 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": "Nsight/profilerlaunch; overheadexpected", "cache_prompt": false}.

**Limits:** The receipt's nsys label does not prove a completed trace. Native Nsight failed because the ETW ReflexStatsTraceLoggingProvider required administrator privileges; an earlier launcher could not resolve the pwsh alias. No usable CUDA trace is established.

**Evidence:** [decode-upload-budget-deployment.json](decode-upload-budget-deployment.json), [core8k-budgeted-dflash4-launch.json](core8k-budgeted-dflash4-launch.json), [core8k-budgeted-dflash4-q8-cache6144-nsys.json](core8k-budgeted-dflash4-q8-cache6144-nsys.json).

**Direct log evidence:** [core8k-budgeted-native-20261010-231807.profiler.log](/E:/poolside/logs/core8k-budgeted-native-20261010-231807.profiler.log).

### early-recency-submit: Prefill recency and Windows stream submit

**Status:** retained. **Mechanism:** Apply per-token decay to prefill cache history and explicitly submit transfer/compute work on Windows.

**Result:** 463.56 / 13.77 tok/s; 54/96 drafts accepted, all codes. Current source includes prefill recency/decay and stream submission.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-recency-submit-dflash4-q8-cache6144.json](core8k-recency-submit-dflash4-q8-cache6144.json) | 8064 / 80 | 463.56 | 13.77 | 96 / 54 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** The previous budgeted receipt used a profiler launcher. Multiple mechanisms changed, preventing a causal comparison.

**Evidence:** [recency-and-submit-deployment.json](recency-and-submit-deployment.json), [core8k-recency-submit-launch.json](core8k-recency-submit-launch.json), [core8k-recency-submit-dflash4-q8-cache6144.json](core8k-recency-submit-dflash4-q8-cache6144.json).

### early-bulk-prefill: Bulk prefill atlas

**Status:** retained. **Mechanism:** Stage a complete eligible layer atlas, upload the next layer, use four gather banks, and remove unhelpful GPU span capture.

**Result:** 506.34 / 13.18 tok/s; 53/100 drafts accepted, correct codes. Current bulk paths retain atlas and fallback streaming mechanisms.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-bulk-prefill-dflash4-q8-cache6144.json](core8k-bulk-prefill-dflash4-q8-cache6144.json) | 8064 / 80 | 506.34 | 13.18 | 100 / 53 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** Source and output tokens differ from the recency run. Generation did not improve in this single measurement.

**Evidence:** [bulk-prefill-deployment.json](bulk-prefill-deployment.json), [bulk-prefill-launch.json](bulk-prefill-launch.json), [core8k-bulk-prefill-dflash4-q8-cache6144.json](core8k-bulk-prefill-dflash4-q8-cache6144.json).

### early-dual-layer-prefill: Two alternating full-layer buffers

**Status:** retained. **Mechanism:** Use two alternating layer atlases with direct matrix reads and a VRAM check; restore standard singleton CPU dots.

**Result:** Initial result: 190.19 / 14.11 tok/s, 55/92 drafts accepted, all codes. Prefill copied 42791.48 MiB; copy interval 13470.54 ms and readback wait 25400.97 ms. Later phase memory addressed headroom; the two-atlas mechanism remains.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-dual-layer-prefill-dflash4-q8-cache6144.json](core8k-dual-layer-prefill-dflash4-q8-cache6144.json) | 8064 / 80 | 190.19 | 14.11 | 92 / 55 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** The poor initial prefill result is preserved. Later success does not prove an isolated two-buffer benefit. Profiling intervals overlap.

**Evidence:** [dual-layer-prefill-deployment.json](dual-layer-prefill-deployment.json), [dual-layer-prefill-launch.json](dual-layer-prefill-launch.json), [core8k-dual-layer-prefill-dflash4-q8-cache6144.json](core8k-dual-layer-prefill-dflash4-q8-cache6144.json), [phase-memory-deployment.json](phase-memory-deployment.json).

### early-phase-memory: Separate prefill/decode memory budgets

**Status:** retained. **Mechanism:** Release oversized graph buffers, shrink expert cache during prefill, free layer atlases, then grow/populate the decode cache.

**Result:** 361.55 / 14.82 tok/s; 55/92 drafts accepted. Native log: prefill cache 5120 MiB; decode cache 8192 MiB; 3137.11 MiB of hot experts uploaded during an 829.71 ms transition. Codes were correct.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-phase-memory-dflash4-q8-cache6144.json](core8k-phase-memory-dflash4-q8-cache6144.json) | 8064 / 80 | 361.55 | 14.82 | 92 / 55 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** The preceding dual-layer run was 190.19 / 14.11, but binaries and memory state changed. The phase budgets are retained; these are historical rates.

**Evidence:** [phase-memory-deployment.json](phase-memory-deployment.json), [phase-memory-launch.json](phase-memory-launch.json), [core8k-phase-memory-dflash4-q8-cache6144.json](core8k-phase-memory-dflash4-q8-cache6144.json).

**Direct log evidence:** [core8k-phase-memory-20261011-001937.stderr.log](/E:/poolside/logs/core8k-phase-memory-20261011-001937.stderr.log).

### early-compact-expert-tiles: Bound MMQ grids to actual expert groups

**Status:** retained. **Mechanism:** Bound MMQ tile grids by the actual expert range and largest group; use dense MMQ for one expert.

**Result:** 515.30 / 14.46 tok/s; warm repeat 514.89 / 12.08. Draft counts were 96/54 versus 100/53. Codes were correct. The production checkpoint's mmq.cu hash 46671A59108D629361A4597D6B416316AF8A218BF78578699DF28E5A5DC9B5BA establishes retention.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-compact-expert-tiles-dflash4-q8-cache6144.json](core8k-compact-expert-tiles-dflash4-q8-cache6144.json) | 8064 / 80 | 515.30 | 14.46 | 96 / 54 | correct |
| candidate: [core8k-compact-expert-tiles-warm-repeat.json](core8k-compact-expert-tiles-warm-repeat.json) | 8064 / 80 | 514.89 | 12.08 | 100 / 53 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** Generation varied substantially and output tokens differ; 14.46 tok/s is not a demonstrated repeatable gain.

**Evidence:** [compact-expert-tiles-deployment.json](compact-expert-tiles-deployment.json), [compact-expert-tiles-launch.json](compact-expert-tiles-launch.json), [core8k-compact-expert-tiles-dflash4-q8-cache6144.json](core8k-compact-expert-tiles-dflash4-q8-cache6144.json), [core8k-compact-expert-tiles-warm-repeat.json](core8k-compact-expert-tiles-warm-repeat.json).

### early-one-readback-wait: Replace entry host-event wait

**Status:** rejected. **Mechanism:** Replace the entry host-event wait with a CUDA stream dependency before mandatory metadata readback; measure host dispatch.

**Result:** 493.98 / 12.05 tok/s; 54/96 drafts accepted, correct codes. The later fused-bulk deployment explicitly restored the measured host-event wait.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-one-readback-wait-dflash4-q8-cache6144.json](core8k-one-readback-wait-dflash4-q8-cache6144.json) | 8064 / 80 | 493.98 | 12.05 | 96 / 54 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** No isolated matched control. Previous compact runs were 515.30 / 14.46 and 514.89 / 12.08. Dispatch instrumentation may remain independently of the rejected wait change.

**Evidence:** [one-readback-wait-deployment.json](one-readback-wait-deployment.json), [one-readback-wait-launch.json](one-readback-wait-launch.json), [core8k-one-readback-wait-dflash4-q8-cache6144.json](core8k-one-readback-wait-dflash4-q8-cache6144.json), [fused-bulk-gate-up-deployment.json](fused-bulk-gate-up-deployment.json).

### early-fused-bulk-gate-up: Fuse GPU prefill gate/up projections

**Status:** retained. **Mechanism:** Interleave gate/up uploads without enlarging the atlas, fuse prefill MMQ, reuse input scratch, and restore the host-event wait.

**Result:** 511.11 / 12.07 tok/s; 55/96 drafts accepted, correct codes. Current source retains bulk_fused.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-fused-bulk-gate-up-dflash4-q8-cache6144.json](core8k-fused-bulk-gate-up-dflash4-q8-cache6144.json) | 8064 / 80 | 511.11 | 12.07 | 96 / 55 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** Changes were combined; this measurement does not isolate fused GPU benefit or the wait restoration.

**Evidence:** [fused-bulk-gate-up-deployment.json](fused-bulk-gate-up-deployment.json), [fused-bulk-gate-up-launch.json](fused-bulk-gate-up-launch.json), [core8k-fused-bulk-gate-up-dflash4-q8-cache6144.json](core8k-fused-bulk-gate-up-dflash4-q8-cache6144.json).

### early-compact-decode-slots: Compact GPU decode selections

**Status:** rejected. **Mechanism:** Pack cached GPU selections within each token while preserving CPU misses and routing weights.

**Result:** 511.02 / 11.67 and warm 538.10 / 11.98 tok/s. Draft counts: 96/54 versus 100/53. GPU padding fell 67.7% and cached intervals fell 23%, but throughput did not improve. The candidate was archived; the checkpoint explicitly says retained=false.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-compact-decode-slots-dflash4-q8-cache6144.json](core8k-compact-decode-slots-dflash4-q8-cache6144.json) | 8064 / 80 | 511.02 | 11.67 | 96 / 54 | correct |
| candidate: [core8k-compact-decode-slots-warm-repeat.json](core8k-compact-decode-slots-warm-repeat.json) | 8064 / 80 | 538.10 | 11.98 | 100 / 53 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** Warm/cold clocks and output tokens differ. A smaller GPU subinterval does not establish faster generation.

**Evidence:** [compact-decode-slots-deployment.json](compact-decode-slots-deployment.json), [compact-decode-slots-launch.json](compact-decode-slots-launch.json), [core8k-compact-decode-slots-dflash4-q8-cache6144.json](core8k-compact-decode-slots-dflash4-q8-cache6144.json), [core8k-compact-decode-slots-warm-repeat.json](core8k-compact-decode-slots-warm-repeat.json), [core8k-cache-decision-evidence.json](core8k-cache-decision-evidence.json), [checkpoint-core8k-production-baseline.json](checkpoint-core8k-production-baseline.json).

### early-production-baseline: Restore production cache/decode baseline

**Status:** retained. **Mechanism:** Remove compact decode/cost-aware admission candidates; keep diagnostics optional and disable them during the production run.

**Result:** 509.66 / 12.22 tok/s; 55/96 drafts accepted, all codes. The checkpoint records source/binary hashes and then-healthy API. Explicit compact decode, cost-aware admission, and power-policy rejections were preserved.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-production-baseline-dflash4-q8-cache6144.json](core8k-production-baseline-dflash4-q8-cache6144.json) | 8064 / 80 | 509.66 | 12.22 | 96 / 55 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": false, "cache_prompt": false}.

**Limits:** This is a historical baseline, not live performance. Outputs differ from candidates. Shared-memory 43770 MiB included 42912 MiB of registered experts; this does not prove paging.

**Evidence:** [production-baseline-deployment.json](production-baseline-deployment.json), [production-baseline-launch.json](production-baseline-launch.json), [core8k-production-baseline-dflash4-q8-cache6144.json](core8k-production-baseline-dflash4-q8-cache6144.json), [checkpoint-core8k-production-baseline.json](checkpoint-core8k-production-baseline.json).

### early-dflash-window-injection: Trim obsolete DFlash prefill feature injection

**Status:** retained. **Mechanism:** Fuse and inject only target features still visible to the all-SWA draft's 512-token window, using the proper model window accessor.

**Result:** 705.72 / 11.51 tok/s; 53/100 drafts accepted, correct codes. Native log injected 512 rows and skipped 7548 obsolete rows, taking 506.07 ms.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-dflash-window-injection-production-dflash4-q8-cache6144.json](core8k-dflash-window-injection-production-dflash4-q8-cache6144.json) | 8064 / 80 | 705.72 | 11.51 | 100 / 53 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": false, "cache_prompt": false}.

**Limits:** Historical baseline was 509.66 / 12.22 with other intervening changes. There is no isolated on/off control. The all-SWA guard is essential; not every model permits this trim.

**Evidence:** [dflash-window-injection-deployment.json](dflash-window-injection-deployment.json), [dflash-window-injection-production-launch.json](dflash-window-injection-production-launch.json), [core8k-dflash-window-injection-production-dflash4-q8-cache6144.json](core8k-dflash-window-injection-production-dflash4-q8-cache6144.json).

**Direct log evidence:** [core8k-dflash-window-injection-production-20261011-032952.stderr.log](/E:/poolside/logs/core8k-dflash-window-injection-production-20261011-032952.stderr.log).

### early-dflash-window-chunks: Preserve original draft injection chunk alignment

**Status:** retained. **Mechanism:** Trim the draft window while preserving original 512-row chunk boundaries and matrix shapes.

**Result:** 718.13 / 11.58 tok/s; 53/100 drafts accepted, all codes. Actual output tokens match the preceding window-injection production run.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-dflash-window-chunks-profile-dflash4-q8-cache6144.json](core8k-dflash-window-chunks-profile-dflash4-q8-cache6144.json) | 8064 / 80 | 718.13 | 11.58 | 100 / 53 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false, "verbosity": 5}.

**Limits:** Profiling, verbosity, and binaries differ from the preceding 705.72 / 11.51 run. Do not claim speedup from this one cross-profile comparison.

**Evidence:** [dflash-window-chunks-deployment.json](dflash-window-chunks-deployment.json), [dflash-window-chunks-profile-launch.json](dflash-window-chunks-profile-launch.json), [core8k-dflash-window-chunks-profile-dflash4-q8-cache6144.json](core8k-dflash-window-chunks-profile-dflash4-q8-cache6144.json).

### Evidence gaps

- The owner's original 130278-token request and output token IDs were not found.
- No direct ro99 execution or controlled same-prompt Niko/Laguna comparison was found.
- Initial short 512-batch launch profiling state is unverified.
- The failed trace is not usable Nsight evidence.
- Single executions with changing outputs and draft acceptance cannot establish a repeatable speedup.

This record retains initial failures alongside successful mechanisms. None of the 130k results establishes current-engine near-full 128k performance.

## Stage 2: attention, CPU execution, result handoff and diagnostics

This section documents existing Floatie evidence only. The performance work remains paused. The target remains Laguna S 2.1 Q3 through the local API at **900 tok/s prefill and 30 tok/s generation**, with **8k first** and near-full 128k afterward. These targets and full API coverage are unfinished.

All 42 inference receipts covered here used the saved **8,064-token prompt**, requested and produced **80 output tokens**, disabled prompt caching and recalled `COBALT-17`, `MAPLE-42`, and `VIOLET-89` in order. The configured context was 8,192, batch 8,192, base expert cache 6,144 MiB, DFlash maximum 4, draft KV `q8_0`, pinned/adaptive experts and zero GPU misses per token. Exact launch evidence and raw numeric timings are in [middle.json](documentation-drafts/middle.json); the primary receipts remain authoritative. Profiling and other flags differ between experiments as noted.

A throughput pair below means **prefill / generation tok/s**. A higher single-run rate is not automatically an optimization gain. Most controls differ in output tokens, draft acceptance, GPU clocks, placement, or cache trajectories. CPU and GPU intervals overlap and must not be summed. Checkpoint recall verifies this prompt only.

#### Retained improvements

| Mechanism | Control to candidate | Evidence and practical result |
|---|---:|---|
| Mapped prefill routing metadata | 509.66 / 12.22 to 596.44 / 12.04, profiling off | [Comparison](mapped-metadata-comparison.json): prefill +17.03% observed; copy/expert overlap 81.824 to 1986.336 ms. Generation gain not demonstrated. Existing pinned arrays, no extra weight mirror; ordinary-copy fallback remains. |
| Prefill sliding-window mask lower bounds | 596.44 / 12.04 to 674.28 / 12.51, profiling off | [Comparison](mask-lower-bound-comparison.json): target SWA attention in profiled timeline 2042.002 to 412.767 ms. Exact masked tiles skipped, original windows/weights preserved. |
| Mapped CPU result handoff with bounded completion poll | 737.23 / 11.83 to 719.20 / 13.08, profile + DebugGpu | [Same-binary comparison](cpu-doorbell-comparison.json): identical actual output arrays and draft 100/53; generation +10.56% observed. Poll capped at 10 ms/block with fallback launch. [Default enabled](cpu-doorbell-default-deployment.json). |
| Contiguous causal/SWA mask range fill | 720.57 / 14.19 to 754.45 / 13.69, profiling on | [Comparison](contiguous-mask-comparison.json): CPU fill 536.233 to 27.114 ms (94.94% less); normal sequential follow-up 718.08 / 14.03 to 775.16 / 14.49. Change applies to prefill only. |
| Small-batch stream-K decode mask bounds | 779.30 / 13.79 to 755.09 / 14.63, profiling on | [Same-binary comparison](decode-bounds-comparison.json): attention 607.97 to 222.12 ms at equal 752 layer calls / 76 target evaluations per layer. Actual outputs differ, drafts 100/53 to 97/53. [Default enabled](decode-bounds-default-deployment.json). |

Retention is supported by default deployment receipts, the source overlay, and [the restored span checkpoint](checkpoint-core8k-span-evaluation.json), rather than being inferred solely from a faster run. Normal sequential runs include other changes and varying acceptance: CPU doorbell's normal 674.28 / 12.51 to 718.08 / 14.03 also includes DFlash window trimming; decode bounds' normal 775.16 / 14.49 to 749.28 / 14.60 uses a new CUDA binary. No isolated end-to-end effect is claimed from those bundles.

The contiguous-mask path checks single-sequence contiguous positions and empty padding; other layouts keep generic fill. The SWA allocator already supports compact sizing `min(base cells, window + ubatch)`, padded to 256 unless `swa_full` is enabled. That does not prove a future 128k allocation or speed.

#### Rejected or superseded candidates

| Attempt | Candidate / control, prefill and generation | Decision and rollback evidence |
|---|---|---|
| Initial GPU-only graph spans | 468.07 / 13.72; debug 482.45 / 13.71; no matched control | Repeated graph warmup resets in the debug log; useful replay not established. Superseded by the later controlled section-graph candidate. Whole graphs with CPU dispatch/readback remain unsupported. |
| Custom singleton IQ dot path | 503.31 / 12.57; no isolated control | Slower singleton path explicitly restored in [dual-layer deployment](dual-layer-prefill-deployment.json); grouped custom kernels remain for counts 2-4. |
| One readback wait via stream dependency | 493.98 / 12.05; no matched control | Entry wait reports zero but decode readback wait 1621.64 ms. [Fused-bulk deployment](fused-bulk-gate-up-deployment.json) explicitly restores the measured host event wait. |
| Mapped input publication | On 750.90 / 15.04; off 773.78 / 14.28 | Equal call counts: combined entry/readback wait 1175.48 vs 1171.74 ms; different output/draft acceptance 88/57 vs 93/54. No isolated gain; [comparison](input-publication-comparison.json), [restored source/binary](input-publication-revert.json). |
| Scoped caller affinity to reserved core | On 762.33 / 15.35; off 778.58 / 15.58 | All enabled boundary samples on reserved core, but CPU fused 1707.52 vs 1595.58 ms. Different outputs/acceptance; [comparison](caller-affinity-comparison.json), [rollback](caller-affinity-rollback.json). Corrected placement diagnostics retained. |
| GPU-only section graphs, profiling on | On 763.89 / 15.07; off 779.10 / 15.57 | Dispatches 23,776 to 5,944 (75% fewer), outside-hybrid host time 401.45 to 250.11 ms; no total gain. [Profile comparison](hybrid-span-graphs-profile-comparison.json). |
| Same section graphs, profiling off | On 778.30 / 15.67; off 779.18 / 16.07 | No useful throughput gain; different outputs/acceptance. [Production comparison](hybrid-span-graphs-production-comparison.json), [rollback](hybrid-span-graphs-rollback.json). |
| Paired IQ2 gate/up, initial version | On 752.03 / 15.64; off 780.07 / 16.94 | Assembly spilled accumulators/scales and did not reliably share activation loads; gate/up 1032.74 vs 929.85 ms. [Comparison](paired-gate-up-initial-comparison.json). |
| Paired IQ2 gate/up, register rewrite | On 754.83 / 14.45; off 779.52 / 15.57 | Register reuse corrected (YMM8/10 activation sign work, YMM11/12 accumulators), but no gain; gate/up 1025.68 vs 1005.28 ms. [Comparison](paired-gate-up-registers-comparison.json), [both variants restored](paired-gate-up-rollback.json). |
| Expanded exact IQ2 CPU weight mirror, 144 bytes/block | On 742.72 / 13.13; off 783.67 / 16.85 | +38.8125 GiB RAM, 92 tensors, startup preparation 17,797.24 ms. CPU fused 2191.80 vs 1685.29 ms; scheduled payload 71,190.84 vs 50,577.87 MiB. [Comparison](iq2-weight-cache-comparison.json), [six-file and binary rollback](iq2-weight-cache-rollback.json). This is distinct from later lossless R4 packing. |

The section-graph candidate first failed to link because Windows does not export internal `ggml_graph_view`. It was changed to a local graph slice preserving dependency counts, compiled, and then measured. [Failed-build receipt](hybrid-span-graphs-first-build-failed.json) records exit -1; there is no throughput measurement for that failed build. Source variants and assembly listings remain archived under `performance/candidates`.

Section graph attention timing omitted captured/replayed work. The apparent 48.1 vs 216.09 ms attention counter in its profile comparison is incomplete coverage, **not a faster attention result**. Paired-kernel and expanded-cache output arrays and acceptance differed; the observed throughput regressions are sufficient to reject an unhelpful candidate but do not isolate instruction, memory bandwidth, or caller placement effects. Scheduled weight bytes describe payload, not measured DRAM traffic. No standalone numerical equivalence suite was authored.

#### Measurements that changed the next action

| Diagnostic | Observation | Conclusion and artifact |
|---|---|---|
| Nsight Systems attempt / internal events | Windows tracing provider required administrator privileges; no Nsight trace produced. Internal run 430.49 / 12.10. | Used optional internal events and CPU counters instead. [Deployment](internal-timings-deployment.json). |
| Prefill transfer timeline | Span 11,546.474 ms; weight copy union 6,768.128 ms; expert union 4,070.433 ms; overlap only 81.824 ms. | Found serialization in the prefill pipeline; led to mapped metadata. [Analysis](core8k-transfer-timeline-analysis.json). Detailed timeline source archived, normal state restored. |
| Attention timeline | Full attention 369.218 ms (12 calls); SWA 2042.002 ms (36 calls); total 2411.220 ms. | Led to exact SWA tile lower bounds. [Analysis](core8k-attention-timeline-analysis.json). Includes queue gaps/KV conversion, excludes draft injection. |
| CPU mask timing | Two mask fills 268.059 + 268.174 = 536.233 ms. | Led to contiguous range fill. [Deployment](mask-timing-deployment.json), archived timing source. |
| GPU waiting for CPU experts | First 16 batches: CPU fused 1672.09 ms, GPU CPU wait 1001.18 ms, cached GPU 668.57 ms, readback 1343.38 ms. | Led to mapped CPU completion. [Analysis](core8k-cpu-wait-analysis.json). Draft rounds total 359.409 ms, 5.32% of generation; first-16 target counters do not cover all 25 rounds. |
| Host launch and between-MoE spans | 752 nodes / 76 target evaluations per layer: host inside hybrid 3201.74 ms, outside 433.18 ms; attention 609.37 ms, CPU 1695.32 ms. | Directed decode bounds and graph sections. [Analysis](launch-span-profile-analysis.json). Outside time includes bookkeeping/fusion, not just kernel launches. |
| Caller first sampler | 15 worker affinity successes, 0 failures; physical-core counters missed logical siblings. | Primary-mask contention interpretation invalid; preserved [correction](caller-placement-primary-sampler-analysis.json). |
| Corrected sibling sampler | 924/1504 boundary samples on worker physical cores, 580 on reserved core (61.44% worker); workers pinned successfully. | Led to scoped affinity attempt, not a time-weighted contention finding. [Analysis](caller-sibling-sampling-analysis.json). |
| Worker phase drain | Phase wall 1697.30 ms; active drain span 1692.84 ms; only 4.46 ms (0.263%) outside active drain. | Wakeup/phase boundary cost too small to be primary target in this run. [Analysis](phase-drain-profile-analysis.json). Temporary timers removed on paired-kernel rollback. |
| Cache capacity / past routing | 35,720 selections; actual 17,056 hits (47.75%); hindsight fixed 24,606 (68.89%); hindsight global 24,779 (69.37%), budget 8192 MiB. | Unequal capacity adds only about 0.48 percentage points over fixed hindsight. [Evidence](core8k-cache-decision-evidence.json). These are retrospective estimates, never predicted future hits. Normal baseline restores old admission with diagnostic counters disabled. |

Cache slot packing and cost-aware admission are separate attempts documented in their own comparisons; capacity diagnostics do not establish those candidates' retention. Profiled timing changes alone do not represent normal serving speed. Counters distinguish expert jobs, unique groups, target evaluations, drafted tokens and accepted tokens.

#### Power policy and unresolved stability

The [direct GPU clock-lock attempt](gpu-clock-hold-comparison.json) requested 2400-3120 MHz and failed with exit 4: the current user lacked permission. **No clock-held inference comparison ran.** No successful administrator helper is evidenced here.

The temporary [NVAPI per-application maximum-performance policy](laguna-power-profile-change.json) was applied and read back for the exact Laguna server path. Its run measured **523.90 / 12.26 tok/s**; the checkpoint reports decode remained P3 around 900 MHz. No matched paired control establishes a causal policy benefit. The [restoration readback](nvidia-power-profiles-restored.json) again found no server application profile, matching the pre-change absence. The [application-power checkpoint](checkpoint-core8k-application-power.json) explicitly records restoration. A policy preference is not a successful direct clock lock.

The earlier incident where desktop application windows disappeared while the desktop remained visible **remains unexplained**. Prior event-log checks did not identify a cause. These performance receipts and a restored NVIDIA application policy do not prove that incident fixed. This documentation task did not change processes, drivers, clocks or system settings.

#### Evidence gaps and coverage

There is no matched same-binary on/off receipt for the original graph spans, singleton IQ extension, one-readback wait or NVIDIA application policy. Their run rates are retained as observations and rollback/deployment records establish their disposition. A dedicated original-spans rollback receipt was not located; later source and checkpoints establish whole-hybrid capture remains disabled. Historical receipts establish dated results and rollback actions, not present server health or live speed.

The structured companion covers **27 attempts/diagnostics and 42 exact inference labels**, including raw timing fields, output token digests, pairwise output equality, draft/accepted counts, launch receipts, artifacts and evidence limitations. None meets or proves the final 900/30, near-full 128k, or full non-UI API requirements.

## Stage 3: cache policy, research, packed kernels and final diagnostics

Documentation assembled on October 11, 2026 from saved receipts, archived sources, and existing logs. Performance work is paused. This document does not start inference, rebuild, deploy, or establish fresh live state.

### Workload and interpretation

The objective remains Laguna S 2.1 **existing Q3 target**, local API, **900 tokens/sec prefill and 30 tokens/sec generation**, first at 8k and ultimately near a filled 128k context. Those requirements remain unfinished.

Unless a row says otherwise, execution below used the existing [saved request](checkpoint-request-8064.json), 8,064 prompt tokens, 80 generated tokens, no prompt cache, greedy decoding, context 8,192, batch/ubatch 8,192, 6,144 MiB launch cache, 16 CPU MoE threads, DFlash maximum 4, draft KV Q8_0, pinned host experts, adaptive cache, and GPU misses/token 0. The common request SHA-256 is `046c2c8571b339b0763d886fb3937d35e465568a732f29947b40ad3a8ed0363c`. Phase-specific budgets differ from the launch cache setting: the retained engine uses 5,120 MiB prefill and 8,192 MiB decode caches.

All measured checkpoint runs described here recalled `COBALT-17`, `MAPLE-42`, and `VIOLET-89` in order. This is one recall workload, not evidence of general quality or every API feature. Equal output count is distinct from equal actual tokens. CPU and GPU profile intervals overlap and cannot be added as serial latency. Single comparisons do not establish repeatable isolated gains.

### Attempt register

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

### 1. Early cost-aware admission: measured, no established gain, superseded

Mechanism: after a verification batch, predict avoided CPU work from expert heat and admit one expert when that saving exceeds the measured PCIe transfer cost. This was distinct from later admission bounded by actual overlap. It ran with profiling and phase-memory handling enabled; GPU clock holding was not measured.

Candidate: 510.5829459 prefill, 12.0128291 generation, 96 drafts/55 accepted. Earlier baseline: 511.5304638 prefill, 11.6027402 generation, 100/53. The first profile window covered 76 evaluated target rows/layer, 35,720 selections; cache hits rose 17,056 → 17,201, CPU time 1,671.22 → 1,638.23 ms, H2D 670.50 → 803.23 MiB. Cache hit increase was **0.406 percentage points**. Different acceptance and clocks prevent attribution of generation difference to admission.

The [comparison](cost-aware-admission-comparison.json), [deployment](cost-aware-admission-deployment.json), [launch](cost-aware-admission-launch.json), [candidate measurement](core8k-cost-aware-admission-dflash4-q8-cache6144.json), and [archived source](candidates/moe-hybrid-cost-aware-admission.cu) preserve evidence. Current source has the later budgeted policy and a 16-evaluated-token fallback, not this candidate's per-batch cost-aware branch. **Coverage gap:** no dedicated rollback receipt was found; do not invent one.

### 2. Earlier unchanged cache refresh: rejected

Mechanism: queue the existing refresh after GPU reads of cached slots, before waiting for CPU completion, without changing admission volume. Profile and readback span enabled; timeline disabled. Same request and CPU/CUDA binaries.

On: 763.996368 / 15.743417, 96 drafts/54 accepted. Off: 786.981161 / 16.124559, 96/55. Actual outputs differed. Entry event wait fell **227.97 → 171.03 ms**, while fused CPU time rose **1,631.02 → 1,719.01 ms**. Caller placement differed. No overall gain was established; this is not an isolated regression estimate.

Preserved [comparison](refresh-overlap-comparison.json), [deployment](refresh-overlap-deployment.json), [rollback](refresh-overlap-rollback.json), [candidate source](candidates/moe-hybrid-refresh-overlap-rejected.cu), [on](core8k-refresh-overlap-on-dflash4-q8-cache6144.json), and [off](core8k-refresh-overlap-off-dflash4-q8-cache6144.json). Later successful budgeted admission uses earlier queueing **with a different bounded admission mechanism**; rejection of this experiment does not mean active uploads are serialized after CPU work.

### 3. Budgeted cache admission: retained, default enabled

Mechanism: rank cache admissions by heat, bound upload bytes by measured prior CPU/GPU overlap and calibrated H2D bandwidth, and queue them after cached GPU reads but before CPU expert completion. Calibration measured 900 MiB in 141.72 ms, **6.20 GiB/sec**. Preserve every selected expert computation; retain the existing cadence when timing/calibration is unavailable.

Profiled same-binary pair: on **785.877746 / 15.936191**, off **788.041779 / 15.443151**, identical actual output tokens and 100 drafts/54 accepted. The first 752-layer-call window had 35,720 selections and 76 evaluated rows/layer. CPU selections fell **18,633 → 16,517** (11.36%); actual cache hits rose **17,087 → 19,203** (+5.924 percentage points). Fused CPU time **1,666.70 → 1,559.67 ms**. H2D increased **670.50 → 4,716.61 MiB**; 621 budgeted refresh calls uploaded 4,548.98 MiB. GPU refresh interval rose 131.15 → 819.14 ms while CPU-wait interval fell 1,264.23 → 488.16 ms. These overlap; their differences are not additive latency savings.

Profiler-disabled same-binary pair: on **789.849416 / 16.498094**, off **790.075074 / 16.166623**, equal 93 drafts/54 accepted but different actual outputs. Observed generation gains were **3.19% profiled** and **2.05% normal**; these are small single-pair observations, not a guaranteed isolated gain.

Evidence: [profile comparison](budgeted-admission-profile-comparison.json), [normal comparison](budgeted-admission-production-comparison.json), [initial deployment](budgeted-admission-deployment.json), [default-enabled deployment](budgeted-admission-default-deployment.json), and [default production measurement](core8k-budgeted-admission-default-production-dflash4-q8-cache6144.json), which recorded **788.232502 / 16.104240**, 100 drafts/54 accepted. The retained source SHA is `AF3E081FB5C00FA2135AE0858895074F2937D17FB69FAB89D6B70E5271246A5B`.

### 4. Accepted-prefix heat: rejected

Mechanism: reconcile expert cache history with the accepted DFlash prefix rather than accumulating rejected proposed rows as though they were accepted history. Callback logs matched all 47 layers; matching is correctness evidence for that callback workload, not a speedup.

Profiled same-binary/request pair: on **790.489037 / 15.575229**, off **790.299156 / 17.383138**. Output sequences shared 73 tokens but then differed; drafts/accepted were **100/53 versus 88/56**. Both first profile windows had 752 layer calls and 76 evaluated rows/layer. CPU selections fell **0.467%**, CPU wall time **0.032%**. There was no material reduction in actual CPU work. Observed generation difference -10.40% cannot be isolated from acceptance differences.

[Comparison](accepted-heat-comparison.json), [deployment](accepted-heat-deployment.json), [rollback](accepted-heat-rollback.json), [candidate source archive](candidates/rejected-accepted-heat-sources/ggml/src/ggml-cuda/moe-hybrid.cu). Six original sources and the complete 12-file binary set were restored; retained budgeted admission remained enabled.

### 5. Wider prefill atlases: initial guarded run, then exercised and rejected

First revision enlarged atlases to include layers 46/47, but the memory guard selected the old **900 MiB / 45-of-47-layer** configuration. It recorded **748.589919 / 15.047678**, 100 drafts/53 accepted. [Guard observation](wide-bulk-guard-observation.json) explicitly says `wide_path_exercised=false`; this cannot support a performance conclusion about wider atlases. Preserve the [first deployment](wide-bulk-deployment.json), [measurement](core8k-wide-bulk-on-dflash4-q8-cache6144.json), and [guard-only source](candidates/moe-hybrid-wide-bulk-guard-only.cu).

Second revision computed cache reclaim before allocation, using **1,290 MiB atlases, 47/47 eligible layers, and 128 MiB lower prefill cache budget**. Profiled same-binary/request pair had identical actual outputs and 100 drafts/53 accepted. On **761.563339 / 15.185409**; off **778.619104 / 15.681026** with the old 900 MiB/45-layer path. Observed differences: prefill -2.19%, generation -3.16%; no established gain. Post-inference GPU snapshots reflected idle clocks and do not establish peak memory or active performance.

[Reclaim deployment](wide-bulk-reclaim-deployment.json), [comparison](wide-bulk-comparison.json), [rollback](wide-bulk-rollback.json), and [rejected source](candidates/moe-hybrid-wide-bulk-reclaim-rejected.cu). The original source and all 12 baseline binary hashes were restored. Budgeted admission remained retained.

### 6. Decode cache fit: unmeasured pause, then controlled measurement and rejection

Mechanism: release no-longer-needed prefill allocations and fit decode expert capacity to currently free VRAM while preserving a 768 MiB reserve. Default-off `GGML_CUDA_MOE_DECODE_CACHE_FIT` candidate built successfully. The owner requested a pause before execution. Source and complete binary set were archived, original baseline restored, and no inference executed during that pause: [deployment](decode-cache-fit-deployment.json), [pause restore](pause-decode-cache-fit-restore.json), [pause checkpoint](checkpoint-paused-20261011.json), and [then-unmeasured source archive](candidates/moe-hybrid-decode-cache-fit-unmeasured.cu). Its filename denotes that historical phase, not its later status.

During authorized research resumption, the archived candidate was restored without a rebuild: [resumption receipt](research-resume-cache-fit-deployment.json). Profiled same-binary/request comparison had identical actual output tokens, 80 output length and 96 drafts/54 accepted. Candidate **720.319578 / 16.068839** versus control **779.078195 / 16.148769**. Candidate cache was **9,251 MiB** versus **8,192 MiB**; phase hot uploads **4,133.44 versus 3,137.11 MiB** and growth transition **1,124.29 versus 901.13 ms**. CPU selections fell 5.94%, CPU time 5.13%; generation -0.495% and reported prefill -7.54%. Larger capacity reduced CPU work but did not show an overall generation gain on this request.

[Comparison](research-cache-fit-comparison.json), [on measurement](core8k-research-cache-fit-on-dflash4-q8-cache6144.json), [off](core8k-research-cache-fit-off-dflash4-q8-cache6144.json), and [rollback](research-cache-fit-rollback.json). Candidate and original archives remain; original retained engine restored. This is not proof that any cache capacity strategy cannot work.

### 7. Current-build DFlash on/off: retain DFlash4

The same candidate binaries and cache-fit policy were used for a draft-on/off architecture comparison. Draft on **720.319578 / 16.068839**, 96 drafts/54 accepted; draft off **778.409485 / 11.356898**, no speculative counters. Both cold-prefilled 8,064 tokens and generated 80, but actual outputs differed. Removing the draft allowed a **10,449 MiB** cache instead of 9,251 MiB, uploading 5,450.55 MiB hot experts and taking 1,457.68 ms growth. Automatic budgets therefore differ; this is not an equal-cache isolated draft-overhead experiment.

Draft generation was **41.49% faster observed** despite the draft-off cache advantage. Retain DFlash4. [Comparison](research-dflash-on-off-comparison.json) and [no-draft measurement](core8k-research-nodraft-cache-fit-q8-cache6144.json). Do not compare their first 16 target-evaluation windows as equal accepted-output windows. Later baseline restoration also removed cache-fit; this receipt does not describe the final deployed cache.

### 8. Original-layout IQ2 four rows: rejected

Mechanism: compute four output rows with AVX2 while gathering from the original packed row layout. No persistent packed mirror was created; original weight bits were unchanged, floating reduction order changed. Default-off `GGML_CUDA_MOE_IQ2_ROWS4` allowed same-binary on/off comparison.

Profiled on **749.477137 / 14.442876**, off **776.601415 / 15.224527**; both 100 drafts/53 accepted, actual token sequences differed. Candidate first-window gate/up CPU time **1,072.63 ms** versus **929.31 ms** control. Observed generation -5.13%, prefill -3.49%; no gain.

[Deployment](iq2-rows4-deployment.json), [comparison](iq2-rows4-comparison.json), [rollback](iq2-rows4-rollback.json), [rejected source](candidates/rejected-iq2-rows4/moe-iq.cpp). All 24 tracked source hashes and 12 binary hashes were restored. Initial rollback encountered a lock while overwriting an unchanged cublas DLL; retry copied only changed binaries, verified every hash, and stopped no additional application. The initial exact-path server stop's PID was not persisted before that lock error, a recorded provenance limitation.

### 9. Actual lossless IQ2 R4 mirror: separately measured and rejected

Distinct mechanism: losslessly rearrange four 82-byte IQ2_S blocks into a 328-byte R4 block, prepare model-owned CPU mirrors before serving requests, and reuse AVX2/FMA/F16C row computation. A **24 GiB remaining-physical-RAM guard** permitted fallback rather than forcing allocation. Original GGUF/GPU weights and selected experts remained unchanged. The mirror covered **92 tensors**, **23,731,372,032 bytes = 22.1015625 GiB**, prepared in **10,174.11 ms**. Packing startup is separate from request timing.

Numeric audit used local **292-byte Q8_K** named fields; the pinned IK source has a different 300-byte Q8_K structure, so its wrapper was not imported unchanged. Exact sign/scale/row integer mapping was audited. Floating reduction order differs: preservation of quantized weight bits does not prove bit-identical outputs or general-quality equivalence.

Profiled same-binary/request on **754.223356 / 15.572504**, off **783.117524 / 15.356495**. Actual tokens differ; drafts/accepted **96/54 versus 95/53**. First-window CPU gate/up **886.81 versus 938.24 ms**, fused CPU **1,610.49 versus 1,645.29 ms**; CPU misses **16,677 versus 16,347**, demonstrating changed routing/cache history. Observed generation +1.41% did not establish a material gain worth 22.10 GiB. Observed prefill -3.69% does not isolate the candidate's effect; the mirror was unused in bulk prefill.

[Deployment](iq2-r4-deployment.json), [comparison](iq2-r4-comparison.json), [on](core8k-iq2-r4-on-dflash4-q8-cache6144.json), [off](core8k-iq2-r4-off-dflash4-q8-cache6144.json), [rollback](iq2-r4-rollback.json), [rejected source](candidates/rejected-iq2-r4/core-engine/ggml/src/ggml-cpu/moe-iq.cpp), and [packing RAM-release receipt](iq2-r4-off-first-launch-ram-release.json). First off launch refused at 47.9 GiB free shortly after server stop; later read-only observation saw 109.539 GiB free and no inference process. Relaunch used the already-waiting existing probe, without touching desktop applications. All 24 tracked source hashes and 12 binaries were restored; experimental flag removed.

### 10. Prefill readiness: diagnostic ruled out the proposed split

Hypothesis: splitting activation readiness from weight readiness might let expert computation begin while a full-layer upload remains in progress. Existing timeline instrumentation was used on the unchanged retained source, with profiling/readback/timeline enabled. [Measurement](core8k-prefill-readiness-timeline-dflash4-q8-cache6144.json) recorded **779.154675 / 15.424767**, 93 drafts/54 accepted, not a production speed claim.

[Timeline analysis](prefill-readiness-timeline-analysis.json) covers the first **8,060 prompt tokens, bulk layers 1–45**. Every bulk upload completed before routing readiness: **zero** layers late, minimum slack **53.257 ms**, maximum **513.899 ms**. Copy union **6,393.907 ms**, expert union **4,027.643 ms**, overlap **3,272.811 ms**. Existing two-bank overlap is demonstrably working in that covered span. Splitting readiness/full activation scratch would hide no observed wait there, so it was not implemented. Layers 46/47 use a different streamed path and the remaining 4 prompt tokens are outside this timeline span.

[Launch](prefill-readiness-timeline-launch.json) preserves the raw-log location. Timeline perturbs timing; intervals are overlapping unions, not independent serial components.

### 11. Single-ID GPU metadata template: rejected

Mechanism: use a one-ID specialization for GPU integer index/metadata construction (`template<1>`), preserving the helper's floating operations. The helper change alone does not establish the cause of differing output tokens.

Profiled same-binary/request on **783.263569 / 15.628889**, off **785.517871 / 16.766655**. Actual output tokens differ; draft counts **100/53 versus 96/55**. Recorded whole expert-GPU prefill interval **4,201.82 → 3,393.79 ms**, -19.23%, but copy interval remained **6,777.55 versus 6,775.27 ms**, and prefill -0.287% overall. Whole-expert interval does not isolate the helper runtime. Observed generation -6.79% also cannot be isolated from acceptance changes. No overall gain established.

[Deployment](single-id-deployment.json), [comparison](single-id-comparison.json), [on](core8k-single-id-on-dflash4-q8-cache6144.json), [off](core8k-single-id-off-dflash4-q8-cache6144.json), [rollback](single-id-rollback.json), [rejected source](candidates/rejected-single-id/mmid.cu). Original mmid source, all 24 prior tracked sources and all 12 binaries restored. Experimental flag removed; normal server relaunched with profiling disabled, as recorded rather than freshly checked during documentation.

### 12. Supplied research and pinned kernel sources

The original supplied documents and existing text extractions are now bundled in the [research index](../research/INDEX.md), with source hashes and links to these review records.

This was research reconciliation, not another measured optimization. The original `E:\poolside\research\laguna-research-20261011` reports and added parent-folder documents were inspected. [Original reconciliation](research-20261011-local-reconciliation.json), [added-source reconciliation](research-20261011-added-sources-reconciliation.json), and [document extraction](research-20261011/added-document-extraction.json) preserve document hashes/content evidence. The added DOCX is a shorter version of the optimization Markdown; both PDF versions have identical extracted text despite different file hashes, all six pages were rendered/read, and the added HTML is byte-identical to the dated HTML report. These copies are not independent algorithm evidence.

Reports proposed several mechanisms **already implemented**: per-layer frequency-decay adaptive caching, pinned 41.91 GiB expert RAM, physical-core worker affinity, grouped 2–4-token IQ2/IQ3/IQ4 computation, upload/CPU overlap, compact SWA KV, quantized KV and DFlash Hadamard injection. DFlash is supported for verification batches, not restricted to single-token decode. Q6 grouped fallback remains the established standard per-pair dot path. Corrected Q8 draft GPU weights are about 1,130 MiB, DraftMax4 and batch/ubatch8192, unlike report BF16/width15/ubatch512 premises.

Least-Stale concerns cross-layer eviction in a shared cache; local victims are already restricted to their layer. Its 85–90% hit rates are not verified Laguna hit rates. ExpertFlow predictive caching needs predictor artifacts/training; Mira uses custom INT8 experts rather than the owner's pinned Q3. No ready Laguna backend or authorized additional weight quantization was inferred. Thread/chunk/speculation sweeps and new suites were not adopted because the owner prohibited them.

Corrected model arithmetic is **calculation**, not runtime measurement: 128k global KV F16 payload is 6 GiB; Q8_0 3.1875 GiB, plus padded SWA storage based on window+ubatch (8,704 cells here), about 0.635 GiB Q8_0. Nominal 512-token attention does not imply only 512 allocated SWA cells. FLOP counts divided by shader TFLOPS do not prove flash-attention speed, because local kernels use tensor-core MMA and causal attention changes the square calculation. Worker overhead percentages do not prove weight decoding is memory-bound.

Pinned [IK source receipt](research-20261011/ik-source-audit/source-receipt.json) records commit `89bba35c8841618502b2be8273fb5265b405aca1`, exact file hashes and upstream URLs; [MIT license](research-20261011/ik-source-audit/LICENSE) retained. This informed the two distinct IQ2 attempts above. Older reconciliation labels “R4 unmeasured” accurately describe their own timestamp; **R4 was subsequently measured and rejected**, as its later comparison proves.

### 13. Latest interrupted cache-transition audit

No new optimization, source edit, deployment, build, or benchmark was completed in this last audit before the owner stopped work. The proposed next measurement was to separate allocation, initialization, resident D2D copying, new-capacity H2D copying, and synchronization costs during prefill→decode cache growth.

Existing [resize_cache source](../core-engine/ggml/src/ggml-cuda/moe-hybrid.cu) already retains residents: it ranks existing resident experts by heat, reserves replacement buffers, copies each surviving resident **device to device**, synchronizes, swaps buffers, restores slot mappings, and promotes into remaining capacity. It does **not** re-upload all existing residents from RAM.

[Last saved state](research-20261011-packed-routing-active-state.json) records source-accounting correction: **4,789.4765625 MiB retained D2D**, **3,137.109375 MiB new-capacity H2D**. These exact figures are saved accounting conclusions, not freshly isolated component timings. The existing [single-ID-off launch](single-id-off-launch.json) identifies raw log `E:\poolside\logs\single-id-off-20261011-143959.stderr.log`: at log time `0.32.822.610`, 8,192 MiB phase budget, **3,137.11 MiB** hot uploads and **899.78 ms** transition; its 5,120 MiB prefill transition was 268.38 ms with zero hot uploads. The [readiness launch](prefill-readiness-timeline-launch.json) raw log similarly recorded 899.15 ms growth and 267.55 ms initial transition. These aggregate times do not isolate allocation versus copying/synchronization.

**Coverage gap:** there is no completed standalone allocation/copy/synchronization profile or dedicated interrupted-audit receipt. The next measurement remained a proposal. Do not promote the ~0.9-second transition into a proven removable bottleneck or a measured speedup.

### Last recorded restored state

Latest saved **normal, profiler-disabled** result is [after-R4 production](core8k-after-r4-production-dflash4-q8-cache6144.json): **770.831742 prefill / 15.847660 generation**, 8,064 prompt / 80 output, no cached prompt, 100 drafts/54 accepted, all three checkpoints. Its [launch](after-r4-production-launch.json) records context8192/cache6144/batch8192/MoE16/DFlash4/Q8_0, pinned/adaptive, profile/readback/timeline off.

The later [restored-state receipt](research-20261011-packed-routing-active-state.json), timestamp **2026-10-11 14:46:21 -05:00**, records restored 24-source-plus-mmid and complete 12-binary hashes, healthy normal API, and no profiling. It expressly says **performance was not remeasured after the final restart**. Its `goal_status=active` is historical; the owner subsequently stopped work and the goal was paused. No fresh process/health check or performance run was performed for this documentation task.

Retained CPU hash `F12D74DF8BB2E6EC3296974DD21BD1117B12E062650D5DD69A024EBBD4FA7D4E`; CUDA `465D152C90671D4CF70D9DCFD0B99A5135B7DB7D71691CFADBFEC45B68006EC2`; llama `03AF4A1A15ABEA96C088BDB06622EFDFE905ED853B4855A2A7CBDB5658DCF718`; server `56A839707A3EF9DCA966905221357F71EF4A37DBCF54574CD32F432E4B834A7E`. These are saved restored-state identities, not freshly rehashed E: binaries.

Current-engine near-full 128k speed, 900/30 at 8k, full non-UI feature verification, and the earlier unexplained desktop-window closure remain unresolved. No test suite, sweep, additional weight quantization, desktop process stop, or GPU/driver reset was introduced here.

## Additional normal follow-up comparisons

These dated comparisons supplement the isolated or profiled controls above. They are sequential normal-engine observations and retain their recorded limitations.

| Receipt | Before to after, prefill / generation tok/s | Interpretation |
|---|---|---|
| [CPU doorbell production](cpu-doorbell-production-comparison.json) | 674.28 / 12.51 to 718.08 / 14.03 | Also includes draft-window/chunk changes; acceptance differs. |
| [Contiguous mask production](contiguous-mask-production-comparison.json) | 718.08 / 14.03 to 775.16 / 14.49 | Mask change applies to prefill; generated tokens, acceptance and cache trajectories differ. |
| [Decode bounds production](decode-bounds-production-comparison.json) | 775.16 / 14.49 to 749.28 / 14.60 | New CUDA binary and differing output/acceptance; not an isolated generation effect. |

## Deployment evidence crosswalk

Every inventoried deployment file is linked here, including diagnostic and failed-build preparation. Its description records the intended change at deployment time; use the attempt narrative and later comparison/rollback to determine the final outcome.

| Deployment receipt | Recorded time | Recorded change / mechanism |
|---|---|---|
| [accepted-heat-deployment.json](accepted-heat-deployment.json) | 2026-10-11T08:29:52.8172341-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [attention-timeline-deployment.json](attention-timeline-deployment.json) | 2026-10-11T02:56:28.5628854-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [budgeted-admission-default-deployment.json](budgeted-admission-default-deployment.json) | 2026-10-11T08:11:27.5619809-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [budgeted-admission-deployment.json](budgeted-admission-deployment.json) | 2026-10-11T07:36:19.8163055-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [bulk-prefill-deployment.json](bulk-prefill-deployment.json) | unrecorded | Remove unhelpful GPU span capture; bulk prefill atlas with next-layer upload overlap and four GPU gather banks. |
| [cache-capacity-profile-deployment.json](cache-capacity-profile-deployment.json) | 2026-10-11T01:38:00.0394960-05:00 | Restore the previous decode implementation; collect actual per-expert frequencies to measure cache admission and capacity opportunities. |
| [caller-affinity-deployment.json](caller-affinity-deployment.json) | 2026-10-11T05:35:04.2162559-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [caller-placement-deployment.json](caller-placement-deployment.json) | 2026-10-11T05:18:11.0691993-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [caller-sibling-sampling-deployment.json](caller-sibling-sampling-deployment.json) | 2026-10-11T05:26:16.5105525-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [compact-decode-slots-deployment.json](compact-decode-slots-deployment.json) | 2026-10-11T01:25:46.6599263-05:00 | Pack GPU decode selections within each token while preserving its CPU misses and original routing weights. |
| [compact-expert-tiles-deployment.json](compact-expert-tiles-deployment.json) | unrecorded | Bound matrix tile grids by the largest expert group and restrict each bulk tile to its actual expert range; dense MMQ for a single expert. |
| [contiguous-mask-deployment.json](contiguous-mask-deployment.json) | 2026-10-11T04:13:29.8576134-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [core-streaming-deployment.json](core-streaming-deployment.json) | 2026-10-10T19:56:41.1424857-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [cost-aware-admission-deployment.json](cost-aware-admission-deployment.json) | 2026-10-11T01:47:33.1393040-05:00 | Allow adaptive admission after each verification batch when predicted avoided CPU time exceeds the measured PCIe transfer cost; retain one admission per layer call. |
| [cpu-doorbell-default-deployment.json](cpu-doorbell-default-deployment.json) | 2026-10-11T03:57:36.0669486-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [cpu-doorbell-deployment.json](cpu-doorbell-deployment.json) | 2026-10-11T03:49:53.4140934-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [cpu-wait-timing-deployment.json](cpu-wait-timing-deployment.json) | 2026-10-11T03:41:27.5420030-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [decode-bounds-default-deployment.json](decode-bounds-default-deployment.json) | 2026-10-11T05:06:01.3338414-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [decode-bounds-deployment.json](decode-bounds-deployment.json) | 2026-10-11T04:56:16.1481364-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [decode-cache-fit-deployment.json](decode-cache-fit-deployment.json) | 2026-10-11T09:25:41.5121736-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [decode-upload-budget-deployment.json](decode-upload-budget-deployment.json) | unrecorded | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [dflash-window-chunks-deployment.json](dflash-window-chunks-deployment.json) | 2026-10-11T03:33:19.0861498-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [dflash-window-injection-deployment.json](dflash-window-injection-deployment.json) | 2026-10-11T03:28:40.8204120-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [dflash-working-batch-deployment.json](dflash-working-batch-deployment.json) | unrecorded | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [dual-layer-prefill-deployment.json](dual-layer-prefill-deployment.json) | unrecorded | Revert slower singleton CPU path; add VRAM-checked direct reads from two alternating full-layer prefill buffers. |
| [fused-bulk-gate-up-deployment.json](fused-bulk-gate-up-deployment.json) | unrecorded | Fuse bulk gate/up MMQ using interleaved CUDA uploads with unchanged total atlas bytes; reuse gathered input scratch for activation; restore the measured host event wait and retain host dispatch timing. |
| [gpu-spans-deployment.json](gpu-spans-deployment.json) | unrecorded | Use the existing CUDA graph implementation for GPU-only decode spans around hybrid expert calls. |
| [hybrid-span-graphs-deployment.json](hybrid-span-graphs-deployment.json) | 2026-10-11T05:53:50.0035488-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [input-publication-deployment.json](input-publication-deployment.json) | 2026-10-11T04:33:09.3555528-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [internal-timings-deployment.json](internal-timings-deployment.json) | unrecorded | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [iq2-r4-deployment.json](iq2-r4-deployment.json) | 2026-10-11T14:23:44.1783194-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [iq2-rows4-deployment.json](iq2-rows4-deployment.json) | 2026-10-11T13:57:00.7670502-05:00 | Four output-row IQ2 AVX2 computation on original packed weights; default-off flag GGML_CUDA_MOE_IQ2_ROWS4. |
| [iq2-weight-cache-deployment.json](iq2-weight-cache-deployment.json) | 2026-10-11T07:15:05.1821291-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [launch-profile-deployment.json](launch-profile-deployment.json) | 2026-10-11T04:48:48.3460860-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [mapped-metadata-deployment.json](mapped-metadata-deployment.json) | 2026-10-11T02:40:28.4391696-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [mask-lower-bound-deployment.json](mask-lower-bound-deployment.json) | 2026-10-11T03:07:00.1336799-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [mask-timing-deployment.json](mask-timing-deployment.json) | 2026-10-11T04:07:18.0813480-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [one-readback-wait-deployment.json](one-readback-wait-deployment.json) | unrecorded | Replace per-layer host event wait with a stream dependency before the required readback; preserve pinned metadata lifetime; measure host prepare and submit time. |
| [paired-gate-up-deployment.json](paired-gate-up-deployment.json) | 2026-10-11T06:24:07.7441158-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [paired-gate-up-registers-deployment.json](paired-gate-up-registers-deployment.json) | 2026-10-11T06:31:22.3553820-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [phase-drain-profile-deployment.json](phase-drain-profile-deployment.json) | 2026-10-11T06:15:33.0842178-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [phase-memory-deployment.json](phase-memory-deployment.json) | unrecorded | Release oversized compute buffers for hybrid decode; reduce expert cache before prefill and grow/populate it after prefill; maintain bulk-buffer VRAM headroom. |
| [production-baseline-deployment.json](production-baseline-deployment.json) | 2026-10-11T02:08:12.8654258-05:00 | Restore baseline admission and decode; retain optional cache frequency diagnostics, which will be disabled in the production-speed run. |
| [recency-and-submit-deployment.json](recency-and-submit-deployment.json) | unrecorded | Apply the existing per-token decay to prefill cache history and explicitly submit transfer/compute work on Windows. |
| [refresh-overlap-deployment.json](refresh-overlap-deployment.json) | 2026-10-11T06:54:50.5013402-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [research-resume-cache-fit-deployment.json](research-resume-cache-fit-deployment.json) | 2026-10-11T13:30:00.1144001-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [single-id-deployment.json](single-id-deployment.json) | 2026-10-11T14:38:13.0797240-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [singleton-iq-deployment.json](singleton-iq-deployment.json) | unrecorded | Use IQ CPU kernels for singleton groups; handle an empty bulk miss list safely. |
| [transfer-timeline-deployment.json](transfer-timeline-deployment.json) | 2026-10-11T02:31:04.3806728-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [wide-bulk-deployment.json](wide-bulk-deployment.json) | 2026-10-11T08:52:05.1873183-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |
| [wide-bulk-reclaim-deployment.json](wide-bulk-reclaim-deployment.json) | 2026-10-11T09:01:13.8999539-05:00 | Preparation/identities are recorded in this receipt; final result is in the corresponding attempt. |


## Stage 4: DFlash multi-batch prefill and failed-request cache repair

After the documented performance pause and owner-run 128k requests, the native log exposed a correctness defect in the retained draft-window trimming: a populated draft cache received a tail beginning after a skipped prefix. The failed request then left target/draft histories divergent, poisoning identical-prefix retries.

By explicit owner request, the two source paths were repaired and the installed server rebuilt successfully. The fix clears only the trimmed draft sequence before a full-window replacement and invalidates active target/draft prompt state after speculative processing returns false. All 26 overlay sources match E; the complete pre-change source/binary set is backed up. No runtime regression or performance request was executed. The previous throughput figures predate this rebuild; the server was observed stopped after installation.

[Repair details, results and limitations](DFLASH-POSITION-FIX.md), [patch](dflash-position-fix.patch), [deployment](dflash-position-fix-deployment.json), [build](dflash-position-fix-build.json), [installed identities](dflash-position-fix-result.json).

## Resume boundary

Performance work is paused. The last interrupted cache-transition audit produced no new implementation or benchmark. This record authorizes no automatic continuation. The outstanding objective remains 900/30 at 8k, then current-engine near-full 128k and full required local API behavior; UI is deferred.


## Stage 5: OMP tool batches and native turn termination

The later owner-authorized [tool-call investigation](TOOL-CALL-INVESTIGATION.md) captured raw/native token data and SSE, compared streaming/non-streaming requests, and verified the installed OMP adapter. The retained profile defaults to one tool call per response, preserves explicit parallel batches, permits the native text turn marker, and provides opt-in raw SSE diagnostics. Native turn support alone did not stop the stress loop; that unsuccessful standalone result and the retained default are documented. The final installed build passed the scoped protocol checks and is running. The original 98-call raw output was not logged, so its exact raw-to-parsed correspondence remains unproved. No performance benchmark or benchmark grader was run; the 900/30 goal remains paused.

## Stage 6: named-argument ordering and restored parallel calls

The owner reported a cross-response rewrite loop after the single-call mitigation. That mitigation did not prevent the loop. The [OMP follow-up](OMP-LOOP-FOLLOWUP.md) records a confirmed grammar defect: valid tagged argument permutations were rejected, while duplicate optional arguments could be accepted. The repaired bounded grammar accepted 32/32 valid sequences and rejected 5/5 invalid cases, with 1,031 evidence assertions and 751 existing parser checks. Thirteen post-fix HTTP captures covered parallel defaults, serial opt-out, exact values, continuation, truncation, production-thinking reminders and cancellation/recovery. Parallel calls are enabled by default again. Original OMP task convergence remains unverified; performance work stays paused.
