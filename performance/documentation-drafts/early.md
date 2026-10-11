# Floatie early attempt history

Documentation only; the performance goal remains paused. Target: Q3, local API, **900 prefill / 30 generation tok/s**, first at **8k**, then near-full **128k**. These early results do not achieve the target.

Retained/rejected status uses current-source or explicit checkpoint evidence. A successful request alone is not adoption. Historical sequential controls are listed where present and do not imply a matched causal A/B. Full precision, request hashes, token hashes, acceptance counts, and evidence hashes are in [early.json](early.json).

The regular receipts request 80 output tokens: greedy temperature 0, seed 42, top-k 20, top-p 1, min-p 0. The first family uses 8192 prompt tokens in configured context 131072; the later family uses the saved 8064 prompt tokens in context 8192. Prompt caching is disabled except the explicitly marked cached answer. Each receipt retains its own request hash.

## early-reference-evaluation: Strata and ro99 evaluation

**Status:** researchonly. **Mechanism:** Compare Qwen-specific Niko Strata execution with Laguna attention, routing, DFlash, and Q3 format support; select Poolside llama.cpp as the engine base.

**Result:** Niko supplied memory tiering ideas and adapted IQ kernel code. ro99 was inspected for Laguna and tiered placement, but the E: README records its four-bit floor/native FP4 path as unsuitable for the requested Q3. Floatie uses Poolside llama.cpp commit 06f8cebd7fe728687be3d19f8bdedb70d75883af.

**Controls:** {}.

**Limits:** Qwen 128k capability and roughly 30-38 tok/s around 50k were owner/session claims. No controlled, same-prompt Qwen/Laguna comparison or direct ro99 execution receipt was found in this family.

**Evidence:** [README.md](/README.md), [README.md](../installed-evidence/README.md), [prepared-state.json](../installed-evidence/prepared-state.json).

## early-architecture-essay: Run Laguna2.1 via Strata research essay

**Status:** researchonly. **Mechanism:** Review Poolside backend support, SWA allocation, pinned experts, short DFlash blocks, confidence filtering, attention requantization, and multi-GPU regex balancing.

**Result:** The full essay was reviewed; SHA256 ade039862d4352f00c97236f35636106d4bc063837012d17a460409b52abe957. The local engine implemented Poolside model support, owned host experts, compact SWA, and repaired Q8 DFlash. These receipts do not establish attention requantization, multi-GPU interleaving, or confidence-threshold optimization.

**Controls:** {}.

**Limits:** Its external claims include 18-20 / 60-64 generation tok/s, 7.2-7.8% attention requantization gain, 58 to 23 tok/s with DFlash, and 6.8 ms extra verification cost. These are source claims on other machines. Its 512-cell SWA estimate, all-48-MoE description, vocabulary/FF dimensions, and 1M-context claim must not override actual GGUF metadata or local allocation evidence.

**Evidence:** `E:/poolside/Run Laguna 2.1 via Strata.md` (local reference, not bundled), [model-layout.json](../installed-evidence/model-layout.json), [checkpoint-core-streaming.json](../checkpoint-core-streaming.json).

## early-prepared-hybrid: Initial hybrid engine build and artifact preparation

**Status:** retained. **Mechanism:** Implement owned RAM experts, GPU caching, concurrent standard quantized CPU misses, a fused routed operator, GPU quantized prefill, local API, and DFlash.

**Result:** Compilation and pinned model checks succeeded. Target: 48,428,911,520 bytes, SHA256 8a9ab3f8b3ff1723441cd251e873b295a7ef086d78dbae7515e5e27c8382b002. Initial profile: cache 3072 MiB, context 131072, batch 512, DFlash 4, and Q8 KV. Preparation contained no inference metric.

**Controls:** {}.

**Limits:** The prepared-state receipt explicitly says inference/model initialization had not occurred. This foundation evolved substantially. Initial UI asset downloads failed TLS verification; the compiled API did not require the UI.

**Evidence:** [prepared-state.json](../installed-evidence/prepared-state.json), [source-manifest.json](../installed-evidence/source-manifest.json), [README.md](../installed-evidence/README.md).

## early-full-context-run: Initial near-full130278-token run

**Status:** inconclusive. **Mechanism:** Execute the initial hybrid API at context 131072, cache 3072 MiB, batch 512, DFlash 4, and Q8 KV.

**Result:** Native log: 320.37 tok/s prefill, 1.76 tok/s generation, 52 output tokens, 0/204 draft tokens accepted. The owner reported all three codes recalled. A prior 130501-token run recorded 329.60 tok/s prefill and an invalid 1000000 tok/s generation figure from one output token timed at 0 ms.

**Controls:** {"configured_context": 131072, "prompt_tokens": 130278, "output_tokens": 52, "batch": 512, "expert_cache_mib": 3072, "draft_max": 4, "draft_kv": "q8_0", "profile": "not established"}.

**Limits:** The matching log belongs to the Poolside hybrid installation; ro99 execution is not established. The owner's original request/output token IDs were not preserved. This does not prove current-engine 128k speed. The reported comparison with Niko's prefill has no same-prompt control here.

**Evidence:** [laguna-20261010-175153.log](../installed-evidence/logs/laguna-20261010-175153.log), [launch-before-tuning-20261010-182545.ps1](../installed-evidence/logs/launch-before-tuning-20261010-182545.ps1).

## early-raw-request-failures: Initial request/launch interruptions

**Status:** failed. **Mechanism:** Preserve early malformed API requests, an interrupted no-draft long prompt, and a build wrapper failure.

**Result:** Two malformed JSON requests returned HTTP 500 parse error 101. A no-draft 131072-context attempt reached 5120 prompt tokens without a final timing receipt. A PowerShell 5.1 build invocation stopped on CMAKE_BUILD_TYPE=Release output under ErrorActionPreference=Stop.

**Controls:** {}.

**Limits:** Later wrapper exit code -1 lines alone do not prove crashes or OOM; many accompanied deliberate server stops. No OOM diagnosis is asserted. These failures are operational evidence, not speed comparisons.

**Evidence:** [laguna-20261010-175153.log](../installed-evidence/logs/laguna-20261010-175153.log), [laguna-20261010-182702.log](../installed-evidence/logs/laguna-20261010-182702.log), [build-20261010-183317.log](../installed-evidence/logs/build-20261010-183317.log).

## early-batch512-thinking: 512-batch initial8k run

**Status:** inconclusive. **Mechanism:** Run an 8192-token prompt with cache 3072 MiB, batch 512, and drafting disabled.

**Result:** 73.64 tok/s prefill / 9.49 generation. Thinking consumed the 80-token output cap before the checkpoint answer.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [nodraft-cache3072-batch512-8k.json](../nodraft-cache3072-batch512-8k.json) | 8192 / 80 | 73.64 | 9.49 | unrecorded / unrecorded | unanswered |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run."}.

**Limits:** The request hash and thinking mode differ from later explicit-BOS and 8064 comparisons. This run did not deliver a recall answer within the cap.

**Evidence:** [nodraft-cache3072-batch512-8k.json](../nodraft-cache3072-batch512-8k.json), [nodraft-short-20261010-182853.stderr.log](../installed-evidence/logs/nodraft-short-20261010-182853.stderr.log).

## early-batch512-cached-answer: Cached512-batch answer attempt

**Status:** failed. **Mechanism:** Reuse 8191 cached tokens and disable thinking in the answer request.

**Result:** Only one uncached prompt token was evaluated: 2.374 prompt tok/s is not full-prompt prefill. Generation was 9.86 tok/s. The first three codes were MAPLE-42 / MAPLE-42 / MAPLE-42: incorrect.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [nodraft-cache3072-batch512-8k-answer.json](../nodraft-cache3072-batch512-8k-answer.json) | 1 / 80 | 2.37 | 9.86 | unrecorded / unrecorded | incorrect |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": true, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run."}.

**Limits:** Cached prefill cannot be compared with uncached runs. The answer request's BOS handling was subsequently corrected.

**Evidence:** [nodraft-cache3072-batch512-8k-answer.json](../nodraft-cache3072-batch512-8k-answer.json).

## early-batch2048-answer: 2048-batch no-draft answer attempt

**Status:** inconclusive. **Mechanism:** Increase the target batch from 512 to 2048 with cache 3072 MiB and drafting disabled.

**Result:** 206.94 tok/s prefill / 9.46 generation. The beginning checkpoint was incorrect: MAPLE-42 / MAPLE-42 / VIOLET-89.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [nodraft-cache3072-batch2048-8k-answer.json](../nodraft-cache3072-batch2048-8k-answer.json) | 8192 / 80 | 206.94 | 9.46 | unrecorded / unrecorded | incorrect |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 3072}.

**Limits:** The prompt differs from the thinking and explicit-BOS requests. Throughput does not establish valid output or an isolated batch-size benefit.

**Evidence:** [nodraft-cache3072-batch2048-8k-answer.json](../nodraft-cache3072-batch2048-8k-answer.json), [nodraft-b2048-20261010-183437.stderr.log](../installed-evidence/logs/nodraft-b2048-20261010-183437.stderr.log).

## early-dflash-metadata-fix: DFlash GGUF metadata repair

**Status:** retained. **Mechanism:** Add the official 512-token window, all-SWA pattern, 128 RoPE dimensions, and no RoPE scaling without changing the draft tensor payload.

**Result:** All 76 tensor descriptors and the 1,184,848,896-byte payload were preserved; payload SHA256 8437edb6262d450ba224ffa546ee986af0408405c305d874eb9e9ef2f7715339. Answer request: 197.07 / 2.57 tok/s and incorrect beginning code. Explicit BOS: 187.95 / 2.56 and correct codes. Both accepted only 2/298 draft tokens (0.67%).

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [fixed-dflash4-cache3072-batch2048-8k-answer.json](../fixed-dflash4-cache3072-batch2048-8k-answer.json) | 8192 / 80 | 197.07 | 2.57 | 298 / 2 | incorrect |
| candidate: [fixed-dflash4-cache3072-batch2048-8k-bos.json](../fixed-dflash4-cache3072-batch2048-8k-bos.json) | 8192 / 80 | 187.95 | 2.56 | 298 / 2 | correct |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 3072, "draft_max": 4, "draft_kv": "q8_0"}.

**Limits:** Metadata repair alone did not repair quantized-KV feature injection. No speedup is claimed; poor acceptance is retained as failure evidence.

**Evidence:** [Laguna-S-2.1-DFlash-Q8_0-swa512.gguf.metadata-repair.json](../installed-evidence/models/Laguna-S-2.1-DFlash-Q8_0-swa512.gguf.metadata-repair.json), [fixed-dflash4-cache3072-batch2048-8k-answer.json](../fixed-dflash4-cache3072-batch2048-8k-answer.json), [fixed-dflash4-cache3072-batch2048-8k-bos.json](../fixed-dflash4-cache3072-batch2048-8k-bos.json).

## early-pinning-cache5120: Pinned expert RAM and5120MiB cache

**Status:** retained. **Mechanism:** Register 41.91 GiB of expert RAM and enlarge cache 3072 to 5120 MiB; use batch 2048 and explicit BOS without drafting.

**Result:** 257.05 tok/s prefill / 10.22 generation; all three codes correct. Pinning and a larger cache persisted in later mechanics.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [nodraft-cache5120-pinned-batch2048-8k-bos.json](../nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 257.05 | 10.22 | unrecorded / unrecorded | correct |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 5120, "pin_experts": true}.

**Limits:** BOS, cache, pinning, and prior code differed together. The benefit of pinning is not isolated. 5120 MiB is a historical budget, not the latest decode budget.

**Evidence:** [nodraft-cache5120-pinned-batch2048-8k-bos.json](../nodraft-cache5120-pinned-batch2048-8k-bos.json), [pinned-cache5120-20261010-184227.stderr.log](../installed-evidence/logs/pinned-cache5120-20261010-184227.stderr.log).

## early-adaptive-cache: Initial adaptive cache admission

**Status:** retained. **Mechanism:** Cap old prefill history, decay heat by 0.97 per evaluated token, and permit one promotion per layer call.

**Result:** 257.88 / 9.04 tok/s versus the preceding 257.05 / 10.22. Codes were correct. Adaptive history persisted; admission subsequently changed.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](../adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 257.88 | 9.04 | unrecorded / unrecorded | correct |
| historical control: [nodraft-cache5120-pinned-batch2048-8k-bos.json](../nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 257.05 | 10.22 | unrecorded / unrecorded | correct |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 5120, "pin_experts": true, "adaptive": true}.

**Limits:** This initial admission regression does not establish a regression in the current budgeted policy. Output tokens and expert work differ.

**Evidence:** [adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](../adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json), [adaptive-cache5120-20261010-184440.stderr.log](../installed-evidence/logs/adaptive-cache5120-20261010-184440.stderr.log).

## early-overlap: Initial compute/upload overlap

**Status:** retained. **Mechanism:** Queue cache/GPU work while CPU expert misses compute.

**Result:** 256.16 / 9.61 tok/s versus preceding adaptive 257.88 / 9.04. Codes and output token hashes match the adaptive control.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](../overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 256.16 | 9.61 | unrecorded / unrecorded | correct |
| historical control: [adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](../adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 257.88 | 9.04 | unrecorded / unrecorded | correct |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 5120, "pin_experts": true, "adaptive": true}.

**Limits:** Single sequential runs do not prove repeatability. The current overlap mechanism evolved further; no isolated sustained gain is established.

**Evidence:** [overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](../overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json).

## early-submit: Explicit Windows stream submission

**Status:** retained. **Mechanism:** Explicitly submit Windows CUDA transfer/compute queues before waiting.

**Result:** 242.12 / 10.63 tok/s versus preceding overlap 256.16 / 9.61. Codes and output token hashes match. Entry-event wait declined in the profile, while prefill regressed. Current code retains submit_stream.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [submitted-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](../submitted-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 242.12 | 10.63 | unrecorded / unrecorded | correct |
| historical control: [overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](../overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 / 80 | 256.16 | 9.61 | unrecorded / unrecorded | correct |

**Controls:** {"configured_context": 131072, "cpu_workers": 16, "target_kv": "q8_0", "cache_prompt": false, "profile": "Enabled for initial 2048 batch hybrid receipts (native logs); not established for short 512-batch/first-run.", "batch": 2048, "expert_cache_mib": 5120, "pin_experts": true, "adaptive": true}.

**Limits:** Single sequential runs; CPU/GPU intervals overlap and must not be summed.

**Evidence:** [submitted-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](../submitted-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json), [submitted-cache5120-20261010-185327.stderr.log](../installed-evidence/logs/submitted-cache5120-20261010-185327.stderr.log).

## early-core-streaming: Bounded core streaming and grouped AVX2

**Status:** retained. **Mechanism:** Bound GPU tiles to 4096 selections; use two 32-expert transfer banks, reuse admissions, group IQ CPU work across up to four tokens, and repair Hadamard draft KV injection.

**Result:** The compiled checkpoint initially stopped before inference. Subsequent no-draft 8064-prompt runs measured 464.63 / 9.44 and 499.06 / 9.56 tok/s after Strata stopped. Codes were correct.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-nodraft-cache8192-pinned-batch8192.json](../core8k-nodraft-cache8192-pinned-batch8192.json) | 8064 / 80 | 464.63 | 9.44 | unrecorded / unrecorded | correct |
| candidate: [core8k-nodraft-cache8192-strata-stopped-repeat.json](../core8k-nodraft-cache8192-strata-stopped-repeat.json) | 8064 / 80 | 499.06 | 9.56 | unrecorded / unrecorded | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 0, "draft_kv": "q8_0", "expert_cache_base_mib": 8192, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 1, "profile": true, "cache_prompt": false}.

**Limits:** Batch, context, cache, and kernels changed together; gains cannot be attributed individually. Output tokens differ. Shared GPU memory counters alone do not prove paging.

**Evidence:** [core-streaming-deployment.json](../core-streaming-deployment.json), [checkpoint-core-streaming.json](../checkpoint-core-streaming.json), [core8k-nodraft-cache8192-pinned-batch8192.json](../core8k-nodraft-cache8192-pinned-batch8192.json), [core8k-nodraft-cache8192-strata-stopped-repeat.json](../core8k-nodraft-cache8192-strata-stopped-repeat.json).

**Direct log evidence:** [core8k-nodraft-20261010-225936.stderr.log](../installed-evidence/logs/core8k-nodraft-20261010-225936.stderr.log).

## early-dflash-working-batch: DFlash512working batch plus corrected injection

**Status:** retained. **Mechanism:** Cap draft working batch at 512 independently of the target 8192 batch, alongside the corrected Hadamard quantized-KV feature injection.

**Result:** 422.24 / 11.22 tok/s; 55/96 draft tokens accepted (57.29%), versus the earlier broken injection's 2/298. All codes were correct.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-dflash4-q8-cache6144-pinned-batch8192.json](../core8k-dflash4-q8-cache6144-pinned-batch8192.json) | 8064 / 80 | 422.24 | 11.22 | 96 / 55 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 1, "profile": "native profile enabled", "cache_prompt": false}.

**Limits:** Recovery followed multiple changes and context reduction; this is not an isolated working-batch gain. Q8 draft KV works after correcting feature transformation; the essay's F16-only recommendation is not established.

**Evidence:** [dflash-working-batch-deployment.json](../dflash-working-batch-deployment.json), [core8k-dflash4-launch.json](../core8k-dflash4-launch.json), [core8k-dflash4-q8-cache6144-pinned-batch8192.json](../core8k-dflash4-q8-cache6144-pinned-batch8192.json), [checkpoint-core-streaming.json](../checkpoint-core-streaming.json).

**Direct log evidence:** [core8k-dflash4-q8-20261010-230719.stderr.log](../installed-evidence/logs/core8k-dflash4-q8-20261010-230719.stderr.log).

## early-decode-upload-budget: Throttle decode cache refresh

**Status:** retained. **Mechanism:** Compute ordinary misses on CPU and refresh at most one expert per layer after 16 evaluated tokens.

**Result:** 445.91 / 11.35 tok/s; 52/102 draft tokens accepted, correct codes. The 16-token refresh fallback remains; later budgeted admission overlaps further refreshes.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-budgeted-dflash4-q8-cache6144-nsys.json](../core8k-budgeted-dflash4-q8-cache6144-nsys.json) | 8064 / 80 | 445.91 | 11.35 | 102 / 52 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": "Nsight/profilerlaunch; overheadexpected", "cache_prompt": false}.

**Limits:** The receipt's nsys label does not prove a completed trace. Native Nsight failed because the ETW ReflexStatsTraceLoggingProvider required administrator privileges; an earlier launcher could not resolve the pwsh alias. No usable CUDA trace is established.

**Evidence:** [decode-upload-budget-deployment.json](../decode-upload-budget-deployment.json), [core8k-budgeted-dflash4-launch.json](../core8k-budgeted-dflash4-launch.json), [core8k-budgeted-dflash4-q8-cache6144-nsys.json](../core8k-budgeted-dflash4-q8-cache6144-nsys.json).

**Direct log evidence:** [core8k-budgeted-native-20261010-231807.profiler.log](../installed-evidence/logs/core8k-budgeted-native-20261010-231807.profiler.log).

## early-recency-submit: Prefill recency and Windows stream submit

**Status:** retained. **Mechanism:** Apply per-token decay to prefill cache history and explicitly submit transfer/compute work on Windows.

**Result:** 463.56 / 13.77 tok/s; 54/96 drafts accepted, all codes. Current source includes prefill recency/decay and stream submission.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-recency-submit-dflash4-q8-cache6144.json](../core8k-recency-submit-dflash4-q8-cache6144.json) | 8064 / 80 | 463.56 | 13.77 | 96 / 54 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** The previous budgeted receipt used a profiler launcher. Multiple mechanisms changed, preventing a causal comparison.

**Evidence:** [recency-and-submit-deployment.json](../recency-and-submit-deployment.json), [core8k-recency-submit-launch.json](../core8k-recency-submit-launch.json), [core8k-recency-submit-dflash4-q8-cache6144.json](../core8k-recency-submit-dflash4-q8-cache6144.json).

## early-bulk-prefill: Bulk prefill atlas

**Status:** retained. **Mechanism:** Stage a complete eligible layer atlas, upload the next layer, use four gather banks, and remove unhelpful GPU span capture.

**Result:** 506.34 / 13.18 tok/s; 53/100 drafts accepted, correct codes. Current bulk paths retain atlas and fallback streaming mechanisms.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-bulk-prefill-dflash4-q8-cache6144.json](../core8k-bulk-prefill-dflash4-q8-cache6144.json) | 8064 / 80 | 506.34 | 13.18 | 100 / 53 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** Source and output tokens differ from the recency run. Generation did not improve in this single measurement.

**Evidence:** [bulk-prefill-deployment.json](../bulk-prefill-deployment.json), [bulk-prefill-launch.json](../bulk-prefill-launch.json), [core8k-bulk-prefill-dflash4-q8-cache6144.json](../core8k-bulk-prefill-dflash4-q8-cache6144.json).

## early-dual-layer-prefill: Two alternating full-layer buffers

**Status:** retained. **Mechanism:** Use two alternating layer atlases with direct matrix reads and a VRAM check; restore standard singleton CPU dots.

**Result:** Initial result: 190.19 / 14.11 tok/s, 55/92 drafts accepted, all codes. Prefill copied 42791.48 MiB; copy interval 13470.54 ms and readback wait 25400.97 ms. Later phase memory addressed headroom; the two-atlas mechanism remains.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-dual-layer-prefill-dflash4-q8-cache6144.json](../core8k-dual-layer-prefill-dflash4-q8-cache6144.json) | 8064 / 80 | 190.19 | 14.11 | 92 / 55 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** The poor initial prefill result is preserved. Later success does not prove an isolated two-buffer benefit. Profiling intervals overlap.

**Evidence:** [dual-layer-prefill-deployment.json](../dual-layer-prefill-deployment.json), [dual-layer-prefill-launch.json](../dual-layer-prefill-launch.json), [core8k-dual-layer-prefill-dflash4-q8-cache6144.json](../core8k-dual-layer-prefill-dflash4-q8-cache6144.json), [phase-memory-deployment.json](../phase-memory-deployment.json).

## early-phase-memory: Separate prefill/decode memory budgets

**Status:** retained. **Mechanism:** Release oversized graph buffers, shrink expert cache during prefill, free layer atlases, then grow/populate the decode cache.

**Result:** 361.55 / 14.82 tok/s; 55/92 drafts accepted. Native log: prefill cache 5120 MiB; decode cache 8192 MiB; 3137.11 MiB of hot experts uploaded during an 829.71 ms transition. Codes were correct.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-phase-memory-dflash4-q8-cache6144.json](../core8k-phase-memory-dflash4-q8-cache6144.json) | 8064 / 80 | 361.55 | 14.82 | 92 / 55 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** The preceding dual-layer run was 190.19 / 14.11, but binaries and memory state changed. The phase budgets are retained; these are historical rates.

**Evidence:** [phase-memory-deployment.json](../phase-memory-deployment.json), [phase-memory-launch.json](../phase-memory-launch.json), [core8k-phase-memory-dflash4-q8-cache6144.json](../core8k-phase-memory-dflash4-q8-cache6144.json).

**Direct log evidence:** [core8k-phase-memory-20261011-001937.stderr.log](../installed-evidence/logs/core8k-phase-memory-20261011-001937.stderr.log).

## early-compact-expert-tiles: Bound MMQ grids to actual expert groups

**Status:** retained. **Mechanism:** Bound MMQ tile grids by the actual expert range and largest group; use dense MMQ for one expert.

**Result:** 515.30 / 14.46 tok/s; warm repeat 514.89 / 12.08. Draft counts were 96/54 versus 100/53. Codes were correct. The production checkpoint's mmq.cu hash 46671A59108D629361A4597D6B416316AF8A218BF78578699DF28E5A5DC9B5BA establishes retention.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-compact-expert-tiles-dflash4-q8-cache6144.json](../core8k-compact-expert-tiles-dflash4-q8-cache6144.json) | 8064 / 80 | 515.30 | 14.46 | 96 / 54 | correct |
| candidate: [core8k-compact-expert-tiles-warm-repeat.json](../core8k-compact-expert-tiles-warm-repeat.json) | 8064 / 80 | 514.89 | 12.08 | 100 / 53 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** Generation varied substantially and output tokens differ; 14.46 tok/s is not a demonstrated repeatable gain.

**Evidence:** [compact-expert-tiles-deployment.json](../compact-expert-tiles-deployment.json), [compact-expert-tiles-launch.json](../compact-expert-tiles-launch.json), [core8k-compact-expert-tiles-dflash4-q8-cache6144.json](../core8k-compact-expert-tiles-dflash4-q8-cache6144.json), [core8k-compact-expert-tiles-warm-repeat.json](../core8k-compact-expert-tiles-warm-repeat.json).

## early-one-readback-wait: Replace entry host-event wait

**Status:** rejected. **Mechanism:** Replace the entry host-event wait with a CUDA stream dependency before mandatory metadata readback; measure host dispatch.

**Result:** 493.98 / 12.05 tok/s; 54/96 drafts accepted, correct codes. The later fused-bulk deployment explicitly restored the measured host-event wait.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-one-readback-wait-dflash4-q8-cache6144.json](../core8k-one-readback-wait-dflash4-q8-cache6144.json) | 8064 / 80 | 493.98 | 12.05 | 96 / 54 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** No isolated matched control. Previous compact runs were 515.30 / 14.46 and 514.89 / 12.08. Dispatch instrumentation may remain independently of the rejected wait change.

**Evidence:** [one-readback-wait-deployment.json](../one-readback-wait-deployment.json), [one-readback-wait-launch.json](../one-readback-wait-launch.json), [core8k-one-readback-wait-dflash4-q8-cache6144.json](../core8k-one-readback-wait-dflash4-q8-cache6144.json), [fused-bulk-gate-up-deployment.json](../fused-bulk-gate-up-deployment.json).

## early-fused-bulk-gate-up: Fuse GPU prefill gate/up projections

**Status:** retained. **Mechanism:** Interleave gate/up uploads without enlarging the atlas, fuse prefill MMQ, reuse input scratch, and restore the host-event wait.

**Result:** 511.11 / 12.07 tok/s; 55/96 drafts accepted, correct codes. Current source retains bulk_fused.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-fused-bulk-gate-up-dflash4-q8-cache6144.json](../core8k-fused-bulk-gate-up-dflash4-q8-cache6144.json) | 8064 / 80 | 511.11 | 12.07 | 96 / 55 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** Changes were combined; this measurement does not isolate fused GPU benefit or the wait restoration.

**Evidence:** [fused-bulk-gate-up-deployment.json](../fused-bulk-gate-up-deployment.json), [fused-bulk-gate-up-launch.json](../fused-bulk-gate-up-launch.json), [core8k-fused-bulk-gate-up-dflash4-q8-cache6144.json](../core8k-fused-bulk-gate-up-dflash4-q8-cache6144.json).

## early-compact-decode-slots: Compact GPU decode selections

**Status:** rejected. **Mechanism:** Pack cached GPU selections within each token while preserving CPU misses and routing weights.

**Result:** 511.02 / 11.67 and warm 538.10 / 11.98 tok/s. Draft counts: 96/54 versus 100/53. GPU padding fell 67.7% and cached intervals fell 23%, but throughput did not improve. The candidate was archived; the checkpoint explicitly says retained=false.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-compact-decode-slots-dflash4-q8-cache6144.json](../core8k-compact-decode-slots-dflash4-q8-cache6144.json) | 8064 / 80 | 511.02 | 11.67 | 96 / 54 | correct |
| candidate: [core8k-compact-decode-slots-warm-repeat.json](../core8k-compact-decode-slots-warm-repeat.json) | 8064 / 80 | 538.10 | 11.98 | 100 / 53 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false}.

**Limits:** Warm/cold clocks and output tokens differ. A smaller GPU subinterval does not establish faster generation.

**Evidence:** [compact-decode-slots-deployment.json](../compact-decode-slots-deployment.json), [compact-decode-slots-launch.json](../compact-decode-slots-launch.json), [core8k-compact-decode-slots-dflash4-q8-cache6144.json](../core8k-compact-decode-slots-dflash4-q8-cache6144.json), [core8k-compact-decode-slots-warm-repeat.json](../core8k-compact-decode-slots-warm-repeat.json), [core8k-cache-decision-evidence.json](../core8k-cache-decision-evidence.json), [checkpoint-core8k-production-baseline.json](../checkpoint-core8k-production-baseline.json).

## early-production-baseline: Restore production cache/decode baseline

**Status:** retained. **Mechanism:** Remove compact decode/cost-aware admission candidates; keep diagnostics optional and disable them during the production run.

**Result:** 509.66 / 12.22 tok/s; 55/96 drafts accepted, all codes. The checkpoint records source/binary hashes and then-healthy API. Explicit compact decode, cost-aware admission, and power-policy rejections were preserved.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-production-baseline-dflash4-q8-cache6144.json](../core8k-production-baseline-dflash4-q8-cache6144.json) | 8064 / 80 | 509.66 | 12.22 | 96 / 55 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": false, "cache_prompt": false}.

**Limits:** This is a historical baseline, not live performance. Outputs differ from candidates. Shared-memory 43770 MiB included 42912 MiB of registered experts; this does not prove paging.

**Evidence:** [production-baseline-deployment.json](../production-baseline-deployment.json), [production-baseline-launch.json](../production-baseline-launch.json), [core8k-production-baseline-dflash4-q8-cache6144.json](../core8k-production-baseline-dflash4-q8-cache6144.json), [checkpoint-core8k-production-baseline.json](../checkpoint-core8k-production-baseline.json).

## early-dflash-window-injection: Trim obsolete DFlash prefill feature injection

**Status:** retained. **Mechanism:** Fuse and inject only target features still visible to the all-SWA draft's 512-token window, using the proper model window accessor.

**Result:** 705.72 / 11.51 tok/s; 53/100 drafts accepted, correct codes. Native log injected 512 rows and skipped 7548 obsolete rows, taking 506.07 ms.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-dflash-window-injection-production-dflash4-q8-cache6144.json](../core8k-dflash-window-injection-production-dflash4-q8-cache6144.json) | 8064 / 80 | 705.72 | 11.51 | 100 / 53 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": false, "cache_prompt": false}.

**Limits:** Historical baseline was 509.66 / 12.22 with other intervening changes. There is no isolated on/off control. The all-SWA guard is essential; not every model permits this trim.

**Evidence:** [dflash-window-injection-deployment.json](../dflash-window-injection-deployment.json), [dflash-window-injection-production-launch.json](../dflash-window-injection-production-launch.json), [core8k-dflash-window-injection-production-dflash4-q8-cache6144.json](../core8k-dflash-window-injection-production-dflash4-q8-cache6144.json).

**Direct log evidence:** [core8k-dflash-window-injection-production-20261011-032952.stderr.log](../installed-evidence/logs/core8k-dflash-window-injection-production-20261011-032952.stderr.log).

## early-dflash-window-chunks: Preserve original draft injection chunk alignment

**Status:** retained. **Mechanism:** Trim the draft window while preserving original 512-row chunk boundaries and matrix shapes.

**Result:** 718.13 / 11.58 tok/s; 53/100 drafts accepted, all codes. Actual output tokens match the preceding window-injection production run.

| Role / receipt | Prompt / output | Prefill tok/s | Generation tok/s | Draft / accepted | Recall |
|---|---:|---:|---:|---:|---|
| candidate: [core8k-dflash-window-chunks-profile-dflash4-q8-cache6144.json](../core8k-dflash-window-chunks-profile-dflash4-q8-cache6144.json) | 8064 / 80 | 718.13 | 11.58 | 100 / 53 | correct |

**Controls:** {"configured_context": 8192, "prompt_tokens": 8064, "output_tokens": 80, "target_batch": 8192, "target_ubatch": 8192, "draft_max": 4, "draft_kv": "q8_0", "expert_cache_base_mib": 6144, "pin_experts": true, "adaptive_cache": true, "gpu_misses_per_token": 0, "profile": true, "cache_prompt": false, "verbosity": 5}.

**Limits:** Profiling, verbosity, and binaries differ from the preceding 705.72 / 11.51 run. Do not claim speedup from this one cross-profile comparison.

**Evidence:** [dflash-window-chunks-deployment.json](../dflash-window-chunks-deployment.json), [dflash-window-chunks-profile-launch.json](../dflash-window-chunks-profile-launch.json), [core8k-dflash-window-chunks-profile-dflash4-q8-cache6144.json](../core8k-dflash-window-chunks-profile-dflash4-q8-cache6144.json).

## Evidence gaps

- The owner's original 130278-token request and output token IDs were not found.
- No direct ro99 execution or controlled same-prompt Niko/Laguna comparison was found.
- Initial short 512-batch launch profiling state is unverified.
- The failed trace is not usable Nsight evidence.
- Single executions with changing outputs and draft acceptance cannot establish a repeatable speedup.

This draft retains initial failures alongside successful mechanisms. None of the 130k results establishes current-engine near-full 128k performance.
