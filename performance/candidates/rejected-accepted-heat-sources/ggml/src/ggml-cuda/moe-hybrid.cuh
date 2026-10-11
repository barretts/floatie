#pragma once

#include "common.cuh"

void ggml_cuda_op_moe_hybrid(ggml_backend_cuda_context & ctx, ggml_tensor * dst);
void ggml_cuda_moe_hybrid_prepare_graph(ggml_backend_cuda_context & ctx, ggml_cgraph * graph);
void ggml_cuda_moe_hybrid_prefill_begin(ggml_backend_cuda_context & ctx, ggml_cgraph * graph);
size_t ggml_cuda_moe_hybrid_attention_begin(ggml_backend_cuda_context & ctx, const ggml_tensor * node);
void ggml_cuda_moe_hybrid_attention_end(ggml_backend_cuda_context & ctx, size_t interval);
void ggml_cuda_moe_hybrid_cleanup(ggml_backend_cuda_context & ctx);
void ggml_cuda_moe_hybrid_accept(ggml_backend_cuda_context & ctx, int32_t n_valid, int32_t n_verified);
