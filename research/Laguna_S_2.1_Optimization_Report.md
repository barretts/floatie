# Laguna S 2.1 Local Inference Optimization Report

**Hardware target:** RTX 4060 Ti 16GB, Threadripper 1950X (16c/32t, AVX2), 128GB DDR4-2133, measured CPU–GPU bandwidth ~6.6 GB/s  
**Current performance (8k):** 779 tok/s prefill, 16.1 tok/s generation  
**Targets:** 900 tok/s prefill, 30 tok/s generation  
**Model:** Poolside Laguna S 2.1 (UD-IQ3_S GGUF, mixed expert quantization, DFlash enabled)

**Date:** October 2026  
**Sources:** Primary documentation from Hugging Face (poolside/Laguna-S-2.1), Niko1221/Strata, related literature on MoE expert caching, and measured hardware constraints.

---

## Executive Summary

Laguna S 2.1 is a 118B total / ~8B active MoE (256 routed experts, top-10 + 1 shared, 48 layers with 12 global + 36 sliding-window-512 attention). Strata achieves high speed on Qwen3.8-Flash-Next primarily through an adaptive expert cache in residual VRAM, concurrent CPU computation of misses, and careful overlap. The same principles transfer to Laguna, but model-specific kernels, attention layout, and DFlash require reimplementation.

**30 tok/s generation is plausible** if expert-cache hit rate reaches ≥85–90% and residual misses are overlapped or cheapened. The current 16.1 tok/s indicates the GPU is frequently waiting on CPU experts or PCIe uploads. Prefill is already near the target and is secondary.

Highest-leverage path:
1. Adaptive expert cache with high hit rate (frequency-decay swaps + Least-Stale eviction).
2. Overlap residual GPU cache uploads with CPU work.
3. Multi-token Zen-1 AVX2 kernels for actual miss quant formats.
4. Compact SWA KV so VRAM remains available for experts.

---

## 1. Architecture Comparison: Strata (Qwen3.8-Flash-Next) vs Laguna S 2.1

### Established Facts

**Qwen3.8-Flash-Next (the “Qwen3.8 Flash Next” model)**  
- 125B total / ~6B activated + 51B n-gram embeddings + 4B MTP.  
- Hybrid Gated DeltaNet + Qwen Sparse Attention (QSA).  
- Large expert pool (~24,576 total experts in Strata documentation).  
- Built-in MTP draft (typically 2.4–3.2 tokens per verification pass).  
- Native 262k context (extensible toward 1M).

**Laguna S 2.1**  
- 118B total / ~8B activated.  
- 48 layers: exactly 12 global + 36 sliding-window (window 512).  
- 256 routed experts (top-10) + 1 shared expert.  
- Softplus gating, GQA (8 KV heads, head dim 128), per-head softplus output gating, per-layer-type RoPE.  
- 1,048,576 context.  
- Matched DFlash draft models.  
- UD-IQ3_S GGUF uses mixed expert quantization (IQ2_S, IQ4_XS, Q6_K variants).

**Strata (Niko1221/Strata) speed mechanisms**  
- Adaptive expert cache fills residual VRAM with hottest experts (static profile + online adaptation). Extra VRAM holds hundreds more experts.  
- All experts pinned in system RAM; CPU computes misses *in place* and in parallel with GPU work on cached experts (AVX-512/AVX2 multi-token kernels).  
- Chunked prefill (up to 8k) with next-layer expert streaming over PCIe while attention runs.  
- MTP speculative decoding.  
- Selective KV streaming past ~64k.  
- Model-specific kernels for its attention, residual, and quant formats.

ro99/strata is a separate general-purpose MoE engine and is not a fork of Niko1221/Strata.

### What Transfers vs What Requires Reimplementation

| Mechanism | Transfers? | Notes |
|-----------|------------|-------|
| Adaptive VRAM expert cache + pinned RAM | Yes | Highest leverage |
| Concurrent CPU computation of misses | Yes (with stream ordering) | Critical for residual misses |
| Prefill expert streaming | Largely yes | Incremental for prefill target |
| Speculative verification batching | Idea yes; model no | DFlash ≠ MTP |
| Attention kernels | No | GDN+QSA vs hybrid full/SWA + softplus |
| Quantized kernels | No | Must match Laguna’s mixed expert quants |

### Feasibility of 30 tok/s

**Estimate:** Plausible with ≥85–90% expert-cache hit rate, good overlap of residual misses, and DFlash acceptance in the ~4–6 range.  
**Current gap:** 16.1 tok/s implies either low hit rate, non-competitive Zen-1 kernels, or upload schedule that leaves the GPU idle.  
**Hardware ceilings:** Zen-1 AVX2 is weaker than modern CPUs; measured 6.6 GB/s PCIe is the upload ceiling.

---

## 2. CPU Experts and GPU Cache Uploads

### Established Facts
- CPU gate/up and down calculations dominate the CPU expert path.  
- Worker wakeup and phase boundaries are only ~0.26% of measured phase time.  
- Two paired IQ2 gate/up kernel candidates did not improve throughput.  
- GPU cache-refresh uploads are currently queued after CPU expert computation.

### Recommendations
1. **Multi-token Zen-1 AVX2 kernels** for the actual mixed quant types that dominate misses (decode weights once per verification batch; software prefetch ~2 KB).  
2. **Stream ordering experiment:** Issue cache-refresh uploads on a separate CUDA stream after GPU has finished reading cached weights and while CPU finishes misses. Pinned buffers must remain valid until copy completes.  
3. **NUMA-aware worker placement** on the 1950X (multi-die).

**Important:** Overlap does not automatically help. It only helps if the upload was previously on the critical path. Measure with CUDA events.

### Minimal Comparison
Run the same 8k request with:
1. Baseline  
2. Upload-moved schedule only  
3. New AVX2 multi-token kernel only  
4. Both  

Record hit rate, CPU expert time, upload time, and wall-clock tok/s.

---

## 3. Sustaining Speed at 128k Context

### What Grows vs What Stays Constant
- **Grows:** KV of the 12 global attention layers (linear).  
- **Approximately constant:** KV of the 36 sliding-window layers (bounded by 512-token window + compact/ring allocation), bulk of expert-cache working set (if residual VRAM is preserved).

### Required Engine Capabilities
- Compact/ring allocation for SWA layers.  
- Efficient full and SWA attention kernels (plus softplus gating and per-layer RoPE).  
- Chunked prefill with expert streaming.  
- Explicit VRAM trade-off between expert cache and KV (elastic cache, optional streaming or low-bit global KV).  
- Speculative verification that does not re-materialize the full long context.

### Likely Bottlenecks at 128k
- VRAM contention between growing global KV and expert cache (hit-rate drop is the fastest way to lose generation speed).  
- Global-layer attention bandwidth/compute.  
- Increased PCIe traffic if cache shrinks.  
- Possible DFlash acceptance drop.

---

## 4. Path to 30 tok/s (Prioritized)

1. **Maximize expert-cache hit rate** (largest lever). Adaptive cache sized to residual VRAM after KV/attention/shared/draft. Target ≥85–90%.  
2. **Overlap residual misses** (upload schedule experiment).  
3. **Faster Zen-1 multi-token AVX2 kernels** for actual miss formats.  
4. **Protect expert-cache VRAM** with compact SWA KV.  
5. **Confirm DFlash acceptance length** (log mean accepted tokens per verification pass).

**Realistic outcome:** With hit rate ≥85–90% + overlapped uploads + decent multi-token kernels, 25–35 tok/s at 8k is plausible. 30 tok/s is not guaranteed on Zen 1 + 6.6 GB/s PCIe if misses remain frequent.

---

## 5. Adaptive Expert Caching Algorithms

### Core Observation
Classic LRU/LFU perform poorly for MoE. Access is layer-sequential within a forward pass, not primarily temporal. Pure recency produces collision misses (evicting something needed again in the same pass).

### Recommended Algorithms for Laguna

| Priority | Algorithm | Why | Cost | Expected Impact |
|----------|-----------|-----|------|-----------------|
| 1 | Frequency-decay periodic swap (Strata-style) | Proven, works with existing CPU-miss path | Low | High |
| 2 | Least-Stale eviction | Fixes layer-sequential collisions | Low–medium | Medium–high |
| 3 | Offline profile + online adaptation | Strong warm start from coding traces | Low | Medium |
| 4 | HOT + STAGE with cheap predictor | Best theoretical, PCIe-sensitive | Medium–high | Conditional |
| 5 | Admission filter (2-touch) or ARC | Prevents thrashing | Low | Medium |

**Strata adaptive tier details (reference implementation):**  
Maintain routing counts per (layer, expert). Every few verification windows, decay counts (default ×0.7) and swap highest-count missing experts into VRAM in place of lowest-count resident ones. Tuned mode uses more frequent re-ranking and slower decay when cache covers 20–60% of experts. Measured: misses −31%, hit rate 90.8% → 93.4%.

**Least-Stale:** Partition into “current” (this pass) and “stale” (previous passes) queues; preferentially evict stale, then far-layer experts. Literature reports large reductions in collision misses versus LRU.

### Practical Implementation Order
1. Instrument per-(layer, expert) counts and current hit rate.  
2. Implement frequency-decay swap (decay 0.7–0.9, every 2–4 windows, swap budget 50–200).  
3. Add Least-Stale as victim selection inside swaps.  
4. Only then consider predictors or admission filters if hit rate remains <85%.

---

## 6. Recommended Measurement Plan

On the identical 8k inference request, measure for each change:
- Expert-cache hit rate  
- CPU expert time  
- Upload time (CUDA events) and whether GPU stream was idle  
- DFlash acceptance length  
- Wall-clock prefill and generation tok/s  

These numbers determine whether 30 tok/s is reachable or whether the hardware wall has been hit.

---

## Key References
- poolside/Laguna-S-2.1 model card (Hugging Face)  
- Niko1221/Strata: HOW_IT_WORKS.md, DETAILS.md, adaptive tier PRs  
- SpecMD (Least-Stale eviction)  
- ExpertFlow, Mira, and related MoE offloading literature  

**End of report.**
