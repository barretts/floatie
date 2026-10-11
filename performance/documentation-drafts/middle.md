## Attention, CPU execution, handoff and diagnostic attempts

This section documents existing Floatie evidence only. The performance work remains paused. The target remains Laguna S 2.1 Q3 through the local API at **900 tok/s prefill and 30 tok/s generation**, with **8k first** and near-full 128k afterward. These targets and full API coverage are unfinished.

All 42 inference receipts covered here used the saved **8,064-token prompt**, requested and produced **80 output tokens**, disabled prompt caching and recalled `COBALT-17`, `MAPLE-42`, and `VIOLET-89` in order. The configured context was 8,192, batch 8,192, base expert cache 6,144 MiB, DFlash maximum 4, draft KV `q8_0`, pinned/adaptive experts and zero GPU misses per token. Exact launch evidence and raw numeric timings are in [middle.json](middle.json); the primary receipts remain authoritative. Profiling and other flags differ between experiments as noted.

A throughput pair below means **prefill / generation tok/s**. A higher single-run rate is not automatically an optimization gain. Most controls differ in output tokens, draft acceptance, GPU clocks, placement, or cache trajectories. CPU and GPU intervals overlap and must not be summed. Checkpoint recall verifies this prompt only.

### Retained improvements

| Mechanism | Control to candidate | Evidence and practical result |
|---|---:|---|
| Mapped prefill routing metadata | 509.66 / 12.22 to 596.44 / 12.04, profiling off | [Comparison](../mapped-metadata-comparison.json): prefill +17.03% observed; copy/expert overlap 81.824 to 1986.336 ms. Generation gain not demonstrated. Existing pinned arrays, no extra weight mirror; ordinary-copy fallback remains. |
| Prefill sliding-window mask lower bounds | 596.44 / 12.04 to 674.28 / 12.51, profiling off | [Comparison](../mask-lower-bound-comparison.json): target SWA attention in profiled timeline 2042.002 to 412.767 ms. Exact masked tiles skipped, original windows/weights preserved. |
| Mapped CPU result handoff with bounded completion poll | 737.23 / 11.83 to 719.20 / 13.08, profile + DebugGpu | [Same-binary comparison](../cpu-doorbell-comparison.json): identical actual output arrays and draft 100/53; generation +10.56% observed. Poll capped at 10 ms/block with fallback launch. [Default enabled](../cpu-doorbell-default-deployment.json). |
| Contiguous causal/SWA mask range fill | 720.57 / 14.19 to 754.45 / 13.69, profiling on | [Comparison](../contiguous-mask-comparison.json): CPU fill 536.233 to 27.114 ms (94.94% less); normal sequential follow-up 718.08 / 14.03 to 775.16 / 14.49. Change applies to prefill only. |
| Small-batch stream-K decode mask bounds | 779.30 / 13.79 to 755.09 / 14.63, profiling on | [Same-binary comparison](../decode-bounds-comparison.json): attention 607.97 to 222.12 ms at equal 752 layer calls / 76 target evaluations per layer. Actual outputs differ, drafts 100/53 to 97/53. [Default enabled](../decode-bounds-default-deployment.json). |

Retention is supported by default deployment receipts, the source overlay, and [the restored span checkpoint](../checkpoint-core8k-span-evaluation.json), rather than being inferred solely from a faster run. Normal sequential runs include other changes and varying acceptance: CPU doorbell's normal 674.28 / 12.51 to 718.08 / 14.03 also includes DFlash window trimming; decode bounds' normal 775.16 / 14.49 to 749.28 / 14.60 uses a new CUDA binary. No isolated end-to-end effect is claimed from those bundles.

The contiguous-mask path checks single-sequence contiguous positions and empty padding; other layouts keep generic fill. The SWA allocator already supports compact sizing `min(base cells, window + ubatch)`, padded to 256 unless `swa_full` is enabled. That does not prove a future 128k allocation or speed.

### Rejected or superseded candidates

| Attempt | Candidate / control, prefill and generation | Decision and rollback evidence |
|---|---|---|
| Initial GPU-only graph spans | 468.07 / 13.72; debug 482.45 / 13.71; no matched control | Repeated graph warmup resets in the debug log; useful replay not established. Superseded by the later controlled section-graph candidate. Whole graphs with CPU dispatch/readback remain unsupported. |
| Custom singleton IQ dot path | 503.31 / 12.57; no isolated control | Slower singleton path explicitly restored in [dual-layer deployment](../dual-layer-prefill-deployment.json); grouped custom kernels remain for counts 2-4. |
| One readback wait via stream dependency | 493.98 / 12.05; no matched control | Entry wait reports zero but decode readback wait 1621.64 ms. [Fused-bulk deployment](../fused-bulk-gate-up-deployment.json) explicitly restores the measured host event wait. |
| Mapped input publication | On 750.90 / 15.04; off 773.78 / 14.28 | Equal call counts: combined entry/readback wait 1175.48 vs 1171.74 ms; different output/draft acceptance 88/57 vs 93/54. No isolated gain; [comparison](../input-publication-comparison.json), [restored source/binary](../input-publication-revert.json). |
| Scoped caller affinity to reserved core | On 762.33 / 15.35; off 778.58 / 15.58 | All enabled boundary samples on reserved core, but CPU fused 1707.52 vs 1595.58 ms. Different outputs/acceptance; [comparison](../caller-affinity-comparison.json), [rollback](../caller-affinity-rollback.json). Corrected placement diagnostics retained. |
| GPU-only section graphs, profiling on | On 763.89 / 15.07; off 779.10 / 15.57 | Dispatches 23,776 to 5,944 (75% fewer), outside-hybrid host time 401.45 to 250.11 ms; no total gain. [Profile comparison](../hybrid-span-graphs-profile-comparison.json). |
| Same section graphs, profiling off | On 778.30 / 15.67; off 779.18 / 16.07 | No useful throughput gain; different outputs/acceptance. [Production comparison](../hybrid-span-graphs-production-comparison.json), [rollback](../hybrid-span-graphs-rollback.json). |
| Paired IQ2 gate/up, initial version | On 752.03 / 15.64; off 780.07 / 16.94 | Assembly spilled accumulators/scales and did not reliably share activation loads; gate/up 1032.74 vs 929.85 ms. [Comparison](../paired-gate-up-initial-comparison.json). |
| Paired IQ2 gate/up, register rewrite | On 754.83 / 14.45; off 779.52 / 15.57 | Register reuse corrected (YMM8/10 activation sign work, YMM11/12 accumulators), but no gain; gate/up 1025.68 vs 1005.28 ms. [Comparison](../paired-gate-up-registers-comparison.json), [both variants restored](../paired-gate-up-rollback.json). |
| Expanded exact IQ2 CPU weight mirror, 144 bytes/block | On 742.72 / 13.13; off 783.67 / 16.85 | +38.8125 GiB RAM, 92 tensors, startup preparation 17,797.24 ms. CPU fused 2191.80 vs 1685.29 ms; scheduled payload 71,190.84 vs 50,577.87 MiB. [Comparison](../iq2-weight-cache-comparison.json), [six-file and binary rollback](../iq2-weight-cache-rollback.json). This is distinct from later lossless R4 packing. |

The section-graph candidate first failed to link because Windows does not export internal `ggml_graph_view`. It was changed to a local graph slice preserving dependency counts, compiled, and then measured. [Failed-build receipt](../hybrid-span-graphs-first-build-failed.json) records exit -1; there is no throughput measurement for that failed build. Source variants and assembly listings remain archived under `performance/candidates`.

Section graph attention timing omitted captured/replayed work. The apparent 48.1 vs 216.09 ms attention counter in its profile comparison is incomplete coverage, **not a faster attention result**. Paired-kernel and expanded-cache output arrays and acceptance differed; the observed throughput regressions are sufficient to reject an unhelpful candidate but do not isolate instruction, memory bandwidth, or caller placement effects. Scheduled weight bytes describe payload, not measured DRAM traffic. No standalone numerical equivalence suite was authored.

### Measurements that changed the next action

| Diagnostic | Observation | Conclusion and artifact |
|---|---|---|
| Nsight Systems attempt / internal events | Windows tracing provider required administrator privileges; no Nsight trace produced. Internal run 430.49 / 12.10. | Used optional internal events and CPU counters instead. [Deployment](../internal-timings-deployment.json). |
| Prefill transfer timeline | Span 11,546.474 ms; weight copy union 6,768.128 ms; expert union 4,070.433 ms; overlap only 81.824 ms. | Found serialization in the prefill pipeline; led to mapped metadata. [Analysis](../core8k-transfer-timeline-analysis.json). Detailed timeline source archived, normal state restored. |
| Attention timeline | Full attention 369.218 ms (12 calls); SWA 2042.002 ms (36 calls); total 2411.220 ms. | Led to exact SWA tile lower bounds. [Analysis](../core8k-attention-timeline-analysis.json). Includes queue gaps/KV conversion, excludes draft injection. |
| CPU mask timing | Two mask fills 268.059 + 268.174 = 536.233 ms. | Led to contiguous range fill. [Deployment](../mask-timing-deployment.json), archived timing source. |
| GPU waiting for CPU experts | First 16 batches: CPU fused 1672.09 ms, GPU CPU wait 1001.18 ms, cached GPU 668.57 ms, readback 1343.38 ms. | Led to mapped CPU completion. [Analysis](../core8k-cpu-wait-analysis.json). Draft rounds total 359.409 ms, 5.32% of generation; first-16 target counters do not cover all 25 rounds. |
| Host launch and between-MoE spans | 752 nodes / 76 target evaluations per layer: host inside hybrid 3201.74 ms, outside 433.18 ms; attention 609.37 ms, CPU 1695.32 ms. | Directed decode bounds and graph sections. [Analysis](../launch-span-profile-analysis.json). Outside time includes bookkeeping/fusion, not just kernel launches. |
| Caller first sampler | 15 worker affinity successes, 0 failures; physical-core counters missed logical siblings. | Primary-mask contention interpretation invalid; preserved [correction](../caller-placement-primary-sampler-analysis.json). |
| Corrected sibling sampler | 924/1504 boundary samples on worker physical cores, 580 on reserved core (61.44% worker); workers pinned successfully. | Led to scoped affinity attempt, not a time-weighted contention finding. [Analysis](../caller-sibling-sampling-analysis.json). |
| Worker phase drain | Phase wall 1697.30 ms; active drain span 1692.84 ms; only 4.46 ms (0.263%) outside active drain. | Wakeup/phase boundary cost too small to be primary target in this run. [Analysis](../phase-drain-profile-analysis.json). Temporary timers removed on paired-kernel rollback. |
| Cache capacity / past routing | 35,720 selections; actual 17,056 hits (47.75%); hindsight fixed 24,606 (68.89%); hindsight global 24,779 (69.37%), budget 8192 MiB. | Unequal capacity adds only about 0.48 percentage points over fixed hindsight. [Evidence](../core8k-cache-decision-evidence.json). These are retrospective estimates, never predicted future hits. Normal baseline restores old admission with diagnostic counters disabled. |

Cache slot packing and cost-aware admission are separate attempts documented in their own comparisons; capacity diagnostics do not establish those candidates' retention. Profiled timing changes alone do not represent normal serving speed. Counters distinguish expert jobs, unique groups, target evaluations, drafted tokens and accepted tokens.

### Power policy and unresolved stability

The [direct GPU clock-lock attempt](../gpu-clock-hold-comparison.json) requested 2400-3120 MHz and failed with exit 4: the current user lacked permission. **No clock-held inference comparison ran.** No successful administrator helper is evidenced here.

The temporary [NVAPI per-application maximum-performance policy](../laguna-power-profile-change.json) was applied and read back for the exact Laguna server path. Its run measured **523.90 / 12.26 tok/s**; the checkpoint reports decode remained P3 around 900 MHz. No matched paired control establishes a causal policy benefit. The [restoration readback](../nvidia-power-profiles-restored.json) again found no server application profile, matching the pre-change absence. The [application-power checkpoint](../checkpoint-core8k-application-power.json) explicitly records restoration. A policy preference is not a successful direct clock lock.

The earlier incident where desktop application windows disappeared while the desktop remained visible **remains unexplained**. Prior event-log checks did not identify a cause. These performance receipts and a restored NVIDIA application policy do not prove that incident fixed. This documentation task did not change processes, drivers, clocks or system settings.

### Evidence gaps and coverage

There is no matched same-binary on/off receipt for the original graph spans, singleton IQ extension, one-readback wait or NVIDIA application policy. Their run rates are retained as observations and rollback/deployment records establish their disposition. A dedicated original-spans rollback receipt was not located; later source and checkpoints establish whole-hybrid capture remains disabled. Historical receipts establish dated results and rollback actions, not present server health or live speed.

The structured companion covers **27 attempts/diagnostics and 42 exact inference labels**, including raw timing fields, output token digests, pairwise output equality, draft/accepted counts, launch receipts, artifacts and evidence limitations. None meets or proves the final 900/30, near-full 128k, or full non-UI API requirements.
