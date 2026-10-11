#pragma once

#include "ggml.h"

bool ggml_cpu_moe_iq_supported(ggml_type type);

// Reuse each decoded weight block across up to four Q8_K activation rows.
void ggml_cpu_moe_iq_rows(ggml_type type, const void * weights, size_t row_bytes,
        int width, const void * const * activations, int count,
        float * const * outputs, int first, int end);

void ggml_cpu_moe_iq_gate_up(ggml_type type, const void * gate, const void * up,
        size_t gate_stride, size_t up_stride, int width,
        const void * const * activations, int count,
        float * const * outputs, int first, int end);
