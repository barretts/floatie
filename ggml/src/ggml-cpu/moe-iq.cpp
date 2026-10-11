/*
MIT License

Copyright (c) 2026 Niko1221 and the Strata contributors

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
