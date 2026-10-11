#pragma once

#include "ggml.h"
#include "ggml-backend.h"

#if defined(GGML_BACKEND_SHARED) && defined(_WIN32) && !defined(__MINGW32__)
#    if defined(GGML_CPU_MOE_IMPLEMENTATION)
#        define GGML_CPU_MOE_API __declspec(dllexport) extern
#    else
#        define GGML_CPU_MOE_API __declspec(dllimport) extern
#    endif
#else
#    define GGML_CPU_MOE_API GGML_BACKEND_API
#endif

#ifdef __cplusplus
extern "C" {
#endif

struct ggml_cpu_moe_pool;

// threads includes the calling thread. Calls on one pool must be serialized.
GGML_CPU_MOE_API struct ggml_cpu_moe_pool * ggml_cpu_moe_pool_new(int threads);
GGML_CPU_MOE_API void ggml_cpu_moe_pool_free(struct ggml_cpu_moe_pool * pool);
GGML_CPU_MOE_API const char * ggml_cpu_moe_pool_error(const struct ggml_cpu_moe_pool * pool);

// Host weights retain their tensor strides. Inputs, ids, mask and output are
// compact. A mask byte of one computes that selected expert; zero leaves its
// output untouched so the caller can merge independent GPU contributions.
// x: [K, x_cols, tokens], ids/mask: [topk, tokens], out: [M, topk, tokens].
GGML_CPU_MOE_API bool ggml_cpu_moe_compute_projection(
        struct ggml_cpu_moe_pool * pool,
        const struct ggml_tensor * weights,
        const float * x, int64_t x_cols,
        const int32_t * ids, const uint8_t * cpu_mask,
        int64_t topk, int64_t tokens, float * out);

// gate/up: [H, FF, experts], down: [FF, H, experts].
// x: [H, tokens], ids/mask: [topk, tokens], out: [H, topk, tokens].
// Router weights are applied by the graph after this unweighted expert result.
GGML_CPU_MOE_API bool ggml_cpu_moe_compute_fused(
        struct ggml_cpu_moe_pool * pool,
        const struct ggml_tensor * gate,
        const struct ggml_tensor * up,
        const struct ggml_tensor * down,
        const float * x,
        const int32_t * ids, const uint8_t * cpu_mask,
        int64_t topk, int64_t tokens, float * out);

#ifdef __cplusplus
}
#endif

