/*
MIT License

Copyright (c) 2026 Niko1221 and the Strata contributors
Copyright (c) 2023-2024 The ggml authors
Copyright (c) 2023-2024 The llama.cpp authors
Copyright (c) 2024-2025 The ik_llama.cpp authors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
// Adapted from Strata iq_avx2.cpp and iq_avx2_rows.inl at
// 82f46a8c8f475f001ad76d92f58f4a4f8ffb0253. Separate tensor strides; AVX2 only.
#include "moe-iq.h"

#if defined(__AVX2__)
#define GGML_COMMON_DECL_CPP
#define GGML_COMMON_IMPL_CPP
#include "ggml-common.h"
#include <immintrin.h>
#include <cmath>
#include <cstring>

namespace {
inline float h2f(uint16_t h) { return _mm_cvtss_f32(_mm_cvtph_ps(_mm_cvtsi32_si128((int) h))); }
inline uint32_t u32(const uint8_t* p) { uint32_t v; std::memcpy(&v, p, 4); return v; }
inline uint16_t u16(const uint8_t* p) { uint16_t v; std::memcpy(&v, p, 2); return v; }
inline uint64_t u64(const uint8_t* p) { uint64_t v; std::memcpy(&v, p, 8); return v; }

// 32 sign bits -> 32 bytes of -1 (bit set) / +1: ggml's bit_selector pattern, shared by all tokens.
inline __m256i sgn_vec(uint32_t m) {
    const __m128i bm = _mm_set1_epi32((int) m);
    const __m128i lo = _mm_shuffle_epi8(bm, _mm_setr_epi8(0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1));
    const __m128i hi = _mm_shuffle_epi8(bm, _mm_setr_epi8(2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3));
    const __m256i bits = _mm256_inserti128_si256(_mm256_castsi128_si256(lo), hi, 1);
    const __m256i sel = _mm256_setr_epi8(1, 2, 4, 8, 16, 32, 64, (char) 0x80,
                                         1, 2, 4, 8, 16, 32, 64, (char) 0x80,
                                         1, 2, 4, 8, 16, 32, 64, (char) 0x80,
                                         1, 2, 4, 8, 16, 32, 64, (char) 0x80);
    const __m256i nz = _mm256_cmpeq_epi8(_mm256_and_si256(bits, sel), sel);
    return _mm256_or_si256(nz, _mm256_set1_epi8(1));
}

// The two 16-value scales of one 32-value half (IQ2_XS, IQ2_S): int16 lanes 0-7 = a (values 0-15),
// 8-15 = b (values 16-31).  NOT a broadcast dword [a,b] - that would alternate the scales lane by lane.
inline __m256i sc16(int a, int b) {
    return _mm256_inserti128_si256(_mm256_castsi128_si256(_mm_set1_epi16((short) a)),
                                   _mm_set1_epi16((short) b), 1);
}
// One scale for the whole 32-value half (IQ2_XXS, IQ3_XXS, IQ3_S).
inline __m256i sc32(int s) { return _mm256_set1_epi16(s); }

inline float hsum8(__m256 v) {
    const __m128 lo = _mm256_castps256_ps128(v), hi = _mm256_extractf128_ps(v, 1);
    __m128 s = _mm_add_ps(lo, hi);
    s = _mm_hadd_ps(s, s);
    s = _mm_hadd_ps(s, s);
    return _mm_cvtss_f32(s);
}

template<int TY> struct Fmt32;
template <> struct Fmt32<22> {   // IQ2_S: d, qs[64] (32 grid bytes, 32 sign bytes), qh[8], scales[8]
    static constexpr int bytes = 82;
    static constexpr float K = 0.125f;
    static inline void decode(const uint8_t* b, int j, int half, __m256i& g, __m256i& sgn, __m256i& sc) {
        const uint8_t* qs = b + 2 + 8 * j;
        const uint8_t h = b[66 + 2 * j + half];
        const int o = 4 * half;
        g = _mm256_set_epi64x((long long) iq2s_grid[qs[o + 3] | ((h << 2) & 0x300)],
                              (long long) iq2s_grid[qs[o + 2] | ((h << 4) & 0x300)],
                              (long long) iq2s_grid[qs[o + 1] | ((h << 6) & 0x300)],
                              (long long) iq2s_grid[qs[o] | ((h << 8) & 0x300)]);
        const uint64_t m = u64(b + 2 + 32 + 8 * j);
        sgn = sgn_vec(half ? (uint32_t) (m >> 32) : (uint32_t) m);
        const uint8_t sb = b[74 + 2 * j + half];
        sc = sc16(2 * (sb & 15) + 1, 2 * (sb >> 4) + 1);
    }
};

template <> struct Fmt32<21> {   // IQ3_S: d, qs[64], qh[8], signs[32], scales[4]
    static constexpr int bytes = 110;
    static constexpr float K = 1.0f;
    static inline void decode(const uint8_t* b, int j, int half, __m256i& g, __m256i& sgn, __m256i& sc) {
        const uint8_t* q = b + 2 + 16 * j + 8 * half;
        const uint32_t h = b[66 + 2 * j + half];
#define G3(k) (int) iq3s_grid[q[k] | (((h >> k) & 1u) << 8)]
        g = _mm256_set_epi32(G3(7), G3(6), G3(5), G3(4), G3(3), G3(2), G3(1), G3(0));
#undef G3
        const uint64_t m = u64(b + 74 + 8 * j);
        sgn = sgn_vec(half ? (uint32_t) (m >> 32) : (uint32_t) m);
        const uint8_t s = b[106 + j];
        sc = sc32(half ? 2 * (s >> 4) + 1 : 2 * (s & 15) + 1);
    }
};

template <> struct Fmt32<23> {   // IQ4_XS: d, scales_h, scales_l[4], qs[128] - 136 B, 8 signed sub-scales
    // ggml's ggml_vec_dot_iq4_xs_q8_K: the same 16-value codebook as IQ4_NL, but each of the eight 32-value
    // sub-blocks carries its own 6-bit scale, read as two nibbles of scales_l[p] plus two bits of scales_h, and
    // used SIGNED as (ls - 32).  The scale therefore folds into the int16 operand of madd_epi16 instead of
    // becoming a float multiply per sub-block, and the codebook sign is carried the way iq4nl_rows does it.
    static constexpr int bytes = 136;
    static constexpr float K = 1.0f;
    static inline void decode(const uint8_t* b, int j, int half, __m256i& g, __m256i& sgn, __m256i& sc) {
        const int H = 2 * j + half;   // the eight 32-value sub-blocks, in the order the activation bytes come
        const __m128i values = _mm_loadu_si128((const __m128i*) kvalues_iq4nl);
        const __m128i bits = _mm_loadu_si128((const __m128i*) (b + 8 + 16 * H));
        const __m128i m4 = _mm_set1_epi8(0x0f);
        const __m256i q4 = _mm256_inserti128_si256(
            _mm256_castsi128_si256(_mm_shuffle_epi8(values, _mm_and_si128(bits, m4))),
            _mm_shuffle_epi8(values, _mm_and_si128(_mm_srli_epi16(bits, 4), m4)), 1);
        g   = _mm256_sign_epi8(q4, q4);                       // |w|, the unsigned operand of maddubs
        sgn = _mm256_sign_epi8(_mm256_set1_epi8(1), q4);      // w's sign, applied to the activation
        const int ls = ((b[4 + (H >> 1)] >> (4 * (H & 1))) & 0xf) | (((u16(b + 2) >> (2 * H)) & 3) << 4);
        sc = _mm256_set1_epi16((short) (ls - 32));
    }
};

template <int TY, int NT>
inline void row_dot(const uint8_t* row, int nblocks, const block_q8_K* const* y, float* res) {
    __m256 accf[NT];
    for (int t = 0; t < NT; ++t) accf[t] = _mm256_setzero_ps();
    for (int i = 0; i < nblocks; ++i) {
        const uint8_t* blk = row + (size_t) i * Fmt32<TY>::bytes;
        __m256i acci[NT];
        for (int t = 0; t < NT; ++t) acci[t] = _mm256_setzero_si256();
        for (int j = 0; j < 4; ++j) {
            for (int half = 0; half < 2; ++half) {
                __m256i g, sgn, sc;
                Fmt32<TY>::decode(blk, j, half, g, sgn, sc);
                const int off = 64 * j + 32 * half;
                for (int t = 0; t < NT; ++t) {
                    const __m256i yv = _mm256_loadu_si256((const __m256i*) (y[t][i].qs + off));
                    const __m256i ys = _mm256_sign_epi8(yv, sgn);
                    acci[t] = _mm256_add_epi32(acci[t], _mm256_madd_epi16(_mm256_maddubs_epi16(g, ys), sc));
                }
            }
        }
        const float dx = h2f(u16(blk)) * Fmt32<TY>::K;
        for (int t = 0; t < NT; ++t)
            accf[t] = _mm256_fmadd_ps(_mm256_set1_ps(dx * y[t][i].d), _mm256_cvtepi32_ps(acci[t]), accf[t]);
    }
    for (int t = 0; t < NT; ++t) res[t] = hsum8(accf[t]);
}


template<int TY, int NT, bool gate_up>
void apply_rows(const uint8_t * weights, const uint8_t * up, size_t stride, size_t up_stride,
        int width, const void * const * acts, float * const * outputs, int first, int end) {
    const block_q8_K * activation[NT];
    for (int t = 0; t < NT; ++t) activation[t] = static_cast<const block_q8_K *>(acts[t]);
    float gate_value[NT], up_value[NT];
    for (int r = first; r < end; ++r) {
        row_dot<TY, NT>(weights + size_t(r) * stride, width / QK_K, activation, gate_value);
        if constexpr (gate_up) {
            row_dot<TY, NT>(up + size_t(r) * up_stride, width / QK_K, activation, up_value);
        }
        for (int t = 0; t < NT; ++t) {
            if constexpr (gate_up) {
                outputs[t][r] = (gate_value[t] / (1.0f + std::exp(-gate_value[t]))) * up_value[t];
            } else {
                outputs[t][r] = gate_value[t];
            }
        }
    }
}

// Four output rows share each activation load. Adapted from the AVX2 path of
// mul_mat_iq2_s_r4_q8_k in ik_llama.cpp at
// 89bba35c8841618502b2be8273fb5265b405aca1. Read the original IQ2_S layout;
// no expanded or persistent repacked weight copy is allocated.
inline __m256i fold_four_rows(__m256i a, __m256i b, __m256i c, __m256i d) {
    const __m256i ab = _mm256_add_epi32(_mm256_unpacklo_epi32(a, b), _mm256_unpackhi_epi32(a, b));
    const __m256i cd = _mm256_add_epi32(_mm256_unpacklo_epi32(c, d), _mm256_unpackhi_epi32(c, d));
    return _mm256_add_epi32(_mm256_unpacklo_epi64(ab, cd), _mm256_unpackhi_epi64(ab, cd));
}

template<int NT>
void iq2_four_rows_dot(const uint8_t * weights, size_t stride, int nblocks,
        const block_q8_K * const * y, float (&result)[NT][4]) {
    const __m256i sign_mask = _mm256_set1_epi64x(0x8040201008040201ull);
    const __m256i sign_shuffle = _mm256_set_epi64x(
            0x0303030303030303ll, 0x0202020202020202ll,
            0x0101010101010101ll, 0x0000000000000000ll);
    const __m256i scale_shuffle[4] = {
        _mm256_set_m128i(_mm_set1_epi16(0x0302), _mm_set1_epi16(0x0100)),
        _mm256_set_m128i(_mm_set1_epi16(0x0706), _mm_set1_epi16(0x0504)),
        _mm256_set_m128i(_mm_set1_epi16(0x0b0a), _mm_set1_epi16(0x0908)),
        _mm256_set_m128i(_mm_set1_epi16(0x0f0e), _mm_set1_epi16(0x0d0c)),
    };
    __m256 acc[NT];
    for (int t = 0; t < NT; ++t) acc[t] = _mm256_setzero_ps();
    for (int block = 0; block < nblocks; ++block) {
        const uint8_t * b[4];
        for (int r = 0; r < 4; ++r) b[r] = weights + size_t(r) * stride + size_t(block) * 82;
        const __m128i half_scales = _mm_setr_epi16(
                (short) u16(b[0]), (short) u16(b[1]), (short) u16(b[2]), (short) u16(b[3]), 0, 0, 0, 0);
        const __m128 dx = _mm_cvtph_ps(half_scales);
        const __m256 dx4 = _mm256_insertf128_ps(_mm256_castps128_ps256(dx), dx, 1);
        __m256i sums[NT == 1 ? 4 : NT];
        for (int t = 0; t < (NT == 1 ? 4 : NT); ++t) sums[t] = _mm256_setzero_si256();
        for (int half = 0; half < 8; ++half) {
            const __m128i signs128 = _mm_set_epi32(
                    (int) u32(b[3] + 34 + 4 * half), (int) u32(b[2] + 34 + 4 * half),
                    (int) u32(b[1] + 34 + 4 * half), (int) u32(b[0] + 34 + 4 * half));
            const __m256i signs = _mm256_broadcastsi128_si256(signs128);
            const uint32_t packed_scales = uint32_t(b[0][74 + half]) |
                    (uint32_t(b[1][74 + half]) << 8) | (uint32_t(b[2][74 + half]) << 16) |
                    (uint32_t(b[3][74 + half]) << 24);
            __m128i scales = _mm_set1_epi32((int) packed_scales);
            scales = _mm_and_si128(_mm_unpacklo_epi8(scales, _mm_srli_epi16(scales, 4)), _mm_set1_epi8(15));
            scales = _mm_or_si128(_mm_slli_epi16(scales, 1), _mm_set1_epi8(1));
            const __m256i scales16 = _mm256_cvtepu8_epi16(scales);
            __m256i grid[4], row_sign[4], row_scale[4];
            for (int r = 0; r < 4; ++r) {
                const uint8_t * qs = b[r] + 2 + 4 * half;
                const uint8_t h = b[r][66 + half];
                grid[r] = _mm256_set_epi64x(
                        (long long) iq2s_grid[qs[3] | ((h << 2) & 0x300)],
                        (long long) iq2s_grid[qs[2] | ((h << 4) & 0x300)],
                        (long long) iq2s_grid[qs[1] | ((h << 6) & 0x300)],
                        (long long) iq2s_grid[qs[0] | ((h << 8) & 0x300)]);
                const __m256i shuffled = _mm256_shuffle_epi8(signs,
                        _mm256_add_epi8(sign_shuffle, _mm256_set1_epi8((char) (4 * r))));
                row_sign[r] = _mm256_or_si256(
                        _mm256_cmpeq_epi8(_mm256_and_si256(shuffled, sign_mask), sign_mask), _mm256_set1_epi8(1));
                row_scale[r] = _mm256_shuffle_epi8(scales16, scale_shuffle[r]);
            }
            for (int t = 0; t < NT; ++t) {
                const __m256i activation = _mm256_loadu_si256((const __m256i *) (y[t][block].qs + 32 * half));
                __m256i row_sum[4];
                for (int r = 0; r < 4; ++r) {
                    row_sum[r] = _mm256_madd_epi16(row_scale[r],
                            _mm256_maddubs_epi16(grid[r], _mm256_sign_epi8(activation, row_sign[r])));
                    if constexpr (NT == 1) sums[r] = _mm256_add_epi32(sums[r], row_sum[r]);
                }
                if constexpr (NT > 1) {
                    sums[t] = _mm256_add_epi32(sums[t], fold_four_rows(row_sum[0], row_sum[1], row_sum[2], row_sum[3]));
                }
            }
        }
        for (int t = 0; t < NT; ++t) {
            __m256i total;
            if constexpr (NT == 1) total = fold_four_rows(sums[0], sums[1], sums[2], sums[3]);
            else total = sums[t];
            acc[t] = _mm256_fmadd_ps(_mm256_mul_ps(dx4, _mm256_set1_ps(y[t][block].d)),
                    _mm256_cvtepi32_ps(total), acc[t]);
        }
    }
    for (int t = 0; t < NT; ++t) {
        const __m128 sum = _mm_add_ps(_mm256_castps256_ps128(acc[t]), _mm256_extractf128_ps(acc[t], 1));
        _mm_storeu_ps(result[t], _mm_mul_ps(_mm_set1_ps(0.125f), sum));
    }
}

template<int NT, bool gate_up>
void apply_iq2_rows4(const void * weights, const void * up, size_t stride, size_t up_stride,
        int width, const void * const * acts, float * const * outputs, int first, int end) {
    const block_q8_K * activation[NT];
    for (int t = 0; t < NT; ++t) activation[t] = static_cast<const block_q8_K *>(acts[t]);
    const auto * w = static_cast<const uint8_t *>(weights);
    const auto * u = static_cast<const uint8_t *>(up);
    float gate_value[NT][4], up_value[NT][4];
    int row = first;
    for (; row + 4 <= end; row += 4) {
        iq2_four_rows_dot<NT>(w + size_t(row) * stride, stride, width / QK_K, activation, gate_value);
        if constexpr (gate_up) {
            iq2_four_rows_dot<NT>(u + size_t(row) * up_stride, up_stride, width / QK_K, activation, up_value);
        }
        for (int t = 0; t < NT; ++t) {
            for (int r = 0; r < 4; ++r) {
                if constexpr (gate_up) {
                    const float g = gate_value[t][r];
                    outputs[t][row + r] = (g / (1.0f + std::exp(-g))) * up_value[t][r];
                } else outputs[t][row + r] = gate_value[t][r];
            }
        }
    }
    if (row < end) apply_rows<22, NT, gate_up>(w, u, stride, up_stride, width, acts, outputs, row, end);
}

template<bool gate_up>
void dispatch_iq2_rows4(const void * weights, const void * up, size_t stride, size_t up_stride,
        int width, const void * const * acts, int count, float * const * outputs, int first, int end) {
    GGML_ASSERT(width % QK_K == 0);
    switch (count) {
        case 1: apply_iq2_rows4<1, gate_up>(weights, up, stride, up_stride, width, acts, outputs, first, end); break;
        case 2: apply_iq2_rows4<2, gate_up>(weights, up, stride, up_stride, width, acts, outputs, first, end); break;
        case 3: apply_iq2_rows4<3, gate_up>(weights, up, stride, up_stride, width, acts, outputs, first, end); break;
        case 4: apply_iq2_rows4<4, gate_up>(weights, up, stride, up_stride, width, acts, outputs, first, end); break;
        default: GGML_ABORT("invalid IQ2 four-row group");
    }
}

template<int TY, bool gate_up>
void dispatch_count(const void * weights, const void * up, size_t stride, size_t up_stride,
        int width, const void * const * acts, int count, float * const * outputs, int first, int end) {
    const auto * w = static_cast<const uint8_t *>(weights);
    const auto * u = static_cast<const uint8_t *>(up);
    switch (count) {
        case 1: apply_rows<TY, 1, gate_up>(w, u, stride, up_stride, width, acts, outputs, first, end); break;
        case 2: apply_rows<TY, 2, gate_up>(w, u, stride, up_stride, width, acts, outputs, first, end); break;
        case 3: apply_rows<TY, 3, gate_up>(w, u, stride, up_stride, width, acts, outputs, first, end); break;
        case 4: apply_rows<TY, 4, gate_up>(w, u, stride, up_stride, width, acts, outputs, first, end); break;
        default: GGML_ABORT("invalid multi-token expert group");
    }
}

template<bool gate_up>
void dispatch(ggml_type type, const void * weights, const void * up, size_t stride, size_t up_stride,
        int width, const void * const * acts, int count, float * const * outputs, int first, int end) {
    GGML_ASSERT(width % QK_K == 0);
    switch (type) {
        case GGML_TYPE_IQ2_S: dispatch_count<22, gate_up>(weights, up, stride, up_stride, width, acts, count, outputs, first, end); break;
        case GGML_TYPE_IQ3_S: dispatch_count<21, gate_up>(weights, up, stride, up_stride, width, acts, count, outputs, first, end); break;
        case GGML_TYPE_IQ4_XS: dispatch_count<23, gate_up>(weights, up, stride, up_stride, width, acts, count, outputs, first, end); break;
        default: GGML_ABORT("unsupported multi-token expert quantization");
    }
}
} // namespace
#endif

bool ggml_cpu_moe_iq_supported(ggml_type type) {
#if defined(__AVX2__)
    return type == GGML_TYPE_IQ2_S || type == GGML_TYPE_IQ3_S || type == GGML_TYPE_IQ4_XS;
#else
    GGML_UNUSED(type);
    return false;
#endif
}

void ggml_cpu_moe_iq_rows(ggml_type type, const void * weights, size_t row_bytes,
        int width, const void * const * activations, int count,
        float * const * outputs, int first, int end) {
#if defined(__AVX2__)
    dispatch<false>(type, weights, nullptr, row_bytes, 0, width, activations, count, outputs, first, end);
#else
    GGML_ABORT("multi-token IQ kernels require AVX2");
#endif
}

void ggml_cpu_moe_iq_gate_up(ggml_type type, const void * gate, const void * up,
        size_t gate_stride, size_t up_stride, int width,
        const void * const * activations, int count,
        float * const * outputs, int first, int end) {
#if defined(__AVX2__)
    dispatch<true>(type, gate, up, gate_stride, up_stride, width, activations, count, outputs, first, end);
#else
    GGML_ABORT("multi-token IQ kernels require AVX2");
#endif
}

void ggml_cpu_moe_iq2_rows4(const void * weights, size_t row_bytes, int width,
        const void * const * activations, int count, float * const * outputs, int first, int end) {
#if defined(__AVX2__)
    dispatch_iq2_rows4<false>(weights, nullptr, row_bytes, 0, width, activations, count, outputs, first, end);
#else
    GGML_ABORT("IQ2 four-row kernels require AVX2");
#endif
}

void ggml_cpu_moe_iq2_gate_up_rows4(const void * gate, const void * up,
        size_t gate_stride, size_t up_stride, int width, const void * const * activations,
        int count, float * const * outputs, int first, int end) {
#if defined(__AVX2__)
    dispatch_iq2_rows4<true>(gate, up, gate_stride, up_stride, width, activations, count, outputs, first, end);
#else
    GGML_ABORT("IQ2 four-row kernels require AVX2");
#endif
}
