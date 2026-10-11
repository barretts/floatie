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

// Lossless CPU-only IQ2_S layout. A group holds four output rows, interleaved
// within each 256-column block. The original tensors remain the GPU copy source.
// Returns zero for unsupported widths or builds without AVX2.
size_t ggml_cpu_moe_iq2_r4_group_size(int width);
void ggml_cpu_moe_iq2_r4_encode_group(const void * source, void * destination,
        int width, size_t source_row_bytes);

// Q8_K activations, count 1..4; first/end are output rows aligned to four.
// group_bytes is the full width of one four-row group, not an individual row.
void ggml_cpu_moe_iq2_r4_rows(const void * packed, size_t group_bytes, int width,
        const void * const * activations, int count,
        float * const * outputs, int first, int end);
void ggml_cpu_moe_iq2_r4_gate_up(const void * packed_gate, const void * packed_up,
        size_t gate_group_bytes, size_t up_group_bytes, int width,
        const void * const * activations, int count,
        float * const * outputs, int first, int end);
