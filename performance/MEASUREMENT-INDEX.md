# Floatie measurement index

Compiled from saved receipts on 2026-10-11. The performance goal is paused. This documentation task ran no inference requests.

## Reading the table

Runs differ in prompt size, context configuration, expert cache, drafting, profiling and prompt-cache state. Use the controlled pairs in [Attempts and results](ATTEMPTS-AND-RESULTS.md) to assess an optimization. The table retains every saved response receipt, including slow and cached runs. The eight early receipts without a saved recall-check field were reviewed from their saved response content; these are marked `(content review)`. Original fields remain unchanged in the evidence ledger. `Unanswered` means the response did not supply the checkpoint answer within its output cap. Throughput is rounded to two decimals here; exact values and SHA-256 hashes are in [the evidence ledger](attempts-ledger.json). Labels containing `8k` describe the saved workload and do not prove every early server had an 8192-token context.

`cache_n` is reused prompt tokens, not VRAM expert-cache size. Draft columns count proposed / accepted draft tokens. Output is the response timing count.

**Coverage:** 98 saved response measurements from 336 evidence JSON files.

| Receipt | Prompt | Output | cache_n | Prefill tok/s | Generation tok/s | Draft proposed / accepted | Recall order | Truncated |
|---|---:|---:|---:|---:|---:|---:|---|---|
| [adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 | 80 | 0 | 257.88 | 9.04 | unrecorded / unrecorded | correct (content review) | False |
| [core8k-accepted-heat-off-dflash4-q8-cache6144.json](core8k-accepted-heat-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 790.30 | 17.38 | 88 / 56 | correct | False |
| [core8k-accepted-heat-on-dflash4-q8-cache6144.json](core8k-accepted-heat-on-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 790.49 | 15.58 | 100 / 53 | correct | False |
| [core8k-after-accepted-heat-production-dflash4-q8-cache6144.json](core8k-after-accepted-heat-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 782.48 | 16.62 | 96 / 55 | correct | False |
| [core8k-after-cache-evaluation-production-dflash4-q8-cache6144.json](core8k-after-cache-evaluation-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 788.71 | 15.19 | 97 / 53 | correct | False |
| [core8k-after-caller-evaluation-production-dflash4-q8-cache6144.json](core8k-after-caller-evaluation-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 780.38 | 16.09 | 93 / 54 | correct | False |
| [core8k-after-cpu-evaluation-production-dflash4-q8-cache6144.json](core8k-after-cpu-evaluation-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 778.98 | 16.08 | 96 / 54 | correct | False |
| [core8k-after-r4-production-dflash4-q8-cache6144.json](core8k-after-r4-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 770.83 | 15.85 | 100 / 54 | correct | False |
| [core8k-after-research-production-dflash4-q8-cache6144.json](core8k-after-research-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 760.38 | 14.86 | 101 / 53 | correct | False |
| [core8k-after-span-evaluation-production-dflash4-q8-cache6144.json](core8k-after-span-evaluation-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 778.41 | 17.50 | 86 / 56 | correct | False |
| [core8k-after-wide-bulk-production-dflash4-q8-cache6144.json](core8k-after-wide-bulk-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 775.69 | 15.32 | 100 / 53 | correct | False |
| [core8k-application-power-dflash4-q8-cache6144.json](core8k-application-power-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 523.90 | 12.26 | 96 / 54 | correct | False |
| [core8k-attention-timeline-dflash4-q8-cache6144.json](core8k-attention-timeline-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 582.01 | 12.20 | 96 / 55 | correct | False |
| [core8k-budgeted-admission-default-production-dflash4-q8-cache6144.json](core8k-budgeted-admission-default-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 788.23 | 16.10 | 100 / 54 | correct | False |
| [core8k-budgeted-admission-off-dflash4-q8-cache6144.json](core8k-budgeted-admission-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 788.04 | 15.44 | 100 / 54 | correct | False |
| [core8k-budgeted-admission-off-production-dflash4-q8-cache6144.json](core8k-budgeted-admission-off-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 790.08 | 16.17 | 93 / 54 | correct | False |
| [core8k-budgeted-admission-on-dflash4-q8-cache6144.json](core8k-budgeted-admission-on-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 785.88 | 15.94 | 100 / 54 | correct | False |
| [core8k-budgeted-admission-on-production-dflash4-q8-cache6144.json](core8k-budgeted-admission-on-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 789.85 | 16.50 | 93 / 54 | correct | False |
| [core8k-budgeted-dflash4-q8-cache6144-nsys.json](core8k-budgeted-dflash4-q8-cache6144-nsys.json) | 8064 | 80 | 0 | 445.91 | 11.35 | 102 / 52 | correct | False |
| [core8k-bulk-prefill-dflash4-q8-cache6144.json](core8k-bulk-prefill-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 506.34 | 13.18 | 100 / 53 | correct | False |
| [core8k-cache-capacity-profile-dflash4-q8-cache6144.json](core8k-cache-capacity-profile-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 511.53 | 11.60 | 100 / 53 | correct | False |
| [core8k-caller-affinity-dflash4-q8-cache6144.json](core8k-caller-affinity-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 762.33 | 15.35 | 95 / 54 | correct | False |
| [core8k-caller-affinity-off-dflash4-q8-cache6144.json](core8k-caller-affinity-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 778.58 | 15.58 | 100 / 53 | correct | False |
| [core8k-caller-placement-dflash4-q8-cache6144.json](core8k-caller-placement-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 761.93 | 14.76 | 100 / 53 | correct | False |
| [core8k-caller-sibling-sampling-dflash4-q8-cache6144.json](core8k-caller-sibling-sampling-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 758.85 | 14.37 | 100 / 53 | correct | False |
| [core8k-compact-decode-slots-dflash4-q8-cache6144.json](core8k-compact-decode-slots-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 511.02 | 11.67 | 96 / 54 | correct | False |
| [core8k-compact-decode-slots-warm-repeat.json](core8k-compact-decode-slots-warm-repeat.json) | 8064 | 80 | 0 | 538.10 | 11.98 | 100 / 53 | correct | False |
| [core8k-compact-expert-tiles-dflash4-q8-cache6144.json](core8k-compact-expert-tiles-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 515.30 | 14.46 | 96 / 54 | correct | False |
| [core8k-compact-expert-tiles-warm-repeat.json](core8k-compact-expert-tiles-warm-repeat.json) | 8064 | 80 | 0 | 514.89 | 12.08 | 100 / 53 | correct | False |
| [core8k-contiguous-mask-dflash4-q8-cache6144.json](core8k-contiguous-mask-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 754.45 | 13.69 | 96 / 54 | correct | False |
| [core8k-contiguous-mask-production-dflash4-q8-cache6144.json](core8k-contiguous-mask-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 775.16 | 14.49 | 93 / 54 | correct | False |
| [core8k-cost-aware-admission-dflash4-q8-cache6144.json](core8k-cost-aware-admission-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 510.58 | 12.01 | 96 / 55 | correct | False |
| [core8k-cpu-doorbell-control-dflash4-q8-cache6144.json](core8k-cpu-doorbell-control-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 737.23 | 11.83 | 100 / 53 | correct | False |
| [core8k-cpu-doorbell-dflash4-q8-cache6144.json](core8k-cpu-doorbell-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 719.20 | 13.08 | 100 / 53 | correct | False |
| [core8k-cpu-doorbell-production-dflash4-q8-cache6144.json](core8k-cpu-doorbell-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 718.08 | 14.03 | 96 / 55 | correct | False |
| [core8k-cpu-wait-timing-dflash4-q8-cache6144.json](core8k-cpu-wait-timing-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 717.15 | 11.83 | 100 / 54 | correct | False |
| [core8k-decode-bounds-control-dflash4-q8-cache6144.json](core8k-decode-bounds-control-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 779.30 | 13.79 | 100 / 53 | correct | False |
| [core8k-decode-bounds-dflash4-q8-cache6144.json](core8k-decode-bounds-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 755.09 | 14.63 | 97 / 53 | correct | False |
| [core8k-decode-bounds-production-dflash4-q8-cache6144.json](core8k-decode-bounds-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 749.28 | 14.60 | 100 / 53 | correct | False |
| [core8k-dflash-window-chunks-profile-dflash4-q8-cache6144.json](core8k-dflash-window-chunks-profile-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 718.13 | 11.58 | 100 / 53 | correct | False |
| [core8k-dflash-window-injection-production-dflash4-q8-cache6144.json](core8k-dflash-window-injection-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 705.72 | 11.51 | 100 / 53 | correct | False |
| [core8k-dflash4-q8-cache6144-pinned-batch8192.json](core8k-dflash4-q8-cache6144-pinned-batch8192.json) | 8064 | 80 | 0 | 422.24 | 11.22 | 96 / 55 | correct | False |
| [core8k-dual-layer-prefill-dflash4-q8-cache6144.json](core8k-dual-layer-prefill-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 190.19 | 14.11 | 92 / 55 | correct | False |
| [core8k-fused-bulk-gate-up-dflash4-q8-cache6144.json](core8k-fused-bulk-gate-up-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 511.11 | 12.07 | 96 / 55 | correct | False |
| [core8k-gpu-spans-debug-dflash4-q8-cache6144.json](core8k-gpu-spans-debug-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 482.45 | 13.71 | 100 / 53 | correct | False |
| [core8k-gpu-spans-dflash4-q8-cache6144.json](core8k-gpu-spans-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 468.07 | 13.72 | 97 / 53 | correct | False |
| [core8k-hybrid-span-graphs-dflash4-q8-cache6144.json](core8k-hybrid-span-graphs-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 763.89 | 15.07 | 96 / 54 | correct | False |
| [core8k-hybrid-span-graphs-off-dflash4-q8-cache6144.json](core8k-hybrid-span-graphs-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 779.10 | 15.57 | 100 / 53 | correct | False |
| [core8k-hybrid-span-graphs-off-production-dflash4-q8-cache6144.json](core8k-hybrid-span-graphs-off-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 779.18 | 16.07 | 96 / 54 | correct | False |
| [core8k-hybrid-span-graphs-production-dflash4-q8-cache6144.json](core8k-hybrid-span-graphs-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 778.30 | 15.67 | 100 / 53 | correct | False |
| [core8k-input-publication-control-dflash4-q8-cache6144.json](core8k-input-publication-control-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 773.78 | 14.28 | 93 / 54 | correct | False |
| [core8k-input-publication-dflash4-q8-cache6144.json](core8k-input-publication-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 750.90 | 15.04 | 88 / 57 | correct | False |
| [core8k-internal-timings-dflash4-q8-cache6144.json](core8k-internal-timings-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 430.49 | 12.10 | 100 / 53 | correct | False |
| [core8k-iq2-r4-off-dflash4-q8-cache6144.json](core8k-iq2-r4-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 783.12 | 15.36 | 95 / 53 | correct | False |
| [core8k-iq2-r4-on-dflash4-q8-cache6144.json](core8k-iq2-r4-on-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 754.22 | 15.57 | 96 / 54 | correct | False |
| [core8k-iq2-weight-cache-off-dflash4-q8-cache6144.json](core8k-iq2-weight-cache-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 783.67 | 16.85 | 86 / 56 | correct | False |
| [core8k-iq2-weight-cache-on-dflash4-q8-cache6144.json](core8k-iq2-weight-cache-on-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 742.72 | 13.13 | 100 / 53 | correct | False |
| [core8k-launch-span-profile-dflash4-q8-cache6144.json](core8k-launch-span-profile-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 755.45 | 13.42 | 97 / 53 | correct | False |
| [core8k-mapped-metadata-dflash4-q8-cache6144.json](core8k-mapped-metadata-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 579.76 | 11.75 | 100 / 53 | correct | False |
| [core8k-mapped-metadata-production-dflash4-q8-cache6144.json](core8k-mapped-metadata-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 596.44 | 12.04 | 101 / 53 | correct | False |
| [core8k-mask-lower-bound-dflash4-q8-cache6144.json](core8k-mask-lower-bound-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 648.09 | 11.52 | 100 / 53 | correct | False |
| [core8k-mask-lower-bound-production-dflash4-q8-cache6144.json](core8k-mask-lower-bound-production-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 674.28 | 12.51 | 96 / 54 | correct | False |
| [core8k-mask-timing-dflash4-q8-cache6144.json](core8k-mask-timing-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 720.57 | 14.19 | 96 / 55 | correct | False |
| [core8k-nodraft-cache8192-pinned-batch8192.json](core8k-nodraft-cache8192-pinned-batch8192.json) | 8064 | 80 | 0 | 464.63 | 9.44 | unrecorded / unrecorded | correct | False |
| [core8k-nodraft-cache8192-strata-stopped-repeat.json](core8k-nodraft-cache8192-strata-stopped-repeat.json) | 8064 | 80 | 0 | 499.06 | 9.56 | unrecorded / unrecorded | correct | False |
| [core8k-one-readback-wait-dflash4-q8-cache6144.json](core8k-one-readback-wait-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 493.98 | 12.05 | 96 / 54 | correct | False |
| [core8k-paired-gate-up-dflash4-q8-cache6144.json](core8k-paired-gate-up-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 752.03 | 15.64 | 92 / 55 | correct | False |
| [core8k-paired-gate-up-off-dflash4-q8-cache6144.json](core8k-paired-gate-up-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 780.07 | 16.94 | 92 / 56 | correct | False |
| [core8k-paired-gate-up-registers-dflash4-q8-cache6144.json](core8k-paired-gate-up-registers-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 754.83 | 14.45 | 100 / 53 | correct | False |
| [core8k-paired-gate-up-registers-off-dflash4-q8-cache6144.json](core8k-paired-gate-up-registers-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 779.52 | 15.57 | 96 / 54 | correct | False |
| [core8k-phase-drain-profile-dflash4-q8-cache6144.json](core8k-phase-drain-profile-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 764.10 | 15.86 | 89 / 55 | correct | False |
| [core8k-phase-memory-dflash4-q8-cache6144.json](core8k-phase-memory-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 361.55 | 14.82 | 92 / 55 | correct | False |
| [core8k-prefill-readiness-timeline-dflash4-q8-cache6144.json](core8k-prefill-readiness-timeline-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 779.15 | 15.42 | 93 / 54 | correct | False |
| [core8k-production-baseline-dflash4-q8-cache6144.json](core8k-production-baseline-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 509.66 | 12.22 | 96 / 55 | correct | False |
| [core8k-recency-submit-dflash4-q8-cache6144.json](core8k-recency-submit-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 463.56 | 13.77 | 96 / 54 | correct | False |
| [core8k-refresh-overlap-off-dflash4-q8-cache6144.json](core8k-refresh-overlap-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 786.98 | 16.12 | 96 / 55 | correct | False |
| [core8k-refresh-overlap-on-dflash4-q8-cache6144.json](core8k-refresh-overlap-on-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 764.00 | 15.74 | 96 / 54 | correct | False |
| [core8k-research-cache-fit-off-dflash4-q8-cache6144.json](core8k-research-cache-fit-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 779.08 | 16.15 | 96 / 54 | correct | False |
| [core8k-research-cache-fit-on-dflash4-q8-cache6144.json](core8k-research-cache-fit-on-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 720.32 | 16.07 | 96 / 54 | correct | False |
| [core8k-research-iq2-rows4-off-dflash4-q8-cache6144.json](core8k-research-iq2-rows4-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 776.60 | 15.22 | 100 / 53 | correct | False |
| [core8k-research-iq2-rows4-on-dflash4-q8-cache6144.json](core8k-research-iq2-rows4-on-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 749.48 | 14.44 | 100 / 53 | correct | False |
| [core8k-research-nodraft-cache-fit-q8-cache6144.json](core8k-research-nodraft-cache-fit-q8-cache6144.json) | 8064 | 80 | 0 | 778.41 | 11.36 | unrecorded / unrecorded | correct | False |
| [core8k-research-production-restored-dflash4-q8-cache6144.json](core8k-research-production-restored-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 755.98 | 15.30 | 100 / 53 | correct | False |
| [core8k-single-id-off-dflash4-q8-cache6144.json](core8k-single-id-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 785.52 | 16.77 | 96 / 55 | correct | False |
| [core8k-single-id-on-dflash4-q8-cache6144.json](core8k-single-id-on-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 783.26 | 15.63 | 100 / 53 | correct | False |
| [core8k-singleton-iq-dflash4-q8-cache6144.json](core8k-singleton-iq-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 503.31 | 12.57 | 100 / 53 | correct | False |
| [core8k-transfer-timeline-dflash4-q8-cache6144.json](core8k-transfer-timeline-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 503.31 | 12.49 | 92 / 55 | correct | False |
| [core8k-wide-bulk-on-dflash4-q8-cache6144.json](core8k-wide-bulk-on-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 748.59 | 15.05 | 100 / 53 | correct | False |
| [core8k-wide-bulk-reclaim-off-dflash4-q8-cache6144.json](core8k-wide-bulk-reclaim-off-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 778.62 | 15.68 | 100 / 53 | correct | False |
| [core8k-wide-bulk-reclaim-on-dflash4-q8-cache6144.json](core8k-wide-bulk-reclaim-on-dflash4-q8-cache6144.json) | 8064 | 80 | 0 | 761.56 | 15.19 | 100 / 53 | correct | False |
| [fixed-dflash4-cache3072-batch2048-8k-answer.json](fixed-dflash4-cache3072-batch2048-8k-answer.json) | 8192 | 80 | 0 | 197.07 | 2.57 | 298 / 2 | incorrect (content review) | False |
| [fixed-dflash4-cache3072-batch2048-8k-bos.json](fixed-dflash4-cache3072-batch2048-8k-bos.json) | 8192 | 80 | 0 | 187.95 | 2.56 | 298 / 2 | correct (content review) | False |
| [nodraft-cache3072-batch2048-8k-answer.json](nodraft-cache3072-batch2048-8k-answer.json) | 8192 | 80 | 0 | 206.94 | 9.46 | unrecorded / unrecorded | incorrect (content review) | False |
| [nodraft-cache3072-batch512-8k-answer.json](nodraft-cache3072-batch512-8k-answer.json) | 1 | 80 | 8191 | 2.37 | 9.86 | unrecorded / unrecorded | incorrect (content review) | False |
| [nodraft-cache3072-batch512-8k.json](nodraft-cache3072-batch512-8k.json) | 8192 | 80 | 0 | 73.64 | 9.49 | unrecorded / unrecorded | unanswered (content review) | False |
| [nodraft-cache5120-pinned-batch2048-8k-bos.json](nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 | 80 | 0 | 257.05 | 10.22 | unrecorded / unrecorded | correct (content review) | False |
| [overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](overlap-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 | 80 | 0 | 256.16 | 9.61 | unrecorded / unrecorded | correct (content review) | False |
| [submitted-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json](submitted-adaptive-nodraft-cache5120-pinned-batch2048-8k-bos.json) | 8192 | 80 | 0 | 242.12 | 10.63 | unrecorded / unrecorded | correct | False |

## Supporting records

Every pre-existing top-level evidence file is indexed below. A deployment record can capture an intermediate build-pending state; later measurements and rollback records determine its outcome. Request files and original records were preserved. One GPU snapshot uses UTF-16 and was decoded successfully. There were no JSON parse failures.

### Measurement records (98)

Listed individually in the measurement table above.

### Request records (6)

- [checkpoint-request-8064.json](checkpoint-request-8064.json)
- [checkpoint-request-8192.json](checkpoint-request-8192.json)
- [checkpoint-request-no-bos-8192.json](checkpoint-request-no-bos-8192.json)
- [checkpoint-request-thinking-8192.json](checkpoint-request-thinking-8192.json)
- [checkpoint-request-thinking.json](checkpoint-request-thinking.json)
- [checkpoint-request.json](checkpoint-request.json)

### Launch records (88)

- [accepted-heat-off-launch.json](accepted-heat-off-launch.json)
- [accepted-heat-on-launch.json](accepted-heat-on-launch.json)
- [after-accepted-heat-production-launch.json](after-accepted-heat-production-launch.json)
- [after-r4-production-launch.json](after-r4-production-launch.json)
- [after-readiness-production-launch.json](after-readiness-production-launch.json)
- [after-research-production-launch.json](after-research-production-launch.json)
- [after-transfer-timeline-production-launch.json](after-transfer-timeline-production-launch.json)
- [after-wide-bulk-production-launch.json](after-wide-bulk-production-launch.json)
- [application-power-launch.json](application-power-launch.json)
- [attention-timeline-launch.json](attention-timeline-launch.json)
- [budgeted-admission-off-launch.json](budgeted-admission-off-launch.json)
- [budgeted-admission-off-production-launch.json](budgeted-admission-off-production-launch.json)
- [budgeted-admission-on-launch.json](budgeted-admission-on-launch.json)
- [budgeted-admission-on-production-launch.json](budgeted-admission-on-production-launch.json)
- [budgeted-admission-production-launch.json](budgeted-admission-production-launch.json)
- [bulk-prefill-launch.json](bulk-prefill-launch.json)
- [cache-capacity-profile-launch.json](cache-capacity-profile-launch.json)
- [cache-evaluation-production-launch.json](cache-evaluation-production-launch.json)
- [caller-affinity-launch.json](caller-affinity-launch.json)
- [caller-affinity-off-launch.json](caller-affinity-off-launch.json)
- [caller-evaluation-production-launch.json](caller-evaluation-production-launch.json)
- [caller-placement-launch.json](caller-placement-launch.json)
- [caller-sibling-sampling-launch.json](caller-sibling-sampling-launch.json)
- [compact-decode-slots-launch.json](compact-decode-slots-launch.json)
- [compact-expert-tiles-launch.json](compact-expert-tiles-launch.json)
- [contiguous-mask-launch.json](contiguous-mask-launch.json)
- [contiguous-mask-production-launch.json](contiguous-mask-production-launch.json)
- [core8k-dflash4-launch.json](core8k-dflash4-launch.json)
- [core8k-gpu-spans-launch.json](core8k-gpu-spans-launch.json)
- [core8k-internal-timings-launch.json](core8k-internal-timings-launch.json)
- [core8k-recency-submit-launch.json](core8k-recency-submit-launch.json)
- [cost-aware-admission-launch.json](cost-aware-admission-launch.json)
- [cpu-doorbell-control-launch.json](cpu-doorbell-control-launch.json)
- [cpu-doorbell-launch.json](cpu-doorbell-launch.json)
- [cpu-doorbell-production-launch.json](cpu-doorbell-production-launch.json)
- [cpu-evaluation-production-launch.json](cpu-evaluation-production-launch.json)
- [cpu-wait-timing-launch.json](cpu-wait-timing-launch.json)
- [decode-bounds-control-launch.json](decode-bounds-control-launch.json)
- [decode-bounds-launch.json](decode-bounds-launch.json)
- [decode-bounds-production-launch.json](decode-bounds-production-launch.json)
- [dflash-window-chunks-profile-launch.json](dflash-window-chunks-profile-launch.json)
- [dflash-window-injection-production-launch.json](dflash-window-injection-production-launch.json)
- [dual-layer-prefill-launch.json](dual-layer-prefill-launch.json)
- [fused-bulk-gate-up-launch.json](fused-bulk-gate-up-launch.json)
- [gpu-spans-debug-launch.json](gpu-spans-debug-launch.json)
- [hybrid-span-graphs-launch.json](hybrid-span-graphs-launch.json)
- [hybrid-span-graphs-off-launch.json](hybrid-span-graphs-off-launch.json)
- [hybrid-span-graphs-off-production-launch.json](hybrid-span-graphs-off-production-launch.json)
- [hybrid-span-graphs-production-launch.json](hybrid-span-graphs-production-launch.json)
- [input-publication-control-launch.json](input-publication-control-launch.json)
- [input-publication-launch.json](input-publication-launch.json)
- [iq2-r4-off-first-launch-ram-release.json](iq2-r4-off-first-launch-ram-release.json)
- [iq2-r4-off-launch.json](iq2-r4-off-launch.json)
- [iq2-r4-on-launch.json](iq2-r4-on-launch.json)
- [iq2-rows4-off-launch.json](iq2-rows4-off-launch.json)
- [iq2-rows4-on-launch.json](iq2-rows4-on-launch.json)
- [iq2-weight-cache-off-launch.json](iq2-weight-cache-off-launch.json)
- [iq2-weight-cache-on-launch.json](iq2-weight-cache-on-launch.json)
- [launch-span-profile-launch.json](launch-span-profile-launch.json)
- [mapped-metadata-launch.json](mapped-metadata-launch.json)
- [mapped-metadata-production-launch.json](mapped-metadata-production-launch.json)
- [mask-lower-bound-launch.json](mask-lower-bound-launch.json)
- [mask-lower-bound-production-launch.json](mask-lower-bound-production-launch.json)
- [mask-timing-launch.json](mask-timing-launch.json)
- [one-readback-wait-launch.json](one-readback-wait-launch.json)
- [paired-gate-up-launch.json](paired-gate-up-launch.json)
- [paired-gate-up-off-launch.json](paired-gate-up-off-launch.json)
- [paired-gate-up-registers-launch.json](paired-gate-up-registers-launch.json)
- [paired-gate-up-registers-off-launch.json](paired-gate-up-registers-off-launch.json)
- [phase-drain-profile-launch.json](phase-drain-profile-launch.json)
- [phase-memory-launch.json](phase-memory-launch.json)
- [prefill-readiness-timeline-launch.json](prefill-readiness-timeline-launch.json)
- [production-baseline-launch.json](production-baseline-launch.json)
- [refresh-overlap-off-launch.json](refresh-overlap-off-launch.json)
- [refresh-overlap-on-launch.json](refresh-overlap-on-launch.json)
- [research-cache-fit-off-launch.json](research-cache-fit-off-launch.json)
- [research-cache-fit-on-launch.json](research-cache-fit-on-launch.json)
- [research-nodraft-cache-fit-launch.json](research-nodraft-cache-fit-launch.json)
- [research-production-restored-launch.json](research-production-restored-launch.json)
- [single-id-off-launch.json](single-id-off-launch.json)
- [single-id-on-launch.json](single-id-on-launch.json)
- [single-id-restored-production-launch.json](single-id-restored-production-launch.json)
- [singleton-iq-launch.json](singleton-iq-launch.json)
- [span-evaluation-production-launch.json](span-evaluation-production-launch.json)
- [transfer-timeline-launch.json](transfer-timeline-launch.json)
- [wide-bulk-on-launch.json](wide-bulk-on-launch.json)
- [wide-bulk-reclaim-off-launch.json](wide-bulk-reclaim-off-launch.json)
- [wide-bulk-reclaim-on-launch.json](wide-bulk-reclaim-on-launch.json)

### Record records (137)

- [accepted-heat-comparison.json](accepted-heat-comparison.json)
- [accepted-heat-deployment.json](accepted-heat-deployment.json)
- [accepted-heat-rollback.json](accepted-heat-rollback.json)
- [after-accepted-heat-production-live-state.json](after-accepted-heat-production-live-state.json)
- [after-wide-bulk-production-live-state.json](after-wide-bulk-production-live-state.json)
- [attention-timeline-deployment.json](attention-timeline-deployment.json)
- [budgeted-admission-default-deployment.json](budgeted-admission-default-deployment.json)
- [budgeted-admission-deployment.json](budgeted-admission-deployment.json)
- [budgeted-admission-production-comparison.json](budgeted-admission-production-comparison.json)
- [budgeted-admission-production-live-state.json](budgeted-admission-production-live-state.json)
- [budgeted-admission-profile-comparison.json](budgeted-admission-profile-comparison.json)
- [bulk-prefill-deployment.json](bulk-prefill-deployment.json)
- [cache-capacity-profile-deployment.json](cache-capacity-profile-deployment.json)
- [caller-affinity-comparison.json](caller-affinity-comparison.json)
- [caller-affinity-deployment.json](caller-affinity-deployment.json)
- [caller-affinity-rollback.json](caller-affinity-rollback.json)
- [caller-placement-deployment.json](caller-placement-deployment.json)
- [caller-placement-primary-sampler-analysis.json](caller-placement-primary-sampler-analysis.json)
- [caller-sibling-sampling-analysis.json](caller-sibling-sampling-analysis.json)
- [caller-sibling-sampling-deployment.json](caller-sibling-sampling-deployment.json)
- [checkpoint-core-streaming.json](checkpoint-core-streaming.json)
- [checkpoint-core8k-accepted-heat-evaluation.json](checkpoint-core8k-accepted-heat-evaluation.json)
- [checkpoint-core8k-after-transfer-timeline.json](checkpoint-core8k-after-transfer-timeline.json)
- [checkpoint-core8k-application-power.json](checkpoint-core8k-application-power.json)
- [checkpoint-core8k-budgeted-admission.json](checkpoint-core8k-budgeted-admission.json)
- [checkpoint-core8k-cache-evaluation.json](checkpoint-core8k-cache-evaluation.json)
- [checkpoint-core8k-caller-evaluation.json](checkpoint-core8k-caller-evaluation.json)
- [checkpoint-core8k-contiguous-mask.json](checkpoint-core8k-contiguous-mask.json)
- [checkpoint-core8k-cpu-doorbell.json](checkpoint-core8k-cpu-doorbell.json)
- [checkpoint-core8k-decode-bounds.json](checkpoint-core8k-decode-bounds.json)
- [checkpoint-core8k-mapped-metadata.json](checkpoint-core8k-mapped-metadata.json)
- [checkpoint-core8k-mask-lower-bound.json](checkpoint-core8k-mask-lower-bound.json)
- [checkpoint-core8k-production-baseline.json](checkpoint-core8k-production-baseline.json)
- [checkpoint-core8k-span-evaluation.json](checkpoint-core8k-span-evaluation.json)
- [checkpoint-core8k-wide-bulk-evaluation.json](checkpoint-core8k-wide-bulk-evaluation.json)
- [checkpoint-paused-20261011.json](checkpoint-paused-20261011.json)
- [checkpoint-research-20261011.json](checkpoint-research-20261011.json)
- [compact-decode-slots-deployment.json](compact-decode-slots-deployment.json)
- [compact-expert-tiles-deployment.json](compact-expert-tiles-deployment.json)
- [contiguous-mask-comparison.json](contiguous-mask-comparison.json)
- [contiguous-mask-deployment.json](contiguous-mask-deployment.json)
- [contiguous-mask-production-comparison.json](contiguous-mask-production-comparison.json)
- [core-streaming-deployment.json](core-streaming-deployment.json)
- [core8k-attention-timeline-analysis.json](core8k-attention-timeline-analysis.json)
- [core8k-budgeted-dflash4-launch.json](core8k-budgeted-dflash4-launch.json)
- [core8k-cache-decision-evidence.json](core8k-cache-decision-evidence.json)
- [core8k-cpu-wait-analysis.json](core8k-cpu-wait-analysis.json)
- [core8k-mapped-metadata-analysis.json](core8k-mapped-metadata-analysis.json)
- [core8k-mask-lower-bound-analysis.json](core8k-mask-lower-bound-analysis.json)
- [core8k-transfer-timeline-analysis.json](core8k-transfer-timeline-analysis.json)
- [cost-aware-admission-comparison.json](cost-aware-admission-comparison.json)
- [cost-aware-admission-deployment.json](cost-aware-admission-deployment.json)
- [cpu-doorbell-comparison.json](cpu-doorbell-comparison.json)
- [cpu-doorbell-default-deployment.json](cpu-doorbell-default-deployment.json)
- [cpu-doorbell-deployment.json](cpu-doorbell-deployment.json)
- [cpu-doorbell-production-comparison.json](cpu-doorbell-production-comparison.json)
- [cpu-wait-timing-deployment.json](cpu-wait-timing-deployment.json)
- [decode-bounds-comparison.json](decode-bounds-comparison.json)
- [decode-bounds-default-deployment.json](decode-bounds-default-deployment.json)
- [decode-bounds-deployment.json](decode-bounds-deployment.json)
- [decode-bounds-production-comparison.json](decode-bounds-production-comparison.json)
- [decode-cache-fit-deployment.json](decode-cache-fit-deployment.json)
- [decode-upload-budget-deployment.json](decode-upload-budget-deployment.json)
- [dflash-window-chunks-deployment.json](dflash-window-chunks-deployment.json)
- [dflash-window-injection-deployment.json](dflash-window-injection-deployment.json)
- [dflash-working-batch-deployment.json](dflash-working-batch-deployment.json)
- [dual-layer-prefill-deployment.json](dual-layer-prefill-deployment.json)
- [fused-bulk-gate-up-deployment.json](fused-bulk-gate-up-deployment.json)
- [gpu-clock-hold-comparison.json](gpu-clock-hold-comparison.json)
- [gpu-spans-deployment.json](gpu-spans-deployment.json)
- [hybrid-span-graphs-deployment.json](hybrid-span-graphs-deployment.json)
- [hybrid-span-graphs-first-build-failed.json](hybrid-span-graphs-first-build-failed.json)
- [hybrid-span-graphs-production-comparison.json](hybrid-span-graphs-production-comparison.json)
- [hybrid-span-graphs-profile-comparison.json](hybrid-span-graphs-profile-comparison.json)
- [hybrid-span-graphs-rollback.json](hybrid-span-graphs-rollback.json)
- [input-publication-comparison.json](input-publication-comparison.json)
- [input-publication-deployment.json](input-publication-deployment.json)
- [input-publication-revert.json](input-publication-revert.json)
- [internal-timings-deployment.json](internal-timings-deployment.json)
- [iq2-r4-comparison.json](iq2-r4-comparison.json)
- [iq2-r4-deployment.json](iq2-r4-deployment.json)
- [iq2-r4-rollback.json](iq2-r4-rollback.json)
- [iq2-rows4-comparison.json](iq2-rows4-comparison.json)
- [iq2-rows4-deployment.json](iq2-rows4-deployment.json)
- [iq2-rows4-rollback.json](iq2-rows4-rollback.json)
- [iq2-weight-cache-comparison.json](iq2-weight-cache-comparison.json)
- [iq2-weight-cache-deployment.json](iq2-weight-cache-deployment.json)
- [iq2-weight-cache-memory.json](iq2-weight-cache-memory.json)
- [iq2-weight-cache-rollback.json](iq2-weight-cache-rollback.json)
- [laguna-power-profile-change.json](laguna-power-profile-change.json)
- [launch-profile-deployment.json](launch-profile-deployment.json)
- [launch-span-profile-analysis.json](launch-span-profile-analysis.json)
- [mapped-metadata-comparison.json](mapped-metadata-comparison.json)
- [mapped-metadata-deployment.json](mapped-metadata-deployment.json)
- [mask-lower-bound-comparison.json](mask-lower-bound-comparison.json)
- [mask-lower-bound-deployment.json](mask-lower-bound-deployment.json)
- [mask-timing-deployment.json](mask-timing-deployment.json)
- [nvidia-power-profiles-applied.json](nvidia-power-profiles-applied.json)
- [nvidia-power-profiles-before.json](nvidia-power-profiles-before.json)
- [nvidia-power-profiles-restored.json](nvidia-power-profiles-restored.json)
- [one-readback-wait-deployment.json](one-readback-wait-deployment.json)
- [paired-gate-up-deployment.json](paired-gate-up-deployment.json)
- [paired-gate-up-initial-comparison.json](paired-gate-up-initial-comparison.json)
- [paired-gate-up-registers-comparison.json](paired-gate-up-registers-comparison.json)
- [paired-gate-up-registers-deployment.json](paired-gate-up-registers-deployment.json)
- [paired-gate-up-rollback.json](paired-gate-up-rollback.json)
- [pause-decode-cache-fit-restore.json](pause-decode-cache-fit-restore.json)
- [phase-drain-profile-analysis.json](phase-drain-profile-analysis.json)
- [phase-drain-profile-deployment.json](phase-drain-profile-deployment.json)
- [phase-memory-deployment.json](phase-memory-deployment.json)
- [prefill-readiness-timeline-analysis.json](prefill-readiness-timeline-analysis.json)
- [production-baseline-deployment.json](production-baseline-deployment.json)
- [recency-and-submit-deployment.json](recency-and-submit-deployment.json)
- [refresh-overlap-comparison.json](refresh-overlap-comparison.json)
- [refresh-overlap-deployment.json](refresh-overlap-deployment.json)
- [refresh-overlap-rollback.json](refresh-overlap-rollback.json)
- [research-20261011-active-state.json](research-20261011-active-state.json)
- [research-20261011-added-sources-reconciliation.json](research-20261011-added-sources-reconciliation.json)
- [research-20261011-local-reconciliation.json](research-20261011-local-reconciliation.json)
- [research-20261011-packed-routing-active-state.json](research-20261011-packed-routing-active-state.json)
- [research-cache-fit-comparison.json](research-cache-fit-comparison.json)
- [research-cache-fit-rollback.json](research-cache-fit-rollback.json)
- [research-dflash-on-off-comparison.json](research-dflash-on-off-comparison.json)
- [research-resume-cache-fit-deployment.json](research-resume-cache-fit-deployment.json)
- [single-id-comparison.json](single-id-comparison.json)
- [single-id-deployment.json](single-id-deployment.json)
- [single-id-rollback.json](single-id-rollback.json)
- [singleton-iq-deployment.json](singleton-iq-deployment.json)
- [span-evaluation-source-integrity-invalid.json](span-evaluation-source-integrity-invalid.json)
- [transfer-timeline-deployment.json](transfer-timeline-deployment.json)
- [wide-bulk-comparison.json](wide-bulk-comparison.json)
- [wide-bulk-deployment.json](wide-bulk-deployment.json)
- [wide-bulk-guard-observation.json](wide-bulk-guard-observation.json)
- [wide-bulk-on-gpu-snapshot.json](wide-bulk-on-gpu-snapshot.json)
- [wide-bulk-reclaim-deployment.json](wide-bulk-reclaim-deployment.json)
- [wide-bulk-reclaim-on-gpu-snapshot.json](wide-bulk-reclaim-on-gpu-snapshot.json)
- [wide-bulk-rollback.json](wide-bulk-rollback.json)

### Array records (7)

- [accepted-heat-original-sources.json](accepted-heat-original-sources.json)
- [after-accepted-heat-production-source-integrity.json](after-accepted-heat-production-source-integrity.json)
- [after-wide-bulk-production-source-integrity.json](after-wide-bulk-production-source-integrity.json)
- [budgeted-admission-production-source-integrity.json](budgeted-admission-production-source-integrity.json)
- [cache-evaluation-source-integrity.json](cache-evaluation-source-integrity.json)
- [caller-evaluation-source-integrity.json](caller-evaluation-source-integrity.json)
- [span-evaluation-source-integrity.json](span-evaluation-source-integrity.json)

