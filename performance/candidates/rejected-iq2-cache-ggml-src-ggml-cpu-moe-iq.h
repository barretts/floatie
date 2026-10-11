#pragma once

#include "ggml.h"

bool ggml_cpu_moe_iq_supported(ggml_type type);

// 144 bytes per 256 values: original FP16 scale and eight sub-scales, then
// exact magnitude/sign labels packed as nibbles. No weight requantization.
size_t ggml_cpu_moe_iq2_cached_row_size(int width);
void ggml_cpu_moe_iq2_cache_encode(const void * source, void * destination, int width);
float ggml_cpu_moe_iq2_cached_dot(const void * weights, int width, const void * activation);
void ggml_cpu_moe_iq2_cached_gate_up(const void * gate, const void * up,
        size_t row_bytes, int width, const void * const * activations, int count,
        float * const * outputs, int first, int end);

// Reuse each decoded weight block across up to four Q8_K activation rows.
void ggml_cpu_moe_iq_rows(ggml_type type, const void * weights, size_t row_bytes,
        int width, const void * const * activations, int count,
        float * const * outputs, int first, int end);

void ggml_cpu_moe_iq_gate_up(ggml_type type, const void * gate, const void * up,
        size_t gate_stride, size_t up_stride, int width,
        const void * const * activations, int count,
        float * const * outputs, int first, int end);
