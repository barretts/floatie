#include "moe-hybrid.cuh"
#include "mmvq.cuh"
#include "ggml-cpu-moe.h"

#include <array>
#include <atomic>
#include <cmath>
#include <cstring>
#include <functional>
#include <numeric>
#include <string>

#if defined(__x86_64__) || defined(_M_X64) || defined(__i386__) || defined(_M_IX86)
#    include <immintrin.h>
#endif

// Declared here to avoid importing the MMQ kernel templates into this unit.
void ggml_cuda_mul_mat_q(ggml_backend_cuda_context & ctx, const ggml_tensor * src0,
        const ggml_tensor * src1, const ggml_tensor * ids, ggml_tensor * dst);
void ggml_cuda_mul_mat_q_bounded(ggml_backend_cuda_context & ctx, const ggml_tensor * src0,
        const ggml_tensor * src1, const ggml_tensor * ids, ggml_tensor * dst, int64_t max_expert_rows);

namespace {

constexpr size_t WEIGHT_PADDING = 4096;
constexpr size_t BULK_LAYER_LIMIT = 1024ull * 1024 * 1024;

void submit_stream(cudaStream_t stream) {
#if defined(_WIN32)
    const cudaError_t status = cudaStreamQuery(stream);
    if (status != cudaSuccess && status != cudaErrorNotReady) {
        CUDA_CHECK(status);
    }
#else
    (void) stream;
#endif
}

int env_int(const char * name, int fallback, int low, int high) {
    const char * value = std::getenv(name);
    if (!value || !*value) {
        return fallback;
    }
    char * end = nullptr;
    const long parsed = std::strtol(value, &end, 10);
    if (*end || parsed < low || parsed > high) {
        GGML_ABORT("invalid %s: %s (expected %d..%d)", name, value, low, high);
    }
    return static_cast<int>(parsed);
}

template<typename T> struct pinned_array {
    T * data = nullptr;
    size_t capacity = 0;

    ~pinned_array() {
        if (data) {
            CUDA_CHECK(cudaFreeHost(data));
        }
    }

    void reserve(size_t count) {
        if (count <= capacity) {
            return;
        }
        if (data) {
            CUDA_CHECK(cudaFreeHost(data));
        }
        capacity = std::max(count, capacity * 2);
        CUDA_CHECK(cudaHostAlloc(reinterpret_cast<void **>(&data), capacity * sizeof(T), cudaHostAllocPortable));
    }
};

struct device_weights {
    ggml_backend_buffer_t buffer = nullptr;
    size_t capacity = 0;

    ~device_weights() {
        clear();
    }

    void clear() {
        if (buffer) {
            ggml_backend_buffer_free(buffer);
        }
        buffer = nullptr;
        capacity = 0;
    }

    void reserve(int device, size_t bytes, cudaStream_t stream) {
        if (capacity >= bytes) {
            return;
        }
        if (buffer) {
            ggml_backend_buffer_free(buffer);
        }
        buffer = ggml_backend_buft_alloc_buffer(ggml_backend_cuda_buffer_type(device), bytes + WEIGHT_PADDING);
        GGML_ASSERT(buffer);
        ggml_backend_buffer_set_usage(buffer, GGML_BACKEND_BUFFER_USAGE_WEIGHTS);
        capacity = bytes;
        CUDA_CHECK(cudaMemsetAsync(ggml_backend_buffer_get_base(buffer), 0, bytes + WEIGHT_PADDING, stream));
    }

    char * data() const {
        return static_cast<char *>(ggml_backend_buffer_get_base(buffer));
    }
};

struct layer_cache {
    std::array<device_weights, 3> weights;
    std::array<const ggml_tensor *, 3> source;
    std::vector<int> expert_slot;
    std::vector<int> slot_expert;
    std::vector<double> heat;
    std::vector<uint64_t> decode_frequency;
    size_t expert_bytes = 0;
    int slots = 0;
    bool was_prefill = false;
    int decode_tokens_since_promotion = 0;
};

struct transfer_bank {
    std::array<device_weights, 3> weights;
    cudaEvent_t ready = nullptr;
    cudaEvent_t consumed = nullptr;
    bool used = false;

    transfer_bank() {
        CUDA_CHECK(cudaEventCreateWithFlags(&ready, cudaEventDisableTiming));
        CUDA_CHECK(cudaEventCreateWithFlags(&consumed, cudaEventDisableTiming));
    }

    ~transfer_bank() {
        CUDA_CHECK(cudaEventDestroy(ready));
        CUDA_CHECK(cudaEventDestroy(consumed));
    }
};

struct expert_group {
    std::vector<int> experts;
    size_t first = 0;
    size_t count = 0;
};

struct profile_totals {
    uint64_t calls = 0;
    uint64_t layer_tokens = 0;
    uint64_t cache_hits = 0;
    uint64_t cache_misses = 0;
    uint64_t h2d_weight_bytes = 0;
    double cpu_fused_ms = 0.0;
    double entry_wait_ms = 0.0;
    double readback_wait_ms = 0.0;
    double host_prepare_submit_ms = 0.0;
    double gpu_cached_ms = 0.0;
    double gpu_streamed_ms = 0.0;
    double gpu_copy_ms = 0.0;
    double gpu_refresh_ms = 0.0;
    double gpu_attention_ms = 0.0;
    double gpu_cpu_wait_ms = 0.0;

    void report(const char * mode, int layers) {
        GGML_LOG_INFO("CUDA hybrid MoE profile [%s]: layer_calls=%llu target_tokens_per_layer=%.1f "
                "cache_hits=%llu cache_misses=%llu h2d_weight_MiB=%.2f "
                "cpu_fused_ms=%.2f entry_event_wait_ms=%.2f readback_wait_ms=%.2f host_prepare_submit_ms=%.2f "
                "gpu_cached_interval_ms=%.2f gpu_streamed_interval_ms=%.2f "
                "gpu_weight_copy_interval_ms=%.2f gpu_cache_refresh_interval_ms=%.2f gpu_attention_interval_ms=%.2f "
                "gpu_cpu_wait_interval_ms=%.2f\n",
                mode, static_cast<unsigned long long>(calls), double(layer_tokens) / layers,
                static_cast<unsigned long long>(cache_hits), static_cast<unsigned long long>(cache_misses),
                double(h2d_weight_bytes) / (1024 * 1024), cpu_fused_ms, entry_wait_ms, readback_wait_ms, host_prepare_submit_ms,
                gpu_cached_ms, gpu_streamed_ms, gpu_copy_ms, gpu_refresh_ms, gpu_attention_ms, gpu_cpu_wait_ms);
        *this = {};
    }
};

struct gpu_interval {
    cudaEvent_t first;
    cudaEvent_t last;
    profile_totals * totals;
    double profile_totals::* metric;
    bool timeline = false;
    uint64_t epoch = 0;
    std::string label;
};

struct hybrid_state {
    std::mutex mutex;
    ggml_cpu_moe_pool * cpu;
    cudaEvent_t last_use = nullptr;
    bool pending = false;
    int device;
    int layers;
    int decode_max;
    int promote_max;
    int stream_experts;
    int gpu_misses_per_token;
    size_t budget;
    size_t active_budget;
    bool phase_buffers;
    bool saw_prefill = false;
    bool decode_budget_set = false;
    bool profile_enabled;
    bool timeline_enabled;
    bool mapped_metadata = false;
    bool cpu_doorbell = false;
    bool input_doorbell = false;
    bool adaptive_enabled;
    profile_totals prefill_profile;
    profile_totals decode_profile;
    std::vector<gpu_interval> gpu_intervals;
    cudaEvent_t timeline_reference = nullptr;
    uint64_t timeline_epoch = 0;
    pinned_array<int32_t> ids;
    pinned_array<int32_t> gpu_ids;
    pinned_array<int32_t> entries;
    pinned_array<int32_t> transfer_ids;
    pinned_array<float> x;
    pinned_array<uint64_t> input_ready;
    uint64_t input_generation = 0;
    pinned_array<float> cpu_result;
    pinned_array<uint64_t> cpu_ready;
    pinned_array<uint64_t> cpu_completed;
    uint64_t cpu_generation = 0;
    std::vector<uint8_t> cpu_mask;
    std::array<transfer_bank, 4> staging;
    transfer_bank bulk;
    transfer_bank bulk_next;
    bool bulk_active = false;
    bool bulk_direct = false;
    bool bulk_fused = false;
    const void * bulk_key = nullptr;
    const void * bulk_next_key = nullptr;
    std::vector<std::array<const ggml_tensor *, 3>> prefill_layers;
    cudaStream_t copy_stream = nullptr;
    std::unordered_map<const void *, std::unique_ptr<layer_cache>> cache;
    uint64_t decode_calls = 0;
    uint64_t gpu_selections = 0;
    uint64_t cpu_selections = 0;

    explicit hybrid_state(int device_) :
            device(device_),
            layers(env_int("GGML_CUDA_MOE_LAYERS", 47, 1, 1024)),
            decode_max(env_int("GGML_CUDA_MOE_DECODE_MAX", 32, 1, 256)),
            promote_max(env_int("GGML_CUDA_MOE_PROMOTE", 1, 0, 256)),
            stream_experts(env_int("GGML_CUDA_MOE_STREAM_EXPERTS", 32, 1, 256)),
            gpu_misses_per_token(env_int("GGML_CUDA_MOE_GPU_MISSES", 0, 0, 10)),
            budget(size_t(env_int("GGML_CUDA_MOE_CACHE_MB", 4096, 64, 1048576)) * 1024 * 1024),
            active_budget(budget),
            phase_buffers(env_int("GGML_MOE_PHASE_BUFFERS", 0, 0, 1) != 0),
            profile_enabled(env_int("GGML_CUDA_MOE_PROFILE", 0, 0, 1) != 0),
            timeline_enabled(profile_enabled && env_int("GGML_CUDA_MOE_TIMELINE", 0, 0, 1) != 0),
            adaptive_enabled(env_int("GGML_CUDA_MOE_ADAPTIVE", 0, 0, 1) != 0) {
        const int threads = env_int("GGML_CUDA_MOE_THREADS", 16, 1, 1024);
        int unified_addressing = 0;
        CUDA_CHECK(cudaDeviceGetAttribute(&unified_addressing, cudaDevAttrUnifiedAddressing, device));
        mapped_metadata = unified_addressing != 0;
        cpu_doorbell = mapped_metadata && env_int("GGML_CUDA_MOE_CPU_DOORBELL", 1, 0, 1) != 0;
        input_doorbell = mapped_metadata && env_int("GGML_CUDA_MOE_INPUT_DOORBELL", 0, 0, 1) != 0;
        if (input_doorbell) {
            GGML_LOG_INFO("CUDA hybrid MoE: mapped input publication enabled\n");
        }
        if (cpu_doorbell) {
            GGML_LOG_INFO("CUDA hybrid MoE: bounded mapped CPU completion enabled\n");
        }
        cpu = ggml_cpu_moe_pool_new(threads);
        GGML_ASSERT(cpu);
        CUDA_CHECK(cudaEventCreateWithFlags(&last_use, cudaEventDisableTiming));
        CUDA_CHECK(cudaStreamCreateWithFlags(&copy_stream, cudaStreamNonBlocking));
        if (mapped_metadata) {
            GGML_LOG_INFO("CUDA hybrid MoE prefill metadata: kernel staging from mapped pinned RAM\n");
        }
        GGML_LOG_INFO("CUDA hybrid MoE: %zu MiB cache, %d layers, %d CPU threads, decode <= %d tokens\n",
                budget / 1024 / 1024, layers, threads, decode_max);
        GGML_LOG_INFO("CUDA hybrid MoE: two %d-expert transfer banks, bounded 4096-selection tiles, "
                "up to %d GPU misses per decode token\n", stream_experts, gpu_misses_per_token);
        if (adaptive_enabled) {
            GGML_LOG_INFO("CUDA hybrid MoE adaptive cache: cap prefill history at 8 tokens on decode entry; "
                    "decode decay 0.97 per evaluated token; promotion limit %d per layer call\n", promote_max);
        }
        if (profile_enabled) {
            GGML_LOG_INFO("CUDA hybrid MoE profile: per-mode windows of %d layer calls; "
                    "tokens count target evaluations, not accepted output tokens. "
                    "CPU wall time overlaps GPU work; waits include preceding queued work. "
                    "GPU intervals include internal queue gaps and overlap each other.\n", layers * 16);
        }
    }

    ~hybrid_state() {
        if (pending) {
            CUDA_CHECK(cudaEventSynchronize(last_use));
        }
        CUDA_CHECK(cudaStreamSynchronize(copy_stream));
        finish_gpu_intervals();
        if (timeline_reference) {
            CUDA_CHECK(cudaEventDestroy(timeline_reference));
        }
        CUDA_CHECK(cudaEventDestroy(last_use));
        CUDA_CHECK(cudaStreamDestroy(copy_stream));
        ggml_cpu_moe_pool_free(cpu);
    }

    void begin_timeline(cudaStream_t stream) {
        if (!timeline_enabled) {
            return;
        }
        GGML_ASSERT(gpu_intervals.empty());
        if (timeline_reference) {
            CUDA_CHECK(cudaEventDestroy(timeline_reference));
        }
        CUDA_CHECK(cudaEventCreate(&timeline_reference));
        CUDA_CHECK(cudaEventRecord(timeline_reference, stream));
        CUDA_CHECK(cudaStreamWaitEvent(copy_stream, timeline_reference, 0));
        ++timeline_epoch;
        GGML_LOG_INFO("CUDA hybrid MoE timeline start: epoch=%llu\n",
                static_cast<unsigned long long>(timeline_epoch));
    }

    size_t begin_gpu_interval(profile_totals * totals, double profile_totals::* metric, cudaStream_t stream,
            const char * label = nullptr) {
        gpu_interval interval = {nullptr, nullptr, totals, metric};
        interval.timeline = timeline_enabled && timeline_reference && totals == &prefill_profile;
        interval.epoch = timeline_epoch;
        if (interval.timeline && label) {
            interval.label = label;
        }
        CUDA_CHECK(cudaEventCreate(&interval.first));
        CUDA_CHECK(cudaEventCreate(&interval.last));
        CUDA_CHECK(cudaEventRecord(interval.first, stream));
        gpu_intervals.push_back(interval);
        return gpu_intervals.size() - 1;
    }

    void end_gpu_interval(size_t index, cudaStream_t stream) {
        CUDA_CHECK(cudaEventRecord(gpu_intervals[index].last, stream));
    }

    void finish_gpu_intervals() {
        size_t remaining = 0;
        for (const auto & interval : gpu_intervals) {
            const auto status = cudaEventQuery(interval.last);
            if (status == cudaErrorNotReady) {
                gpu_intervals[remaining++] = interval;
                continue;
            }
            CUDA_CHECK(status);
            float elapsed = 0.0f;
            CUDA_CHECK(cudaEventElapsedTime(&elapsed, interval.first, interval.last));
            if (interval.metric) {
                interval.totals->*(interval.metric) += elapsed;
            }
            if (interval.timeline) {
                GGML_ASSERT(interval.epoch == timeline_epoch);
                float first = 0.0f, last = 0.0f;
                CUDA_CHECK(cudaEventElapsedTime(&first, timeline_reference, interval.first));
                CUDA_CHECK(cudaEventElapsedTime(&last, timeline_reference, interval.last));
                const char * kind = interval.metric == &profile_totals::gpu_copy_ms ? "copy" :
                        interval.metric == &profile_totals::gpu_streamed_ms ? "expert" :
                        interval.metric == &profile_totals::gpu_cached_ms ? "cached" :
                        interval.metric == &profile_totals::gpu_refresh_ms ? "refresh" :
                        interval.metric == &profile_totals::gpu_attention_ms ? "attention" : "ready";
                GGML_LOG_INFO("CUDA hybrid MoE timeline: epoch=%llu kind=%s layer=%s first_ms=%.3f last_ms=%.3f\n",
                        static_cast<unsigned long long>(interval.epoch), kind,
                        interval.label.empty() ? "-" : interval.label.c_str(), first, last);
            }
            CUDA_CHECK(cudaEventDestroy(interval.first));
            CUDA_CHECK(cudaEventDestroy(interval.last));
        }
        gpu_intervals.resize(remaining);
    }
};

std::mutex states_mutex;
std::unordered_map<ggml_backend_cuda_context *, std::unique_ptr<hybrid_state>> states;

hybrid_state & get_state(ggml_backend_cuda_context & ctx) {
    std::lock_guard<std::mutex> lock(states_mutex);
    auto & state = states[&ctx];
    if (!state) {
        state.reset(new hybrid_state(ctx.device));
    }
    return *state;
}

ggml_tensor tensor_view(enum ggml_type type, int64_t n0, int64_t n1, int64_t n2, void * data) {
    ggml_tensor result = {};
    result.type = type;
    result.ne[0] = n0;
    result.ne[1] = n1;
    result.ne[2] = n2;
    result.ne[3] = 1;
    result.nb[0] = ggml_type_size(type);
    result.nb[1] = ggml_row_size(type, n0);
    result.nb[2] = result.nb[1] * n1;
    result.nb[3] = result.nb[2] * n2;
    result.data = data;
    return result;
}

ggml_tensor weight_view(const ggml_tensor * source, device_weights & storage, int slots) {
    ggml_tensor result = *source;
    result.ne[2] = slots;
    result.nb[3] = result.nb[2] * slots;
    result.data = storage.data();
    result.buffer = storage.buffer;
    result.view_src = nullptr;
    result.view_offs = 0;
    result.extra = nullptr;
    return result;
}

layer_cache & get_layer(hybrid_state & state, const std::array<const ggml_tensor *, 3> & weights, cudaStream_t stream) {
    auto & layer = state.cache[weights[0]->data];
    if (layer) {
        // Source tensors themselves can differ between graph rebuilds.
        layer->source = weights;
        return *layer;
    }
    GGML_ASSERT(state.cache.size() <= size_t(state.layers));
    layer.reset(new layer_cache());
    layer->source = weights;
    const size_t triplet = weights[0]->nb[2] + weights[1]->nb[2] + weights[2]->nb[2];
    layer->expert_bytes = triplet;
    const size_t per_layer = state.active_budget / state.layers;
    GGML_ASSERT(per_layer > 3 * WEIGHT_PADDING + triplet);
    layer->slots = int(std::min<size_t>(weights[0]->ne[2] + 1, (per_layer - 3 * WEIGHT_PADDING) / triplet));
    GGML_ASSERT(layer->slots >= 2);
    layer->expert_slot.assign(weights[0]->ne[2], -1);
    layer->slot_expert.assign(layer->slots, -1);
    layer->heat.assign(weights[0]->ne[2], 0.0);
    layer->decode_frequency.assign(weights[0]->ne[2], 0);
    for (int p = 0; p < 3; ++p) {
        layer->weights[p].reserve(state.device, weights[p]->nb[2] * layer->slots, stream);
        // Slot zero contributes exactly zero for every supported quantized type.
        CUDA_CHECK(cudaMemsetAsync(layer->weights[p].data(), 0, weights[p]->nb[2], stream));
    }
    GGML_LOG_INFO("CUDA hybrid MoE: %s, %d/%lld expert triplets cached\n",
            weights[0]->name, layer->slots - 1, static_cast<long long>(weights[0]->ne[2]));
    return *layer;
}

bool bulk_eligible(const std::array<const ggml_tensor *, 3> & weights) {
    size_t bytes = 0;
    for (const auto * weight : weights) {
        bytes += ggml_nbytes(weight);
        if (!ggml_is_contiguous(weight) || weight->nb[2] % sizeof(uint4) != 0) {
            return false;
        }
    }
    return bytes <= BULK_LAYER_LIMIT;
}

void enqueue_bulk(hybrid_state & state, const std::array<const ggml_tensor *, 3> & weights,
        transfer_bank * target = nullptr) {
    auto & atlas = target ? *target : state.bulk;
    if (atlas.used) {
        CUDA_CHECK(cudaStreamWaitEvent(state.copy_stream, atlas.consumed, 0));
    }
    const size_t timer = state.profile_enabled ?
            state.begin_gpu_interval(&state.prefill_profile, &profile_totals::gpu_copy_ms, state.copy_stream, weights[0]->name) : 0;
    for (int p = 0; p < 3; ++p) {
        const size_t bytes = ggml_nbytes(weights[p]);
        if (state.bulk_fused && p < 2) {
            const size_t expert_bytes = weights[p]->nb[2];
            GGML_ASSERT(atlas.weights[0].capacity >= 2 * bytes);
            CUDA_CHECK(cudaMemcpy2DAsync(atlas.weights[0].data() + size_t(p) * expert_bytes,
                    2 * expert_bytes, weights[p]->data, expert_bytes,
                    expert_bytes, weights[p]->ne[2], cudaMemcpyHostToDevice, state.copy_stream));
        } else {
            GGML_ASSERT(atlas.weights[p].capacity >= bytes);
            CUDA_CHECK(cudaMemcpyAsync(atlas.weights[p].data(), weights[p]->data,
                    bytes, cudaMemcpyHostToDevice, state.copy_stream));
        }
        if (state.profile_enabled) {
            state.prefill_profile.h2d_weight_bytes += bytes;
        }
    }
    if (state.profile_enabled) {
        state.end_gpu_interval(timer, state.copy_stream);
    }
    CUDA_CHECK(cudaEventRecord(atlas.ready, state.copy_stream));
    (target == &state.bulk_next ? state.bulk_next_key : state.bulk_key) = weights[0]->data;
    submit_stream(state.copy_stream);
}

void release_bulk(hybrid_state & state) {
    CUDA_CHECK(cudaStreamSynchronize(state.copy_stream));
    state.finish_gpu_intervals();
    for (auto & weights : state.bulk.weights) {
        weights.clear();
    }
    for (auto & weights : state.bulk_next.weights) {
        weights.clear();
    }
    for (auto & bank : state.staging) {
        for (auto & weights : bank.weights) {
            weights.clear();
        }
        bank.used = false;
    }
    state.bulk_active = false;
    state.bulk_direct = false;
    state.bulk_fused = false;
    state.bulk.used = false;
    state.bulk_next.used = false;
    state.bulk_key = nullptr;
    state.bulk_next_key = nullptr;
    state.prefill_layers.clear();
}

__global__ void gather_expert_weights(uint4 * output, const uint4 * atlas, const int32_t * experts,
        size_t vectors_per_expert, size_t count) {
    const size_t i = size_t(blockIdx.x) * blockDim.x + threadIdx.x;
    if (i < count) {
        const size_t slot = i / vectors_per_expert;
        output[i] = slot == 0 ? make_uint4(0, 0, 0, 0) :
                atlas[size_t(experts[slot - 1]) * vectors_per_expert + i % vectors_per_expert];
    }
}

__global__ void swiglu_normalize(float * gate, const float * up, float * scales, int width,
        const float * packed = nullptr) {
    const int column = blockIdx.x;
    float * g = gate + int64_t(column) * width;
    const float * source = packed ? packed + int64_t(column) * 2 * width : g;
    const float * u = packed ? source + width : up + int64_t(column) * width;
    float sum = 0.0f;
    for (int i = threadIdx.x; i < width; i += blockDim.x) {
        const float value = (source[i] / (1.0f + expf(-source[i]))) * u[i];
        g[i] = value;
        sum += value * value;
    }
    __shared__ float partial[256];
    partial[threadIdx.x] = sum;
    __syncthreads();
    for (int stride = blockDim.x / 2; stride > 0; stride /= 2) {
        if (threadIdx.x < stride) {
            partial[threadIdx.x] += partial[threadIdx.x + stride];
        }
        __syncthreads();
    }
    const float norm = fminf(fmaxf(sqrtf(partial[0]), 1.0e-8f), 1.0e30f);
    if (threadIdx.x == 0) {
        scales[column] = norm;
    }
    for (int i = threadIdx.x; i < width; i += blockDim.x) {
        g[i] = (g[i] * 32768.0f) / norm;
    }
}

__global__ void stage_prefill_metadata(int32_t * ids, int32_t * entries,
        const int32_t * host_ids, const int32_t * host_entries, size_t count) {
    const size_t i = size_t(blockIdx.x) * blockDim.x + threadIdx.x;
    if (i < count) {
        ids[i] = host_ids[i];
        entries[i] = host_entries[i];
    }
}

__global__ void publish_cpu_inputs(const float * input, const int32_t * ids,
        volatile float * host_input, volatile int32_t * host_ids,
        size_t input_count, size_t id_count, volatile uint64_t * ready, uint64_t generation) {
    for (size_t i = threadIdx.x; i < input_count; i += blockDim.x) {
        host_input[i] = input[i];
    }
    for (size_t i = threadIdx.x; i < id_count; i += blockDim.x) {
        host_ids[i] = ids[i];
    }
    __threadfence_system();
    __syncthreads();
    if (threadIdx.x == 0) {
        *ready = generation;
    }
}

__global__ void gather_inputs(float * output, const float * input, const int32_t * entries,
        int64_t count, int width, int topk) {
    const int64_t i = int64_t(blockIdx.x) * blockDim.x + threadIdx.x;
    if (i < count) {
        const int token = entries[i / width] / topk;
        output[i] = input[int64_t(token) * width + i % width];
    }
}

__global__ void scatter_weighted(float * output, const float * parts, const float * scales,
        const float * weights, const int32_t * entries, int64_t count, int width, int topk) {
    const int64_t i = int64_t(blockIdx.x) * blockDim.x + threadIdx.x;
    if (i < count) {
        const int entry = entries[i / width];
        const float value = ((parts[i] * scales[i / width]) * (1.0f / 32768.0f)) * weights[entry];
        atomicAdd(output + int64_t(entry / topk) * width + i % width, value);
    }
}

__global__ void reduce_weighted(float * output, const float * parts, const float * scales,
        const float * weights, int64_t count, int width, int topk) {
    const int64_t i = int64_t(blockIdx.x) * blockDim.x + threadIdx.x;
    if (i < count) {
        const int64_t first = (i / width) * topk;
        float sum = 0.0f;
        for (int k = 0; k < topk; ++k) {
            float value = parts[(first + k) * width + i % width];
            if (scales) {
                value = (value * scales[first + k]) * (1.0f / 32768.0f);
            }
            sum += value * weights[first + k];
        }
        output[i] += sum;
    }
}

template<bool wait_for_cpu>
__global__ void reduce_cpu_mapped(float * output, const volatile float * parts,
        const float * weights, int64_t count, int width, int topk,
        const volatile uint64_t * cpu_ready, volatile uint64_t * completed, uint64_t generation) {
    __shared__ int run;
    if (threadIdx.x == 0) {
        if (wait_for_cpu) {
            uint64_t start;
            asm volatile("mov.u64 %0, %%globaltimer;" : "=l"(start));
            while (*cpu_ready != generation) {
                uint64_t now;
                asm volatile("mov.u64 %0, %%globaltimer;" : "=l"(now));
                if (now - start >= 10000000ull) {
                    break;
                }
#if __CUDA_ARCH__ >= 700
                __nanosleep(1024);
#endif
            }
            run = *cpu_ready == generation;
            if (run) {
                __threadfence_system();
            }
        } else {
            run = completed[blockIdx.x] != generation;
        }
    }
    __syncthreads();
    if (!run) {
        return;
    }
    for (int64_t i = int64_t(blockIdx.x) * blockDim.x + threadIdx.x;
            i < count; i += int64_t(blockDim.x) * gridDim.x) {
        const int64_t first = (i / width) * topk;
        float sum = 0.0f;
        for (int k = 0; k < topk; ++k) {
            sum += parts[(first + k) * width + i % width] * weights[first + k];
        }
        output[i] += sum;
    }
    if (wait_for_cpu) {
        __syncthreads();
        if (threadIdx.x == 0) {
            completed[blockIdx.x] = generation;
        }
    }
}

void project(ggml_backend_cuda_context & ctx, const ggml_tensor * weight,
        const ggml_tensor * input, const ggml_tensor * ids, ggml_tensor * output, bool masked,
        int64_t max_expert_rows = 0) {
    const int cc = ggml_cuda_info().devices[ctx.device].cc;
    const int max_batch = std::max(1, get_mmvq_mmid_max_batch(weight->type, cc));
    if (masked) {
        // MMQ's ID compaction assumes unique expert IDs within each token.
        // CPU misses share the zero slot, so use MMVQ on bounded token chunks.
        for (int64_t first = 0; first < input->ne[2]; first += max_batch) {
            const int64_t count = std::min<int64_t>(max_batch, input->ne[2] - first);
            ggml_tensor input_chunk = *input;
            ggml_tensor ids_chunk = *ids;
            ggml_tensor output_chunk = *output;
            input_chunk.ne[2] = count;
            ids_chunk.ne[1] = count;
            output_chunk.ne[2] = count;
            input_chunk.data = static_cast<char *>(input->data) + first * input->nb[2];
            ids_chunk.data = static_cast<char *>(ids->data) + first * ids->nb[1];
            output_chunk.data = static_cast<char *>(output->data) + first * output->nb[2];
            ggml_cuda_mul_mat_vec_q(ctx, weight, &input_chunk, &ids_chunk, &output_chunk);
        }
    } else if (input->ne[2] <= max_batch) {
        ggml_cuda_mul_mat_vec_q(ctx, weight, input, ids, output);
    } else {
        if (max_expert_rows > 0) {
            ggml_cuda_mul_mat_q_bounded(ctx, weight, input, ids, output, max_expert_rows);
        } else {
            ggml_cuda_mul_mat_q(ctx, weight, input, ids, output);
        }
    }
}

void project_prefill(ggml_backend_cuda_context & ctx, const ggml_tensor * weight,
        const ggml_tensor * input, const ggml_tensor * ids, ggml_tensor * output, int64_t max_expert_rows) {
    if (weight->ne[2] == 1) {
        ggml_tensor dense_input = tensor_view(GGML_TYPE_F32, input->ne[0], input->ne[2], 1, input->data);
        ggml_tensor dense_output = tensor_view(GGML_TYPE_F32, output->ne[0], output->ne[2], 1, output->data);
        ggml_cuda_mul_mat_q(ctx, weight, &dense_input, nullptr, &dense_output);
    } else {
        project(ctx, weight, input, ids, output, false, max_expert_rows);
    }
}

// Populate hottest experts only. Promoting a decode miss is capped to avoid
// turning ordinary CPU misses into synchronous PCIe weight transfers.
uint64_t promote(layer_cache & layer, const std::vector<int> & staged_slot,
        std::array<device_weights, 3> * staging, int limit, cudaStream_t stream, bool fused_gate_up = false) {
    std::vector<int> ranked(layer.heat.size());
    std::iota(ranked.begin(), ranked.end(), 0);
    std::sort(ranked.begin(), ranked.end(), [&](int a, int b) { return layer.heat[a] > layer.heat[b]; });
    int moved = 0;
    uint64_t h2d_weight_bytes = 0;
    for (int expert : ranked) {
        if (moved >= limit || layer.heat[expert] <= 0.0) {
            break;
        }
        if (layer.expert_slot[expert] >= 0 || (staging && staged_slot[expert] < 0)) {
            continue;
        }
        int victim_slot = 1;
        double victim_heat = 0.0;
        for (int slot = 1; slot < layer.slots; ++slot) {
            const int victim = layer.slot_expert[slot];
            if (victim < 0) {
                victim_slot = slot;
                victim_heat = -1.0;
                break;
            }
            if (slot == 1 || layer.heat[victim] < victim_heat) {
                victim_slot = slot;
                victim_heat = layer.heat[victim];
            }
        }
        if (victim_heat >= 0.0 && layer.heat[expert] <= victim_heat * 1.10) {
            continue;
        }
        const int old = layer.slot_expert[victim_slot];
        if (old >= 0) {
            layer.expert_slot[old] = -1;
        }
        for (int p = 0; p < 3; ++p) {
            const size_t bytes = layer.source[p]->nb[2];
            const char * from;
            if (staging && fused_gate_up && p < 2) {
                const size_t stride = layer.source[0]->nb[2] + layer.source[1]->nb[2];
                from = (*staging)[0].data() + size_t(staged_slot[expert]) * stride +
                        (p == 1 ? layer.source[0]->nb[2] : 0);
            } else {
                from = staging ? (*staging)[p].data() + size_t(staged_slot[expert]) * bytes :
                        static_cast<const char *>(layer.source[p]->data) + size_t(expert) * bytes;
            }
            CUDA_CHECK(cudaMemcpyAsync(layer.weights[p].data() + size_t(victim_slot) * bytes,
                    from, bytes, staging ? cudaMemcpyDeviceToDevice : cudaMemcpyHostToDevice, stream));
            if (!staging) {
                h2d_weight_bytes += bytes;
            }
        }
        layer.slot_expert[victim_slot] = expert;
        layer.expert_slot[expert] = victim_slot;
        ++moved;
    }
    return h2d_weight_bytes;
}

void report_cache_capacity(hybrid_state & state) {
    struct candidate {
        uint64_t frequency;
        size_t bytes;
        size_t layer;
    };
    std::vector<candidate> candidates;
    std::vector<int> capacities;
    uint64_t observed = 0;
    uint64_t best_fixed = 0;
    uint64_t greedy_global = 0;
    size_t reserved = 0;
    for (auto & item : state.cache) {
        auto & layer = *item.second;
        auto frequencies = layer.decode_frequency;
        observed += std::accumulate(frequencies.begin(), frequencies.end(), uint64_t(0));
        std::sort(frequencies.begin(), frequencies.end(), std::greater<uint64_t>());
        const size_t cached = std::min<size_t>(frequencies.size(), size_t(layer.slots - 1));
        best_fixed += std::accumulate(frequencies.begin(), frequencies.begin() + cached, uint64_t(0));
        greedy_global += frequencies.front();
        // Reserve the zero slot, one resident expert, and all buffer padding.
        reserved += 2 * layer.expert_bytes + 3 * WEIGHT_PADDING;
        const size_t index = capacities.size();
        capacities.push_back(1);
        for (size_t expert = 1; expert < frequencies.size(); ++expert) {
            candidates.push_back({frequencies[expert], layer.expert_bytes, index});
        }
        std::fill(layer.decode_frequency.begin(), layer.decode_frequency.end(), 0);
    }
    if (!observed) {
        return;
    }
    std::sort(candidates.begin(), candidates.end(), [](const candidate & a, const candidate & b) {
        return double(a.frequency) / a.bytes > double(b.frequency) / b.bytes;
    });
    size_t remaining = state.active_budget > reserved ? state.active_budget - reserved : 0;
    for (const auto & item : candidates) {
        if (item.frequency && item.bytes <= remaining) {
            remaining -= item.bytes;
            greedy_global += item.frequency;
            ++capacities[item.layer];
        }
    }
    GGML_LOG_INFO("CUDA hybrid MoE cache capacity [retrospective]: observed=%llu actual_hits=%llu "
            "best_fixed_capacity_hits=%llu greedy_global_capacity_hits=%llu "
            "budget_MiB=%zu global_experts_per_layer_min=%d global_experts_per_layer_max=%d; "
            "estimates use this past window, not future routing\n",
            static_cast<unsigned long long>(observed), static_cast<unsigned long long>(state.decode_profile.cache_hits),
            static_cast<unsigned long long>(best_fixed), static_cast<unsigned long long>(greedy_global),
            state.active_budget / (1024 * 1024), *std::min_element(capacities.begin(), capacities.end()),
            *std::max_element(capacities.begin(), capacities.end()));
}

void refresh_sources(hybrid_state & state, ggml_cgraph * graph) {
    for (int i = 0; i < graph->n_nodes; ++i) {
        const auto * node = graph->nodes[i];
        if (node->op != GGML_OP_MOE_HYBRID) {
            continue;
        }
        const auto found = state.cache.find(node->src[0]->data);
        if (found != state.cache.end()) {
            found->second->source = {node->src[0], node->src[1], node->src[2]};
        }
    }
}

void resize_cache(hybrid_state & state, size_t budget, bool populate, cudaStream_t stream) {
    const int64_t started = ggml_time_us();
    const size_t per_layer = budget / state.layers;
    uint64_t uploaded = 0;
    for (auto & item : state.cache) {
        auto & layer = *item.second;
        const auto & weights = layer.source;
        const size_t triplet = weights[0]->nb[2] + weights[1]->nb[2] + weights[2]->nb[2];
        GGML_ASSERT(per_layer > 3 * WEIGHT_PADDING + triplet);
        const int slots = int(std::min<size_t>(weights[0]->ne[2] + 1, (per_layer - 3 * WEIGHT_PADDING) / triplet));
        if (slots == layer.slots) {
            continue;
        }
        std::vector<int> resident;
        for (int expert : layer.slot_expert) {
            if (expert >= 0) {
                resident.push_back(expert);
            }
        }
        std::stable_sort(resident.begin(), resident.end(), [&](int a, int b) { return layer.heat[a] > layer.heat[b]; });
        resident.resize(std::min<size_t>(resident.size(), size_t(slots - 1)));
        std::array<device_weights, 3> replacement;
        for (int p = 0; p < 3; ++p) {
            const size_t bytes = weights[p]->nb[2];
            replacement[p].reserve(state.device, size_t(slots) * bytes, stream);
            for (size_t i = 0; i < resident.size(); ++i) {
                CUDA_CHECK(cudaMemcpyAsync(replacement[p].data() + (i + 1) * bytes,
                        layer.weights[p].data() + size_t(layer.expert_slot[resident[i]]) * bytes,
                        bytes, cudaMemcpyDeviceToDevice, stream));
            }
        }
        CUDA_CHECK(cudaStreamSynchronize(stream));
        for (int p = 0; p < 3; ++p) {
            std::swap(layer.weights[p].buffer, replacement[p].buffer);
            std::swap(layer.weights[p].capacity, replacement[p].capacity);
            replacement[p].clear();
        }
        layer.slots = slots;
        std::fill(layer.expert_slot.begin(), layer.expert_slot.end(), -1);
        layer.slot_expert.assign(slots, -1);
        for (size_t i = 0; i < resident.size(); ++i) {
            layer.expert_slot[resident[i]] = int(i + 1);
            layer.slot_expert[i + 1] = resident[i];
        }
        if (populate) {
            const std::vector<int> unused_slots;
            uploaded += promote(layer, unused_slots, nullptr, slots - 1, stream);
            CUDA_CHECK(cudaStreamSynchronize(stream));
        }
    }
    state.active_budget = budget;
    GGML_LOG_INFO("CUDA hybrid MoE phase cache: %zu MiB budget, %.2f MiB hot experts uploaded, %.2f ms transition\n",
            budget / (1024 * 1024), double(uploaded) / (1024 * 1024), double(ggml_time_us() - started) / 1000.0);
}

} // namespace

size_t ggml_cuda_moe_hybrid_attention_begin(ggml_backend_cuda_context & ctx, const ggml_tensor * node) {
    static const bool requested = env_int("GGML_CUDA_MOE_PROFILE", 0, 0, 1) != 0 &&
            env_int("GGML_CUDA_MOE_TIMELINE", 0, 0, 1) != 0;
    if (!requested || node->src[0]->ne[1] <= 32) {
        return size_t(-1);
    }
    cudaStreamCaptureStatus capture;
    CUDA_CHECK(cudaStreamIsCapturing(ctx.stream(), &capture));
    if (capture != cudaStreamCaptureStatusNone) {
        return size_t(-1);
    }
    std::lock_guard<std::mutex> states_lock(states_mutex);
    const auto found = states.find(&ctx);
    if (found == states.end()) {
        return size_t(-1);
    }
    hybrid_state & state = *found->second;
    std::lock_guard<std::mutex> state_lock(state.mutex);
    if (!state.timeline_enabled || !state.timeline_reference) {
        return size_t(-1);
    }
    const auto * q = node->src[0];
    const auto * k = node->src[1];
    const std::string label = std::string(node->name) + "_qh" + std::to_string(q->ne[2]) +
            "_kvh" + std::to_string(k->ne[2]) + "_nq" + std::to_string(q->ne[1]) +
            "_nk" + std::to_string(k->ne[1]);
    return state.begin_gpu_interval(&state.prefill_profile, &profile_totals::gpu_attention_ms,
            ctx.stream(), label.c_str());
}

void ggml_cuda_moe_hybrid_attention_end(ggml_backend_cuda_context & ctx, size_t interval) {
    if (interval == size_t(-1)) {
        return;
    }
    std::lock_guard<std::mutex> states_lock(states_mutex);
    const auto found = states.find(&ctx);
    GGML_ASSERT(found != states.end());
    hybrid_state & state = *found->second;
    std::lock_guard<std::mutex> state_lock(state.mutex);
    GGML_ASSERT(interval < state.gpu_intervals.size());
    state.end_gpu_interval(interval, ctx.stream());
}

void ggml_cuda_moe_hybrid_prepare_graph(ggml_backend_cuda_context & ctx, ggml_cgraph * graph) {
    hybrid_state * state = nullptr;
    {
        std::lock_guard<std::mutex> lock(states_mutex);
        const auto found = states.find(&ctx);
        if (found == states.end()) {
            return;
        }
        state = found->second.get();
    }
    if (!state->phase_buffers) {
        return;
    }
    std::lock_guard<std::mutex> lock(state->mutex);
    bool prefill = false;
    for (int i = 0; i < graph->n_nodes; ++i) {
        const auto * node = graph->nodes[i];
        if (node->op == GGML_OP_MOE_HYBRID && node->src[3]->ne[2] > state->decode_max) {
            prefill = true;
            break;
        }
    }
    if (!prefill || state->cache.empty()) {
        return;
    }
    const size_t budget = state->budget - std::min<size_t>(state->budget / 3, 1024ull * 1024 * 1024);
    if (state->active_budget != budget) {
        CUDA_CHECK(cudaStreamSynchronize(ctx.stream()));
        CUDA_CHECK(cudaStreamSynchronize(state->copy_stream));
        if (state->pending) {
            CUDA_CHECK(cudaEventSynchronize(state->last_use));
            state->pending = false;
        }
        if (state->bulk_active) {
            release_bulk(*state);
        }
        state->finish_gpu_intervals();
        refresh_sources(*state, graph);
        resize_cache(*state, budget, false, ctx.stream());
    }
    state->decode_budget_set = false;
}

void ggml_cuda_moe_hybrid_prefill_begin(ggml_backend_cuda_context & ctx, ggml_cgraph * graph) {
    std::vector<std::array<const ggml_tensor *, 3>> layers;
    bool has_hybrid = false;
    bool has_prefill = false;
    for (int i = 0; i < graph->n_nodes; ++i) {
        const auto * node = graph->nodes[i];
        if (node->op == GGML_OP_MOE_HYBRID) {
            has_hybrid = true;
            has_prefill |= node->src[3]->ne[2] > 32;
            if (node->src[3]->ne[2] >= 1024) {
                layers.push_back({node->src[0], node->src[1], node->src[2]});
            }
        }
    }
    if (has_hybrid && !has_prefill) {
        hybrid_state & state = get_state(ctx);
        std::lock_guard<std::mutex> lock(state.mutex);
        if (state.phase_buffers && state.saw_prefill && !state.decode_budget_set) {
            if (state.pending) {
                CUDA_CHECK(cudaEventSynchronize(state.last_use));
                state.pending = false;
            }
            CUDA_CHECK(cudaStreamSynchronize(state.copy_stream));
            if (state.bulk_active) {
                release_bulk(state);
            }
            state.finish_gpu_intervals();
            refresh_sources(state, graph);
            size_t free_bytes = 0, total_bytes = 0;
            CUDA_CHECK(cudaMemGetInfo(&free_bytes, &total_bytes));
            const size_t safety = 768ull * 1024 * 1024;
            const size_t available = free_bytes > safety ? free_bytes - safety : 0;
            const size_t maximum = state.budget + 2048ull * 1024 * 1024;
            const size_t budget = std::min(maximum, state.active_budget + available);
            if (budget > state.active_budget) {
                resize_cache(state, budget, true, ctx.stream());
            }
            state.decode_budget_set = true;
        }
    }
    if (layers.empty() || !bulk_eligible(layers.front())) {
        return;
    }
    hybrid_state & state = get_state(ctx);
    std::lock_guard<std::mutex> lock(state.mutex);
    if (state.pending) {
        CUDA_CHECK(cudaEventSynchronize(state.last_use));
        state.pending = false;
    }
    if (state.bulk_active) {
        release_bulk(state);
    }
    state.finish_gpu_intervals();
    std::array<size_t, 3> sizes = {};
    std::array<size_t, 3> expert_sizes = {};
    for (const auto & weights : layers) {
        if (!bulk_eligible(weights)) {
            continue;
        }
        for (int p = 0; p < 3; ++p) {
            sizes[p] = std::max(sizes[p], ggml_nbytes(weights[p]));
            expert_sizes[p] = std::max(expert_sizes[p], weights[p]->nb[2]);
        }
    }
    size_t required = 0;
    for (int p = 0; p < 3; ++p) {
        required += sizes[p] + WEIGHT_PADDING;
        const size_t bank_bytes = size_t(state.stream_experts + 1) * expert_sizes[p];
        for (const auto & bank : state.staging) {
            required += bank_bytes > bank.weights[p].capacity ? bank_bytes - bank.weights[p].capacity + WEIGHT_PADDING : 0;
        }
    }
    size_t cache_reserved = 0;
    for (const auto & item : state.cache) {
        for (const auto & weights : item.second->weights) {
            cache_reserved += weights.capacity + WEIGHT_PADDING;
        }
    }
    required += state.active_budget > cache_reserved ? state.active_budget - cache_reserved : 0;
    size_t free_bytes = 0, total_bytes = 0;
    CUDA_CHECK(cudaMemGetInfo(&free_bytes, &total_bytes));
    const size_t layer_bytes = std::accumulate(sizes.begin(), sizes.end(), size_t(0));
    const size_t direct_required = 2 * layer_bytes + 6 * WEIGHT_PADDING +
            (state.active_budget > cache_reserved ? state.active_budget - cache_reserved : 0);
    state.bulk_direct = direct_required + 512 * 1024 * 1024 <= free_bytes;
    if (!state.bulk_direct && required + 512 * 1024 * 1024 > free_bytes) {
        GGML_LOG_INFO("CUDA hybrid MoE bulk prefill: insufficient temporary VRAM; retaining expert-bank streaming\n");
        return;
    }
    state.bulk_fused = state.bulk_direct && std::all_of(layers.begin(), layers.end(), [](const auto & weights) {
        return !bulk_eligible(weights) || (weights[0]->type == weights[1]->type &&
                weights[0]->nb[2] == weights[1]->nb[2] && weights[0]->ne[0] >= weights[0]->ne[1]);
    });
    for (int p = 0; p < 3; ++p) {
        if (state.bulk_fused && p == 1) {
            continue;
        }
        const size_t bytes = state.bulk_fused && p == 0 ? sizes[0] + sizes[1] : sizes[p];
        state.bulk.weights[p].reserve(ctx.device, bytes, state.copy_stream);
        if (state.bulk_direct) {
            state.bulk_next.weights[p].reserve(ctx.device, bytes, state.copy_stream);
        } else {
            for (auto & bank : state.staging) {
                bank.weights[p].reserve(ctx.device, size_t(state.stream_experts + 1) * expert_sizes[p], state.copy_stream);
                bank.used = false;
            }
        }
    }
    state.bulk_active = true;
    state.prefill_layers = std::move(layers);
    GGML_LOG_INFO("CUDA hybrid MoE bulk prefill: %.1f MiB layer atlas, %s, three uploads per layer\n",
            double(layer_bytes) / (1024 * 1024),
            state.bulk_fused ? "two layer buffers with fused gate/up projections" :
            state.bulk_direct ? "two layer buffers with direct matrix reads" : "four transfer banks");
    state.begin_timeline(ctx.stream());
    enqueue_bulk(state, state.prefill_layers.front());
    if (state.bulk_direct && state.prefill_layers.size() > 1 && bulk_eligible(state.prefill_layers[1])) {
        enqueue_bulk(state, state.prefill_layers[1], &state.bulk_next);
    }
}

void ggml_cuda_op_moe_hybrid(ggml_backend_cuda_context & ctx, ggml_tensor * dst) {
    ggml_cuda_set_device(ctx.device);
    hybrid_state & state = get_state(ctx);
    std::lock_guard<std::mutex> lock(state.mutex);
    const bool mapped_input = state.input_doorbell && !state.bulk_active &&
            state.gpu_misses_per_token == 0 && dst->src[3]->ne[2] <= state.decode_max;
    double entry_wait_ms = 0.0;
    if (state.pending && !mapped_input) {
        const int64_t start = state.profile_enabled ? ggml_time_us() : 0;
        CUDA_CHECK(cudaEventSynchronize(state.last_use));
        if (state.profile_enabled) {
            entry_wait_ms = double(ggml_time_us() - start) / 1000.0;
        }
        state.pending = false;
    }
    const cudaStream_t stream = ctx.stream();
    const std::array<const ggml_tensor *, 3> weights = { dst->src[0], dst->src[1], dst->src[2] };
    const ggml_tensor * input = dst->src[3];
    const ggml_tensor * ids = dst->src[4];
    const ggml_tensor * routing = dst->src[5];
    const int64_t hidden = input->ne[0];
    const int64_t tokens = input->ne[2];
    const int64_t topk = ids->ne[0];
    const int64_t ff = weights[0]->ne[1];
    const int n_experts = int(weights[0]->ne[2]);
    GGML_ASSERT(tokens > 0 && topk > 0 && topk <= n_experts);
    const size_t selections = size_t(topk * tokens);
    const size_t output_count = size_t(hidden * tokens);
    GGML_ASSERT(selections <= INT32_MAX);
    GGML_ASSERT(input->type == GGML_TYPE_F32 && ggml_is_contiguous(input));
    GGML_ASSERT(ids->type == GGML_TYPE_I32 && ggml_is_contiguous(ids));
    GGML_ASSERT(dst->type == GGML_TYPE_F32 && ggml_is_contiguous(dst));
    GGML_ASSERT(routing->type == GGML_TYPE_F32 && ggml_is_contiguous(routing));
    GGML_ASSERT(input->ne[1] == 1 && input->ne[3] == 1 && ids->ne[1] == tokens);
    GGML_ASSERT(dst->ne[0] == hidden && dst->ne[1] == tokens && dst->ne[2] == 1);
    GGML_ASSERT(routing->ne[0] == 1 && routing->ne[1] == topk && routing->ne[2] == tokens);
    for (const ggml_tensor * weight : weights) {
        GGML_ASSERT(ggml_is_quantized(weight->type) && ggml_is_contiguous(weight));
        GGML_ASSERT(weight->ne[2] == n_experts && weight->ne[3] == 1);
    }
    GGML_ASSERT(weights[0]->ne[0] == hidden && weights[1]->ne[0] == hidden);
    GGML_ASSERT(weights[1]->ne[1] == ff && weights[2]->ne[0] == ff && weights[2]->ne[1] == hidden);

    const bool prefill = tokens > state.decode_max;
    if (prefill) {
        state.saw_prefill = true;
    }
    if (state.bulk_active && (!prefill || !bulk_eligible(weights))) {
        release_bulk(state);
    }
    const bool bulk_prefill = prefill && state.bulk_active;
    profile_totals * profile = state.profile_enabled ?
            (prefill ? &state.prefill_profile : &state.decode_profile) : nullptr;
    state.ids.reserve(selections);
    if (!prefill) {
        state.x.reserve(output_count);
    }
    uint64_t input_generation = 0;
    if (mapped_input) {
        if (state.input_ready.capacity == 0) {
            state.input_ready.reserve(1);
            state.input_ready.data[0] = 0;
        }
        input_generation = ++state.input_generation;
        publish_cpu_inputs<<<1, 256, 0, stream>>>(
                (const float *) input->data, (const int32_t *) ids->data, state.x.data, state.ids.data,
                output_count, selections, state.input_ready.data, input_generation);
        CUDA_CHECK(cudaGetLastError());
    } else {
        CUDA_CHECK(cudaMemcpyAsync(state.ids.data, ids->data, selections * sizeof(int32_t), cudaMemcpyDeviceToHost, stream));
        if (!prefill) {
            CUDA_CHECK(cudaMemcpyAsync(state.x.data, input->data, output_count * sizeof(float), cudaMemcpyDeviceToHost, stream));
        }
    }
    const int64_t readback_start = profile ? ggml_time_us() : 0;
    if (state.timeline_enabled && prefill) {
        const size_t point = state.begin_gpu_interval(profile, nullptr, stream, weights[0]->name);
        state.end_gpu_interval(point, stream);
    }
    if (mapped_input) {
        // Publishing follows the previous last_use event on the same stream.
        // Its completion also makes the preceding layer's host buffers reusable.
        submit_stream(stream);
        const auto * ready = reinterpret_cast<volatile uint64_t *>(state.input_ready.data);
        const int64_t deadline = ggml_time_us() + 50000;
        unsigned spins = 0;
        while (*ready != input_generation) {
#if defined(__x86_64__) || defined(_M_X64) || defined(__i386__) || defined(_M_IX86)
            _mm_pause();
#else
            std::atomic_signal_fence(std::memory_order_acquire);
#endif
            if ((++spins & 1023u) == 0 && ggml_time_us() >= deadline) {
                CUDA_CHECK(cudaStreamSynchronize(stream));
                if (*ready != input_generation) {
                    CUDA_CHECK(cudaMemcpyAsync(state.ids.data, ids->data, selections * sizeof(int32_t), cudaMemcpyDeviceToHost, stream));
                    CUDA_CHECK(cudaMemcpyAsync(state.x.data, input->data, output_count * sizeof(float), cudaMemcpyDeviceToHost, stream));
                    CUDA_CHECK(cudaStreamSynchronize(stream));
                }
                break;
            }
        }
        std::atomic_thread_fence(std::memory_order_acquire);
    } else {
        CUDA_CHECK(cudaStreamSynchronize(stream));
    }
    state.pending = false;
    const double readback_wait_ms = profile ? double(ggml_time_us() - readback_start) / 1000.0 : 0.0;
    state.finish_gpu_intervals();
    for (auto * completed : {&state.prefill_profile, &state.decode_profile}) {
        if (completed->calls >= uint64_t(state.layers) * 16) {
            if (completed == &state.decode_profile) {
                report_cache_capacity(state);
            }
            completed->report(completed == &state.prefill_profile ? "prefill" : "decode", state.layers);
        }
    }
    if (!prefill && state.prefill_profile.calls) {
        state.prefill_profile.report("prefill", state.layers);
    }
    if (profile) {
        profile->entry_wait_ms += entry_wait_ms;
        profile->readback_wait_ms += readback_wait_ms;
    }
    const int64_t dispatch_start = profile ? ggml_time_us() : 0;
    const double dispatch_cpu_start = profile ? profile->cpu_fused_ms : 0.0;
    // These arrays feed asynchronous GPU reads from the preceding layer.
    state.gpu_ids.reserve(prefill ? selections : 2 * selections);
    state.entries.reserve(selections);
    layer_cache & layer = get_layer(state, weights, stream);
    double decay = state.adaptive_enabled ? std::pow(0.97, double(tokens)) : 0.995;
    if (state.adaptive_enabled && !prefill) {
        if (layer.was_prefill) {
            layer.decode_tokens_since_promotion = 16;
            const double history = std::accumulate(layer.heat.begin(), layer.heat.end(), 0.0);
            const double limit = double(topk) * 8.0;
            if (history > limit) {
                decay *= limit / history;
            }
        }
    }
    for (double & value : layer.heat) {
        value *= decay;
    }
    layer.was_prefill = prefill;
    std::vector<double> recency;
    if (state.adaptive_enabled) {
        recency.resize(tokens);
        double weight = 1.0;
        for (int64_t token = tokens - 1; token >= 0; --token) {
            recency[token] = weight;
            weight *= 0.97;
        }
    }
    std::vector<std::vector<int32_t>> by_expert(n_experts);
    for (size_t i = 0; i < selections; ++i) {
        const int expert = state.ids.data[i];
        GGML_ASSERT(expert >= 0 && expert < n_experts);
        by_expert[expert].push_back(int32_t(i));
        layer.heat[expert] += state.adaptive_enabled ? recency[i / topk] : 1.0;
        if (profile) {
            if (!prefill) {
                ++layer.decode_frequency[expert];
            }
            if (layer.expert_slot[expert] >= 0) {
                ++profile->cache_hits;
            } else {
                ++profile->cache_misses;
            }
        }
    }

    if (bulk_prefill && state.bulk_direct) {
        auto & atlas = weights[0]->data == state.bulk_next_key ? state.bulk_next : state.bulk;
        if (weights[0]->data != state.bulk_key && weights[0]->data != state.bulk_next_key) {
            enqueue_bulk(state, weights, &atlas);
        }
        size_t metadata_count = 0;
        for (int expert = 0; expert < n_experts; ++expert) {
            for (int32_t entry : by_expert[expert]) {
                state.entries.data[metadata_count] = entry;
                state.gpu_ids.data[metadata_count++] = expert;
            }
        }
        GGML_ASSERT(metadata_count == selections);
        const size_t tile_capacity = std::min<size_t>(4096, selections);
        struct tile_geometry { int first_expert, slots, max_rows; };
        std::vector<tile_geometry> tiles;
        for (size_t first = 0; first < selections; first += tile_capacity) {
            const size_t count = std::min(tile_capacity, selections - first);
            const int first_expert = state.gpu_ids.data[first];
            const int slots = state.gpu_ids.data[first + count - 1] - first_expert + 1;
            int max_rows = 0, rows = 0, previous = -1;
            for (size_t i = first; i < first + count; ++i) {
                const int expert = state.gpu_ids.data[i];
                rows = expert == previous ? rows + 1 : 1;
                max_rows = std::max(max_rows, rows);
                previous = expert;
                state.gpu_ids.data[i] -= first_expert;
            }
            tiles.push_back({first_expert, slots, max_rows});
        }
        ggml_cuda_pool_alloc<int32_t> gpu_ids(ctx.pool(), selections);
        ggml_cuda_pool_alloc<int32_t> entries(ctx.pool(), selections);
        ggml_cuda_pool_alloc<float> gathered(ctx.pool(), size_t(hidden) * tile_capacity);
        ggml_cuda_pool_alloc<float> gate(ctx.pool(), size_t(ff) * tile_capacity * (state.bulk_fused ? 2 : 1));
        ggml_cuda_pool_alloc<float> up(ctx.pool(), state.bulk_fused ? 1 : size_t(ff) * tile_capacity);
        ggml_cuda_pool_alloc<float> scales(ctx.pool(), tile_capacity);
        ggml_cuda_pool_alloc<float> parts(ctx.pool(), size_t(hidden) * tile_capacity);
        if (state.mapped_metadata) {
            // Avoid queueing small metadata transfers behind lookahead weight uploads.
            stage_prefill_metadata<<<unsigned((selections + 255) / 256), 256, 0, stream>>>(
                    gpu_ids.get(), entries.get(), state.gpu_ids.data, state.entries.data, selections);
            CUDA_CHECK(cudaGetLastError());
        } else {
            CUDA_CHECK(cudaMemcpyAsync(gpu_ids.get(), state.gpu_ids.data, selections * sizeof(int32_t), cudaMemcpyHostToDevice, stream));
            CUDA_CHECK(cudaMemcpyAsync(entries.get(), state.entries.data, selections * sizeof(int32_t), cudaMemcpyHostToDevice, stream));
        }
        CUDA_CHECK(cudaMemsetAsync(dst->data, 0, output_count * sizeof(float), stream));
        CUDA_CHECK(cudaStreamWaitEvent(stream, atlas.ready, 0));
        const size_t timer = profile ? state.begin_gpu_interval(profile, &profile_totals::gpu_streamed_ms, stream, weights[0]->name) : 0;
        for (size_t first = 0; first < selections; first += tile_capacity) {
            const size_t count = std::min(tile_capacity, selections - first);
            const auto & tile = tiles[first / tile_capacity];
            ggml_tensor down_weight = weight_view(weights[2], atlas.weights[2], tile.slots);
            down_weight.data = atlas.weights[2].data() + size_t(tile.first_expert) * weights[2]->nb[2];
            const size_t values = size_t(hidden) * count;
            gather_inputs<<<unsigned((values + 255) / 256), 256, 0, stream>>>(gathered.get(),
                    static_cast<const float *>(input->data), entries.get() + first, values, int(hidden), int(topk));
            ggml_tensor compact_input = tensor_view(GGML_TYPE_F32, hidden, 1, count, gathered.get());
            ggml_tensor ids_gpu = tensor_view(GGML_TYPE_I32, 1, count, 1, gpu_ids.get() + first);
            ggml_tensor gate_output = tensor_view(GGML_TYPE_F32, ff, 1, count, state.bulk_fused ? gathered.get() : gate.get());
            ggml_tensor down_output = tensor_view(GGML_TYPE_F32, hidden, 1, count, parts.get());
            if (state.bulk_fused) {
                ggml_tensor combined_weight = tensor_view(weights[0]->type, hidden, 2 * ff, tile.slots,
                        atlas.weights[0].data() + size_t(tile.first_expert) * 2 * weights[0]->nb[2]);
                combined_weight.buffer = atlas.weights[0].buffer;
                ggml_tensor combined_output = tensor_view(GGML_TYPE_F32, 2 * ff, 1, count, gate.get());
                project_prefill(ctx, &combined_weight, &compact_input, &ids_gpu, &combined_output, tile.max_rows);
                // The gathered inputs are dead after the combined projection.
                swiglu_normalize<<<unsigned(count), 256, 0, stream>>>(gathered.get(), nullptr, scales.get(), int(ff), gate.get());
            } else {
                ggml_tensor gate_weight = weight_view(weights[0], atlas.weights[0], tile.slots);
                ggml_tensor up_weight = weight_view(weights[1], atlas.weights[1], tile.slots);
                gate_weight.data = atlas.weights[0].data() + size_t(tile.first_expert) * weights[0]->nb[2];
                up_weight.data = atlas.weights[1].data() + size_t(tile.first_expert) * weights[1]->nb[2];
                ggml_tensor up_output = tensor_view(GGML_TYPE_F32, ff, 1, count, up.get());
                project_prefill(ctx, &gate_weight, &compact_input, &ids_gpu, &gate_output, tile.max_rows);
                project_prefill(ctx, &up_weight, &compact_input, &ids_gpu, &up_output, tile.max_rows);
                swiglu_normalize<<<unsigned(count), 256, 0, stream>>>(gate.get(), up.get(), scales.get(), int(ff));
            }
            project_prefill(ctx, &down_weight, &gate_output, &ids_gpu, &down_output, tile.max_rows);
            scatter_weighted<<<unsigned((values + 255) / 256), 256, 0, stream>>>(static_cast<float *>(dst->data),
                    parts.get(), scales.get(), static_cast<const float *>(routing->data), entries.get() + first,
                    values, int(hidden), int(topk));
            CUDA_CHECK(cudaGetLastError());
        }
        if (profile) {
            state.end_gpu_interval(timer, stream);
        }
        std::vector<int> staged_slot(n_experts);
        std::iota(staged_slot.begin(), staged_slot.end(), 0);
        const size_t refresh_timer = profile ? state.begin_gpu_interval(profile, &profile_totals::gpu_refresh_ms, stream, weights[0]->name) : 0;
        promote(layer, staged_slot, &atlas.weights, layer.slots - 1, stream, state.bulk_fused);
        if (profile) {
            state.end_gpu_interval(refresh_timer, stream);
        }
        CUDA_CHECK(cudaEventRecord(atlas.consumed, stream));
        atlas.used = true;
        const auto current = std::find_if(state.prefill_layers.begin(), state.prefill_layers.end(),
                [&](const auto & candidate) { return candidate[0]->data == weights[0]->data; });
        if (current != state.prefill_layers.end() && state.prefill_layers.end() - current > 2 &&
                bulk_eligible(*(current + 2))) {
            enqueue_bulk(state, *(current + 2), &atlas);
        }
        submit_stream(stream);
        if (profile) {
            profile->layer_tokens += uint64_t(tokens);
            ++profile->calls;
        }
        CUDA_CHECK(cudaEventRecord(state.last_use, stream));
        state.pending = true;
        if (profile) {
            profile->host_prepare_submit_ms += double(ggml_time_us() - dispatch_start) / 1000.0;
        }
        return;
    }

    expert_group cached;
    std::vector<int> misses;
    for (int expert = 0; expert < n_experts; ++expert) {
        if (by_expert[expert].empty()) {
            continue;
        }
        if (layer.expert_slot[expert] >= 0) {
            cached.experts.push_back(expert);
        } else {
            misses.push_back(expert);
        }
    }
    // Prefer misses reused by several verified tokens, then the hotter expert.
    std::stable_sort(misses.begin(), misses.end(), [&](int a, int b) {
        if (by_expert[a].size() != by_expert[b].size()) {
            return by_expert[a].size() > by_expert[b].size();
        }
        return layer.heat[a] > layer.heat[b];
    });
    if (!prefill) {
        const size_t limit = std::min<size_t>(state.stream_experts, size_t(tokens) * state.gpu_misses_per_token);
        if (misses.size() > limit) {
            misses.resize(limit);
        }
    }
    std::vector<expert_group> groups;
    for (size_t first = 0; first < misses.size(); first += state.stream_experts) {
        expert_group group;
        const size_t end = std::min(misses.size(), first + state.stream_experts);
        group.experts.assign(misses.begin() + first, misses.begin() + end);
        groups.push_back(std::move(group));
    }
    size_t gpu_count = 0;
    size_t cpu_count = 0;
    size_t metadata_count = 0;
    if (prefill) {
        auto append = [&](expert_group & group, bool resident) {
            group.first = metadata_count;
            for (size_t slot = 0; slot < group.experts.size(); ++slot) {
                const int expert = group.experts[slot];
                for (int32_t entry : by_expert[expert]) {
                    state.entries.data[metadata_count] = entry;
                    state.gpu_ids.data[metadata_count++] = resident ? layer.expert_slot[expert] : int(slot + 1);
                }
            }
            group.count = metadata_count - group.first;
        };
        append(cached, true);
        for (auto & group : groups) {
            append(group, false);
        }
        GGML_ASSERT(metadata_count == selections);
        gpu_count = selections;
    } else {
        std::vector<int> staged_slot(n_experts, 0);
        for (size_t i = 0; i < misses.size(); ++i) {
            staged_slot[misses[i]] = int(i + 1);
        }
        state.cpu_mask.resize(selections);
        for (size_t i = 0; i < selections; ++i) {
            const int expert = state.ids.data[i];
            const int hit = layer.expert_slot[expert];
            state.gpu_ids.data[i] = hit >= 0 ? hit : 0;
            state.gpu_ids.data[selections + i] = staged_slot[expert];
            state.cpu_mask[i] = hit < 0 && staged_slot[expert] == 0;
            cpu_count += state.cpu_mask[i];
            cached.count += hit >= 0;
        }
        metadata_count = groups.empty() ? selections : 2 * selections;
        gpu_count = selections - cpu_count;
        ++state.decode_calls;
        state.gpu_selections += gpu_count;
        state.cpu_selections += cpu_count;
    }

    // Transfer banks are independent of the graph pool and remain valid until last_use.
    // Reusing a bank waits on all its matrix reads and cache promotions.
    const size_t bank_count = bulk_prefill ? state.staging.size() : 2;
    ggml_cuda_pool_alloc<int32_t> transfer_ids(ctx.pool(), bulk_prefill ? std::max<size_t>(1, misses.size()) : 1);
    if (bulk_prefill) {
        if (!misses.empty()) {
            state.transfer_ids.reserve(misses.size());
            std::copy(misses.begin(), misses.end(), state.transfer_ids.data);
            CUDA_CHECK(cudaMemcpyAsync(transfer_ids.get(), state.transfer_ids.data,
                    misses.size() * sizeof(int32_t), cudaMemcpyHostToDevice, stream));
        }
        if (state.bulk_key != weights[0]->data) {
            enqueue_bulk(state, weights);
        }
    }
    auto enqueue_transfer = [&](size_t index) {
        transfer_bank & bank = state.staging[index % bank_count];
        const expert_group & group = groups[index];
        if (bulk_prefill) {
            CUDA_CHECK(cudaStreamWaitEvent(stream, state.bulk.ready, 0));
            for (int p = 0; p < 3; ++p) {
                const size_t vectors = weights[p]->nb[2] / sizeof(uint4);
                const size_t count = vectors * (group.experts.size() + 1);
                gather_expert_weights<<<unsigned((count + 255) / 256), 256, 0, stream>>>(
                        reinterpret_cast<uint4 *>(bank.weights[p].data()),
                        reinterpret_cast<const uint4 *>(state.bulk.weights[p].data()),
                        transfer_ids.get() + index * state.stream_experts, vectors, count);
            }
            CUDA_CHECK(cudaGetLastError());
            CUDA_CHECK(cudaEventRecord(bank.ready, stream));
            if (index + 1 == groups.size()) {
                CUDA_CHECK(cudaEventRecord(state.bulk.consumed, stream));
                state.bulk.used = true;
                const auto current = std::find_if(state.prefill_layers.begin(), state.prefill_layers.end(),
                        [&](const auto & candidate) { return candidate[0]->data == weights[0]->data; });
                if (current != state.prefill_layers.end() && current + 1 != state.prefill_layers.end() &&
                        bulk_eligible(*(current + 1))) {
                    enqueue_bulk(state, *(current + 1));
                }
            }
            submit_stream(stream);
            return;
        }
        if (bank.used) {
            CUDA_CHECK(cudaStreamWaitEvent(state.copy_stream, bank.consumed, 0));
        }
        const size_t timer = profile ? state.begin_gpu_interval(profile, &profile_totals::gpu_copy_ms, state.copy_stream, weights[0]->name) : 0;
        for (int p = 0; p < 3; ++p) {
            const size_t bytes = weights[p]->nb[2];
            bank.weights[p].reserve(ctx.device, (state.stream_experts + 1) * bytes, state.copy_stream);
            CUDA_CHECK(cudaMemsetAsync(bank.weights[p].data(), 0, bytes, state.copy_stream));
            for (size_t slot = 0; slot < group.experts.size(); ++slot) {
                const char * from = static_cast<const char *>(weights[p]->data) + size_t(group.experts[slot]) * bytes;
                CUDA_CHECK(cudaMemcpyAsync(bank.weights[p].data() + (slot + 1) * bytes,
                        from, bytes, cudaMemcpyHostToDevice, state.copy_stream));
                if (profile) {
                    profile->h2d_weight_bytes += bytes;
                }
            }
        }
        if (profile) {
            state.end_gpu_interval(timer, state.copy_stream);
        }
        CUDA_CHECK(cudaEventRecord(bank.ready, state.copy_stream));
        submit_stream(state.copy_stream);
    };
    if (!bulk_prefill) {
        for (size_t i = 0; i < std::min(bank_count, groups.size()); ++i) {
            enqueue_transfer(i);
        }
    }

    ggml_cuda_pool_alloc<int32_t> gpu_ids(ctx.pool(), metadata_count);
    CUDA_CHECK(cudaMemcpyAsync(gpu_ids.get(), state.gpu_ids.data, metadata_count * sizeof(int32_t), cudaMemcpyHostToDevice, stream));
    const size_t tile_capacity = prefill ? std::min<size_t>(4096, selections) : selections;
    ggml_cuda_pool_alloc<int32_t> entries(ctx.pool(), prefill ? selections : 1);
    ggml_cuda_pool_alloc<float> gathered(ctx.pool(), prefill ? size_t(hidden) * tile_capacity : 1);
    ggml_cuda_pool_alloc<float> gate(ctx.pool(), size_t(ff) * tile_capacity);
    ggml_cuda_pool_alloc<float> up(ctx.pool(), size_t(ff) * tile_capacity);
    ggml_cuda_pool_alloc<float> scales(ctx.pool(), tile_capacity);
    ggml_cuda_pool_alloc<float> parts(ctx.pool(), size_t(hidden) * tile_capacity);
    if (prefill) {
        CUDA_CHECK(cudaMemcpyAsync(entries.get(), state.entries.data, selections * sizeof(int32_t), cudaMemcpyHostToDevice, stream));
    }
    CUDA_CHECK(cudaMemsetAsync(dst->data, 0, output_count * sizeof(float), stream));
    const auto * router_weights = static_cast<const float *>(routing->data);
    auto * output = static_cast<float *>(dst->data);

    auto execute = [&](const expert_group & group, std::array<device_weights, 3> & storage,
                       int slots, size_t id_offset) {
        ggml_tensor gate_weight = weight_view(weights[0], storage[0], slots);
        ggml_tensor up_weight = weight_view(weights[1], storage[1], slots);
        ggml_tensor down_weight = weight_view(weights[2], storage[2], slots);
        const size_t work_count = prefill ? group.count : selections;
        for (size_t first = 0; first < work_count; first += tile_capacity) {
            const size_t count = std::min(tile_capacity, work_count - first);
            const size_t metadata_offset = prefill ? group.first + first : id_offset;
            ggml_tensor compact_input = tensor_view(GGML_TYPE_F32, hidden, 1, count, gathered.get());
            if (prefill) {
                const size_t values = size_t(hidden) * count;
                gather_inputs<<<unsigned((values + 255) / 256), 256, 0, stream>>>(
                        gathered.get(), static_cast<const float *>(input->data), entries.get() + metadata_offset,
                        values, int(hidden), int(topk));
            }
            const int64_t k = prefill ? 1 : topk;
            const int64_t n = prefill ? int64_t(count) : tokens;
            ggml_tensor ids_gpu = tensor_view(GGML_TYPE_I32, k, n, 1, gpu_ids.get() + metadata_offset);
            ggml_tensor gate_output = tensor_view(GGML_TYPE_F32, ff, k, n, gate.get());
            ggml_tensor up_output = tensor_view(GGML_TYPE_F32, ff, k, n, up.get());
            ggml_tensor down_output = tensor_view(GGML_TYPE_F32, hidden, k, n, parts.get());
            int64_t max_expert_rows = 0;
            if (prefill) {
                std::vector<int64_t> rows(slots, 0);
                for (size_t i = 0; i < count; ++i) {
                    max_expert_rows = std::max(max_expert_rows, ++rows[state.gpu_ids.data[metadata_offset + i]]);
                }
            }
            project(ctx, &gate_weight, prefill ? &compact_input : input, &ids_gpu, &gate_output, !prefill, max_expert_rows);
            project(ctx, &up_weight, prefill ? &compact_input : input, &ids_gpu, &up_output, !prefill, max_expert_rows);
            swiglu_normalize<<<unsigned(count), 256, 0, stream>>>(gate.get(), up.get(), scales.get(), int(ff));
            project(ctx, &down_weight, &gate_output, &ids_gpu, &down_output, !prefill, max_expert_rows);
            if (prefill) {
                const size_t values = size_t(hidden) * count;
                scatter_weighted<<<unsigned((values + 255) / 256), 256, 0, stream>>>(
                        output, parts.get(), scales.get(), router_weights, entries.get() + metadata_offset,
                        values, int(hidden), int(topk));
            } else {
                reduce_weighted<<<unsigned((output_count + 255) / 256), 256, 0, stream>>>(
                        output, parts.get(), scales.get(), router_weights, output_count, int(hidden), int(topk));
            }
            CUDA_CHECK(cudaGetLastError());
        }
    };
    if (cached.count) {
        const size_t timer = profile ? state.begin_gpu_interval(profile, &profile_totals::gpu_cached_ms, stream, weights[0]->name) : 0;
        execute(cached, layer.weights, layer.slots, 0);
        if (profile) {
            state.end_gpu_interval(timer, stream);
        }
        if (prefill) {
            submit_stream(stream);
        }
    }
    if (bulk_prefill) {
        for (size_t i = 0; i < std::min(bank_count, groups.size()); ++i) {
            enqueue_transfer(i);
        }
    }
    for (size_t i = 0; i < groups.size(); ++i) {
        transfer_bank & bank = state.staging[i % bank_count];
        const expert_group & group = groups[i];
        CUDA_CHECK(cudaStreamWaitEvent(stream, bank.ready, 0));
        const size_t timer = profile ? state.begin_gpu_interval(profile, &profile_totals::gpu_streamed_ms, stream, weights[0]->name) : 0;
        execute(group, bank.weights, int(group.experts.size() + 1), selections);
        if (profile) {
            state.end_gpu_interval(timer, stream);
        }
        std::vector<int> staged_slot(n_experts, -1);
        for (size_t slot = 0; slot < group.experts.size(); ++slot) {
            staged_slot[group.experts[slot]] = int(slot + 1);
        }
        // Cached reads precede every promotion. Each uploaded miss can be admitted
        // from VRAM without an additional RAM transfer.
        const size_t refresh_timer = profile ? state.begin_gpu_interval(profile, &profile_totals::gpu_refresh_ms, stream, weights[0]->name) : 0;
        promote(layer, staged_slot, &bank.weights, prefill ? layer.slots - 1 : state.promote_max, stream);
        if (profile) {
            state.end_gpu_interval(refresh_timer, stream);
        }
        CUDA_CHECK(cudaEventRecord(bank.consumed, stream));
        bank.used = true;
        submit_stream(stream);
        if (i + bank_count < groups.size()) {
            enqueue_transfer(i + bank_count);
        }
    }
    if (bulk_prefill && groups.empty()) {
        CUDA_CHECK(cudaStreamWaitEvent(stream, state.bulk.ready, 0));
        CUDA_CHECK(cudaEventRecord(state.bulk.consumed, stream));
        state.bulk.used = true;
    }

    if (cpu_count) {
        const size_t part_count = size_t(hidden) * selections;
        state.cpu_result.reserve(part_count);
        std::memset(state.cpu_result.data, 0, part_count * sizeof(float));
        const size_t cpu_wait_timer = profile ?
                state.begin_gpu_interval(profile, &profile_totals::gpu_cpu_wait_ms, stream, weights[0]->name) : 0;
        const bool mapped_cpu = !prefill && state.cpu_doorbell;
        const unsigned cpu_blocks = unsigned(std::min<size_t>((output_count + 255) / 256, 64));
        const uint64_t cpu_generation = ++state.cpu_generation;
        if (mapped_cpu) {
            if (state.cpu_ready.capacity == 0) {
                state.cpu_ready.reserve(1);
                state.cpu_ready.data[0] = 0;
            }
            if (state.cpu_completed.capacity < cpu_blocks) {
                state.cpu_completed.reserve(cpu_blocks);
                std::memset(state.cpu_completed.data, 0, state.cpu_completed.capacity * sizeof(uint64_t));
            }
            std::atomic_thread_fence(std::memory_order_seq_cst);
            reduce_cpu_mapped<true><<<cpu_blocks, 256, 0, stream>>>(
                    output, state.cpu_result.data, router_weights, output_count, int(hidden), int(topk),
                    state.cpu_ready.data, state.cpu_completed.data, cpu_generation);
            CUDA_CHECK(cudaGetLastError());
        }
        for (cudaStream_t submitted : {state.copy_stream, stream}) {
            submit_stream(submitted);
        }
        const int64_t cpu_start = profile ? ggml_time_us() : 0;
        if (!ggml_cpu_moe_compute_fused(state.cpu, weights[0], weights[1], weights[2], state.x.data,
                state.ids.data, state.cpu_mask.data(), topk, tokens, state.cpu_result.data)) {
            GGML_ABORT("hybrid CPU experts failed: %s", ggml_cpu_moe_pool_error(state.cpu));
        }
        if (mapped_cpu) {
            std::atomic_thread_fence(std::memory_order_release);
            *reinterpret_cast<volatile uint64_t *>(state.cpu_ready.data) = cpu_generation;
        }
        if (profile) {
            profile->cpu_fused_ms += double(ggml_time_us() - cpu_start) / 1000.0;
            state.end_gpu_interval(cpu_wait_timer, stream);
        }
        if (mapped_cpu) {
            // Blocks that timed out reduce after the CPU is done. Both launches
            // use the same partition, so each output receives its CPU sum once.
            reduce_cpu_mapped<false><<<cpu_blocks, 256, 0, stream>>>(
                    output, state.cpu_result.data, router_weights, output_count, int(hidden), int(topk),
                    state.cpu_ready.data, state.cpu_completed.data, cpu_generation);
        } else {
            ggml_cuda_pool_alloc<float> cpu_output(ctx.pool(), part_count);
            CUDA_CHECK(cudaMemcpyAsync(cpu_output.get(), state.cpu_result.data, part_count * sizeof(float), cudaMemcpyHostToDevice, stream));
            reduce_weighted<<<unsigned((output_count + 255) / 256), 256, 0, stream>>>(
                    output, cpu_output.get(), nullptr, router_weights, output_count, int(hidden), int(topk));
        }
        CUDA_CHECK(cudaGetLastError());
    }
    if (!prefill && state.gpu_misses_per_token == 0) {
        layer.decode_tokens_since_promotion += int(tokens);
        if (layer.decode_tokens_since_promotion >= 16) {
            // Amortize cache refreshes over several verification batches.
            // Ordinary misses execute on the CPU without per-token uploads.
            const std::vector<int> unused_slots;
            const size_t timer = profile ? state.begin_gpu_interval(profile, &profile_totals::gpu_refresh_ms, stream, weights[0]->name) : 0;
            const uint64_t bytes = promote(layer, unused_slots, nullptr, state.promote_max, stream);
            if (profile) {
                state.end_gpu_interval(timer, stream);
                profile->h2d_weight_bytes += bytes;
            }
            layer.decode_tokens_since_promotion = 0;
        }
    }
    if (profile) {
        profile->layer_tokens += uint64_t(tokens);
        ++profile->calls;
    }
    if (!prefill && state.decode_calls % (uint64_t(state.layers) * 128) == 0) {
        const uint64_t all = state.gpu_selections + state.cpu_selections;
        GGML_LOG_INFO("CUDA hybrid MoE: GPU handled %.1f%% of %llu decode selections (cached and streamed); "
                "CPU handled the rest\n", all ? 100.0 * state.gpu_selections / all : 0.0,
                static_cast<unsigned long long>(all));
    }
    CUDA_CHECK(cudaEventRecord(state.last_use, stream));
    state.pending = true;
    if (profile) {
        profile->host_prepare_submit_ms += double(ggml_time_us() - dispatch_start) / 1000.0 -
                (profile->cpu_fused_ms - dispatch_cpu_start);
    }
}

void ggml_cuda_moe_hybrid_cleanup(ggml_backend_cuda_context & ctx) {
    std::lock_guard<std::mutex> lock(states_mutex);
    const auto it = states.find(&ctx);
    if (it != states.end()) {
        ggml_cuda_set_device(ctx.device);
        states.erase(it);
    }
}
