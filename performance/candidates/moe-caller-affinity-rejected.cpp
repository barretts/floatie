#define GGML_CPU_MOE_IMPLEMENTATION
#include "ggml-cpu-moe.h"
#include "ggml-cpu.h"
#include "ggml-impl.h"
#include "moe-iq.h"

#include <algorithm>
#include <atomic>
#include <chrono>
#include <cmath>
#include <condition_variable>
#include <cstdlib>
#include <cstdint>
#include <exception>
#include <limits>
#include <mutex>
#include <new>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>

#if defined(_WIN32)
#    ifndef NOMINMAX
#        define NOMINMAX
#    endif
#    include <windows.h>
#endif
#if defined(__x86_64__) || defined(_M_X64) || defined(__i386__) || defined(_M_IX86)
#    include <immintrin.h>
#endif

namespace {

void moe_pause() {
#if defined(__x86_64__) || defined(_M_X64) || defined(__i386__) || defined(_M_IX86)
    _mm_pause();
#else
    std::this_thread::yield();
#endif
}

size_t checked_product(size_t a, size_t b) {
    if (b && a > std::numeric_limits<size_t>::max() / b) {
        throw std::runtime_error("MoE scratch size overflow");
    }
    return a * b;
}

size_t align64(size_t bytes) {
    if (bytes > std::numeric_limits<size_t>::max() - 63) {
        throw std::runtime_error("MoE scratch size overflow");
    }
    return (bytes + 63) & ~size_t(63);
}

struct aligned_bytes {
    std::vector<uint8_t> storage;

    void resize(size_t bytes) {
        if (bytes > std::numeric_limits<size_t>::max() - 63) {
            throw std::runtime_error("MoE scratch size overflow");
        }
        if (storage.size() < bytes + 63) {
            storage.resize(bytes + 63);
        }
    }

    uint8_t * data() {
        return reinterpret_cast<uint8_t *>(
                (reinterpret_cast<uintptr_t>(storage.data()) + 63) & ~uintptr_t(63));
    }
};

struct matrix {
    const ggml_tensor * tensor = nullptr;
    ggml_vec_dot_t dot = nullptr;
    ggml_from_float_t quantize = nullptr;
    ggml_type activation_type = GGML_TYPE_COUNT;
    size_t activation_stride = 0;

    void set(const ggml_tensor * value) {
        if (!value || !value->data ||
                value->type < 0 || value->type >= GGML_TYPE_COUNT ||
                value->ne[0] <= 0 || value->ne[0] > std::numeric_limits<int>::max() ||
                value->ne[1] <= 0 || value->ne[2] <= 0 || value->ne[3] != 1) {
            throw std::runtime_error("MoE expects a populated three-dimensional host weight tensor");
        }
        const ggml_type_traits_cpu * traits = ggml_get_type_traits_cpu(value->type);
        if (!traits || !traits->vec_dot ||
                traits->vec_dot_type < 0 || traits->vec_dot_type >= GGML_TYPE_COUNT) {
            throw std::runtime_error("MoE weight type has no CPU dot product");
        }
        const ggml_type_traits_cpu * activation = ggml_get_type_traits_cpu(traits->vec_dot_type);
        if (!activation || !activation->from_float) {
            throw std::runtime_error("MoE activation type has no CPU quantizer");
        }
        if (value->ne[0] % ggml_blck_size(value->type) != 0 ||
                value->ne[0] % ggml_blck_size(traits->vec_dot_type) != 0 ||
                value->nb[0] != ggml_type_size(value->type)) {
            throw std::runtime_error("MoE matrix rows do not match their quantization blocks");
        }
        const size_t row_bytes = ggml_row_size(value->type, value->ne[0]);
        if (value->nb[1] < row_bytes ||
                value->nb[2] < checked_product(value->nb[1], size_t(value->ne[1]))) {
            throw std::runtime_error("MoE matrix has overlapping row or expert strides");
        }
        tensor = value;
        dot = traits->vec_dot;
        quantize = activation->from_float;
        activation_type = traits->vec_dot_type;
        activation_stride = align64(ggml_row_size(activation_type, value->ne[0]));
    }

    float row(int32_t expert, int64_t r, const void * activation) const {
        float result;
        const char * weights = static_cast<const char *>(tensor->data) +
                size_t(expert) * tensor->nb[2] + size_t(r) * tensor->nb[1];
        dot(int(tensor->ne[0]), &result, 0, weights, 0, activation, 0, 1);
        return result;
    }
};

#if defined(_WIN32)
std::vector<GROUP_AFFINITY> physical_cores(bool include_siblings = false) {
    DWORD bytes = 0;
    GetLogicalProcessorInformationEx(RelationProcessorCore, nullptr, &bytes);
    if (!bytes) {
        return {};
    }
    std::vector<uint8_t> storage(bytes);
    auto * info = reinterpret_cast<PSYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX>(storage.data());
    if (!GetLogicalProcessorInformationEx(RelationProcessorCore, info, &bytes)) {
        return {};
    }
    std::vector<GROUP_AFFINITY> result;
    for (DWORD offset = 0; offset < bytes;) {
        const auto * item = reinterpret_cast<const SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX *>(
                storage.data() + offset);
        if (!item->Size || item->Size > bytes - offset) {
            break;
        }
        if (item->Relationship == RelationProcessorCore) {
            for (WORD group = 0; group < item->Processor.GroupCount; ++group) {
                GROUP_AFFINITY affinity = item->Processor.GroupMask[group];
                if (affinity.Mask) {
                    if (!include_siblings) {
                        affinity.Mask &= (~affinity.Mask + 1);
                    }
                    result.push_back(affinity);
                    break;
                }
            }
        }
        offset += item->Size;
    }
    return result;
}

struct caller_affinity_scope {
    GROUP_AFFINITY previous = {};
    bool applied = false;

    explicit caller_affinity_scope(const GROUP_AFFINITY * target) {
        if (target) {
            applied = SetThreadGroupAffinity(GetCurrentThread(), target, &previous) != 0;
        }
    }

    ~caller_affinity_scope() {
        GROUP_AFFINITY ignored = {};
        if (applied && !SetThreadGroupAffinity(GetCurrentThread(), &previous, &ignored)) {
            GGML_LOG_WARN("CPU MoE caller affinity restoration failed: %lu\n", GetLastError());
        }
    }
};
#endif

} // namespace

struct ggml_cpu_moe_pool {
    enum class phase { projection, gate_up, quantize_down, down };

    struct job {
        size_t entry;
        size_t input_column;
        int32_t expert;
    };

    struct job_group {
        size_t first;
        size_t count;
    };

    explicit ggml_cpu_moe_pool(int requested_threads) {
        static std::once_flag cpu_init;
        std::call_once(cpu_init, [] { ggml_cpu_init(); });
        const char * profile = std::getenv("GGML_CUDA_MOE_PROFILE");
        profile_enabled = profile && std::atoi(profile) != 0;
        const char * caller_affinity = std::getenv("GGML_MOE_CALLER_AFFINITY");
        caller_affinity_enabled = caller_affinity && std::atoi(caller_affinity) != 0;
#if defined(_WIN32)
        cores = physical_cores();
        if (profile_enabled) {
            profile_cores = physical_cores(true);
        }
        const int automatic = cores.empty() ? int(std::thread::hardware_concurrency()) : int(cores.size());
#else
        const int automatic = int(std::thread::hardware_concurrency());
#endif
        const int threads = std::max(1, std::min(128, requested_threads > 0 ? requested_threads : automatic));
        try {
            for (int i = 0; i < threads - 1; ++i) {
                workers.emplace_back([this, i] { worker(i); });
            }
        } catch (...) {
            {
                std::lock_guard<std::mutex> lock(sleep_mutex);
                stop.store(true, std::memory_order_release);
            }
            cv.notify_all();
            for (auto & worker_thread : workers) {
                worker_thread.join();
            }
            throw;
        }
    }

    ~ggml_cpu_moe_pool() {
        {
            std::lock_guard<std::mutex> lock(sleep_mutex);
            stop.store(true, std::memory_order_release);
        }
        cv.notify_all();
        for (auto & worker_thread : workers) {
            worker_thread.join();
        }
    }

    bool prepare(const int32_t * ids, const uint8_t * mask,
                 int64_t topk, int64_t tokens, int64_t columns, int64_t experts,
                 const float * x, float * out) {
        error.clear();
        if (!ids || !mask || !x || !out || topk <= 0 || tokens <= 0 ||
                columns <= 0 || columns > topk || topk % columns != 0 ||
                topk > std::numeric_limits<int32_t>::max() ||
                tokens > std::numeric_limits<int32_t>::max()) {
            throw std::runtime_error("MoE received invalid input dimensions or null input");
        }
        entries = checked_product(size_t(topk), size_t(tokens));
        if (entries > size_t(std::numeric_limits<int32_t>::max())) {
            throw std::runtime_error("MoE selected-expert batch is too large");
        }
        jobs.clear();
        if (jobs.capacity() < entries) {
            jobs.reserve(entries);
        }
        for (size_t entry = 0; entry < entries; ++entry) {
            if (ids[entry] < 0 || ids[entry] >= experts) {
                throw std::runtime_error("MoE routed expert id is outside the weight tensor");
            }
            if (mask[entry]) {
                const size_t token = entry / size_t(topk);
                const size_t slot = entry % size_t(topk);
                jobs.push_back({entry, token * size_t(columns) + slot % size_t(columns), ids[entry]});
            }
        }
        std::stable_sort(jobs.begin(), jobs.end(), [](const job & a, const job & b) {
            return a.expert < b.expert;
        });
        groups.clear();
        for (size_t first = 0; first < jobs.size();) {
            size_t end = first + 1;
            while (end < jobs.size() && end - first < 4 && jobs[end].expert == jobs[first].expert) {
                ++end;
            }
            groups.push_back({first, end - first});
            first = end;
        }
        output = out;
        return !jobs.empty();
    }

    void quantize_input(const matrix & m, aligned_bytes & destination, const float * x, size_t columns) {
        destination.resize(checked_product(columns, m.activation_stride));
        for (size_t column = 0; column < columns; ++column) {
            m.quantize(x + column * size_t(m.tensor->ne[0]),
                       destination.data() + column * m.activation_stride, m.tensor->ne[0]);
        }
    }

    void run(phase value, int64_t rows) {
        current_phase = value;
        phase_rows = rows;
        chunks_per_job = value == phase::quantize_down ? 1 : (size_t(rows) + 63) / 64;
        const bool group_rows = value != phase::quantize_down;
        task_count = checked_product(group_rows ? groups.size() : jobs.size(), chunks_per_job);
        next_task.store(0, std::memory_order_relaxed);
        remaining_workers.store(int(workers.size()), std::memory_order_relaxed);
        {
            // Publish under the same lock as the sleep predicate: a worker
            // cannot miss the transition between its final poll and waiting.
            std::lock_guard<std::mutex> lock(sleep_mutex);
            epoch.fetch_add(1, std::memory_order_release);
            if (sleepers.load(std::memory_order_relaxed)) {
                cv.notify_all();
            }
        }
        drain();
        while (remaining_workers.load(std::memory_order_acquire) != 0) {
            moe_pause();
        }
    }

    void drain() {
        for (;;) {
            const size_t task = next_task.fetch_add(1, std::memory_order_relaxed);
            if (task >= task_count) {
                return;
            }
            if (current_phase == phase::quantize_down) {
                const job & j = jobs[task / chunks_per_job];
                float * activation = intermediate.data() + j.entry * size_t(down.tensor->ne[0]);
                float sum_squares = 0.0f;
                for (int64_t r = 0; r < down.tensor->ne[0]; ++r) {
                    sum_squares += activation[r] * activation[r];
                }
                const float norm = std::clamp(std::sqrt(sum_squares), 1e-8f, 1e30f);
                down_norm[j.entry] = norm;
                for (int64_t r = 0; r < down.tensor->ne[0]; ++r) {
                    activation[r] = (activation[r] * 32768.0f) / norm;
                }
                down.quantize(activation, quantized_down.data() + j.entry * down.activation_stride,
                              down.tensor->ne[0]);
                continue;
            }
            const int64_t r0 = int64_t(task % chunks_per_job) * 64;
            const int64_t r1 = std::min(r0 + 64, phase_rows);
            const job_group & group = groups[task / chunks_per_job];
            if (group.count > 1 && compute_group(group, int(r0), int(r1))) {
                continue;
            }
            for (size_t index = group.first; index < group.first + group.count; ++index) {
                const job & j = jobs[index];
                if (current_phase == phase::projection) {
                    const void * act = quantized_input.data() + j.input_column * gate.activation_stride;
                    float * dst = output + j.entry * size_t(phase_rows);
                    for (int64_t r = r0; r < r1; ++r) {
                        dst[r] = gate.row(j.expert, r, act);
                    }
                } else if (current_phase == phase::gate_up) {
                    const void * gate_act = quantized_input.data() + j.input_column * gate.activation_stride;
                    const void * up_act = same_input_format ? gate_act :
                            quantized_up.data() + j.input_column * up.activation_stride;
                    float * dst = intermediate.data() + j.entry * size_t(phase_rows);
                    for (int64_t r = r0; r < r1; ++r) {
                        const float g = gate.row(j.expert, r, gate_act);
                        const float u = up.row(j.expert, r, up_act);
                        dst[r] = (g / (1.0f + std::exp(-g))) * u;
                    }
                } else {
                    const void * act = quantized_down.data() + j.entry * down.activation_stride;
                    float * dst = output + j.entry * size_t(phase_rows);
                    for (int64_t r = r0; r < r1; ++r) {
                        dst[r] = (down.row(j.expert, r, act) * down_norm[j.entry]) * (1.0f / 32768.0f);
                    }
                }
            }
        }
    }

    bool compute_group(const job_group & group, int first, int end) {
        const matrix & m = current_phase == phase::down ? down : gate;
        if (!ggml_cpu_moe_iq_supported(m.tensor->type) ||
                (current_phase == phase::gate_up &&
                 (!same_input_format || gate.tensor->type != up.tensor->type))) {
            return false;
        }
        const void * acts[4];
        float * outputs[4];
        for (size_t t = 0; t < group.count; ++t) {
            const job & j = jobs[group.first + t];
            acts[t] = current_phase == phase::down ?
                    quantized_down.data() + j.entry * down.activation_stride :
                    quantized_input.data() + j.input_column * gate.activation_stride;
            outputs[t] = current_phase == phase::gate_up ?
                    intermediate.data() + j.entry * size_t(phase_rows) :
                    output + j.entry * size_t(phase_rows);
        }
        const size_t expert = size_t(jobs[group.first].expert);
        const char * weights = static_cast<const char *>(m.tensor->data) + expert * m.tensor->nb[2];
        if (current_phase == phase::gate_up) {
            const char * up_weights = static_cast<const char *>(up.tensor->data) + expert * up.tensor->nb[2];
            ggml_cpu_moe_iq_gate_up(m.tensor->type, weights, up_weights,
                    gate.tensor->nb[1], up.tensor->nb[1], int(m.tensor->ne[0]),
                    acts, int(group.count), outputs, first, end);
        } else {
            ggml_cpu_moe_iq_rows(m.tensor->type, weights, m.tensor->nb[1], int(m.tensor->ne[0]),
                    acts, int(group.count), outputs, first, end);
            if (current_phase == phase::down) {
                for (size_t t = 0; t < group.count; ++t) {
                    const float scale = down_norm[jobs[group.first + t].entry];
                    for (int r = first; r < end; ++r) {
                        outputs[t][r] = (outputs[t][r] * scale) * (1.0f / 32768.0f);
                    }
                }
            }
        }
        return true;
    }

    void worker(int index) {
#if defined(_WIN32)
        if (!cores.empty() && size_t(index + 1) < cores.size()) {
            GROUP_AFFINITY previous = {};
            if (SetThreadGroupAffinity(GetCurrentThread(), &cores[size_t(index + 1)], &previous)) {
                worker_affinity_successes.fetch_add(1, std::memory_order_relaxed);
            } else {
                worker_affinity_failures.fetch_add(1, std::memory_order_relaxed);
            }
        }
#else
        (void) index;
#endif
        uint64_t observed = 0;
        auto idle_since = std::chrono::steady_clock::now();
        unsigned spins = 0;
        while (!stop.load(std::memory_order_acquire)) {
            const uint64_t current = epoch.load(std::memory_order_acquire);
            if (current != observed) {
                observed = current;
                drain();
                remaining_workers.fetch_sub(1, std::memory_order_release);
                idle_since = std::chrono::steady_clock::now();
                spins = 0;
                continue;
            }
            moe_pause();
            if ((++spins & 1023u) != 0) {
                continue;
            }
            if (std::chrono::steady_clock::now() - idle_since < std::chrono::milliseconds(20)) {
                continue;
            }
            std::unique_lock<std::mutex> lock(sleep_mutex);
            sleepers.fetch_add(1, std::memory_order_release);
            cv.wait(lock, [&] {
                return stop.load(std::memory_order_acquire) ||
                        epoch.load(std::memory_order_acquire) != observed;
            });
            sleepers.fetch_sub(1, std::memory_order_release);
            idle_since = std::chrono::steady_clock::now();
        }
    }

    void sample_caller_core() {
#if defined(_WIN32)
        PROCESSOR_NUMBER processor = {};
        GetCurrentProcessorNumberEx(&processor);
        ++profile_caller_samples;
        const DWORD thread_id = GetCurrentThreadId();
        if (!profile_caller_thread_id) {
            profile_caller_thread_id = thread_id;
        }
        profile_caller_other_thread_samples += thread_id != profile_caller_thread_id;
        const auto matches = [&](const GROUP_AFFINITY & core) {
            return core.Group == processor.Group && (core.Mask & (KAFFINITY(1) << processor.Number)) != 0;
        };
        if (!profile_cores.empty() && matches(profile_cores[0])) {
            ++profile_caller_reserved_core_samples;
        }
        for (size_t i = 1; i < profile_cores.size() && i <= workers.size(); ++i) {
            if (matches(profile_cores[i])) {
                ++profile_caller_worker_core_samples;
                break;
            }
        }
#endif
    }

    std::string error;
    matrix gate, up, down;
    aligned_bytes quantized_input, quantized_up, quantized_down;
    std::vector<float> intermediate;
    std::vector<float> down_norm;
    std::vector<job> jobs;
    std::vector<job_group> groups;
    bool profile_enabled = false;
    bool caller_affinity_enabled = false;
    uint64_t profile_calls = 0;
    uint64_t profile_jobs = 0;
    uint64_t profile_group_counts[4] = {};
    uint64_t profile_weight_bytes = 0;
    int64_t profile_setup_us = 0;
    int64_t profile_gate_up_us = 0;
    int64_t profile_down_quant_us = 0;
    int64_t profile_down_us = 0;
    uint64_t profile_caller_samples = 0;
    uint64_t profile_caller_worker_core_samples = 0;
    uint64_t profile_caller_reserved_core_samples = 0;
    uint64_t profile_caller_other_thread_samples = 0;
    uint32_t profile_caller_thread_id = 0;
    uint64_t profile_caller_affinity_requested = 0;
    uint64_t profile_caller_affinity_applied = 0;
    std::atomic<unsigned> worker_affinity_successes{0};
    std::atomic<unsigned> worker_affinity_failures{0};
    size_t entries = 0;
    float * output = nullptr;
    bool same_input_format = false;

    phase current_phase = phase::projection;
    int64_t phase_rows = 0;
    size_t chunks_per_job = 0;
    size_t task_count = 0;
    alignas(64) std::atomic<size_t> next_task{0};
    alignas(64) std::atomic<int> remaining_workers{0};
    alignas(64) std::atomic<uint64_t> epoch{0};
    alignas(64) std::atomic<bool> stop{false};
    alignas(64) std::atomic<int> sleepers{0};
    std::mutex sleep_mutex;
    std::condition_variable cv;
    std::vector<std::thread> workers;
#if defined(_WIN32)
    std::vector<GROUP_AFFINITY> cores;
    std::vector<GROUP_AFFINITY> profile_cores;
#endif
};

ggml_cpu_moe_pool * ggml_cpu_moe_pool_new(int threads) {
    try {
        return new ggml_cpu_moe_pool(threads);
    } catch (...) {
        return nullptr;
    }
}

void ggml_cpu_moe_pool_free(ggml_cpu_moe_pool * pool) {
    delete pool;
}

const char * ggml_cpu_moe_pool_error(const ggml_cpu_moe_pool * pool) {
    return pool ? pool->error.c_str() : "MoE CPU pool allocation failed";
}

bool ggml_cpu_moe_compute_projection(
        ggml_cpu_moe_pool * pool, const ggml_tensor * weights,
        const float * x, int64_t x_cols,
        const int32_t * ids, const uint8_t * cpu_mask,
        int64_t topk, int64_t tokens, float * out) {
    if (!pool) {
        return false;
    }
    try {
        pool->gate.set(weights);
        if (!pool->prepare(ids, cpu_mask, topk, tokens, x_cols, weights->ne[2], x, out)) {
            return true;
        }
        pool->quantize_input(pool->gate, pool->quantized_input, x,
                             checked_product(size_t(tokens), size_t(x_cols)));
        pool->run(ggml_cpu_moe_pool::phase::projection, weights->ne[1]);
        return true;
    } catch (const std::exception & ex) {
        pool->error = ex.what();
        return false;
    } catch (...) {
        pool->error = "Unknown MoE CPU projection failure";
        return false;
    }
}

bool ggml_cpu_moe_compute_fused(
        ggml_cpu_moe_pool * pool,
        const ggml_tensor * gate, const ggml_tensor * up, const ggml_tensor * down,
        const float * x, const int32_t * ids, const uint8_t * cpu_mask,
        int64_t topk, int64_t tokens, float * out) {
    if (!pool) {
        return false;
    }
    const int64_t profile_start = pool->profile_enabled ? ggml_time_us() : 0;
    try {
        pool->gate.set(gate);
        pool->up.set(up);
        pool->down.set(down);
        if (gate->ne[0] != up->ne[0] || gate->ne[1] != up->ne[1] ||
                gate->ne[2] != up->ne[2] || down->ne[2] != gate->ne[2] ||
                down->ne[0] != gate->ne[1] || down->ne[1] != gate->ne[0]) {
            throw std::runtime_error("MoE gate, up and down dimensions are inconsistent");
        }
        if (!pool->prepare(ids, cpu_mask, topk, tokens, 1, gate->ne[2], x, out)) {
            return true;
        }
        pool->same_input_format = pool->gate.activation_type == pool->up.activation_type;
        pool->quantize_input(pool->gate, pool->quantized_input, x, size_t(tokens));
        if (!pool->same_input_format) {
            pool->quantize_input(pool->up, pool->quantized_up, x, size_t(tokens));
        }
        const size_t intermediate_size = checked_product(pool->entries, size_t(gate->ne[1]));
        if (pool->intermediate.size() < intermediate_size) {
            pool->intermediate.resize(intermediate_size);
        }
        pool->quantized_down.resize(checked_product(pool->entries, pool->down.activation_stride));
        if (pool->down_norm.size() < pool->entries) {
            pool->down_norm.resize(pool->entries);
        }
#if defined(_WIN32)
        const bool assign_caller = pool->caller_affinity_enabled && !pool->cores.empty() &&
                pool->workers.size() < pool->cores.size();
        caller_affinity_scope affinity(assign_caller ? &pool->cores[0] : nullptr);
        if (pool->profile_enabled && assign_caller) {
            ++pool->profile_caller_affinity_requested;
            pool->profile_caller_affinity_applied += affinity.applied;
        }
#endif
        const int64_t before_gate_up = pool->profile_enabled ? ggml_time_us() : 0;
        if (pool->profile_enabled) {
            pool->sample_caller_core();
        }
        pool->run(ggml_cpu_moe_pool::phase::gate_up, gate->ne[1]);
        const int64_t before_down_quant = pool->profile_enabled ? ggml_time_us() : 0;
        pool->run(ggml_cpu_moe_pool::phase::quantize_down, down->ne[0]);
        const int64_t before_down = pool->profile_enabled ? ggml_time_us() : 0;
        pool->run(ggml_cpu_moe_pool::phase::down, down->ne[1]);
        if (pool->profile_enabled) {
            pool->sample_caller_core();
            pool->profile_setup_us += before_gate_up - profile_start;
            pool->profile_gate_up_us += before_down_quant - before_gate_up;
            pool->profile_down_quant_us += before_down - before_down_quant;
            pool->profile_down_us += ggml_time_us() - before_down;
            pool->profile_jobs += pool->jobs.size();
            for (const auto & group : pool->groups) {
                ++pool->profile_group_counts[group.count - 1];
            }
            pool->profile_weight_bytes += pool->groups.size() * (gate->nb[2] + up->nb[2] + down->nb[2]);
            if (++pool->profile_calls == 752) {
                GGML_LOG_INFO("CUDA hybrid MoE CPU profile: calls=%llu jobs=%llu groups_1_2_3_4=(%llu,%llu,%llu,%llu) "
                        "scheduled_weight_MiB=%.2f setup_ms=%.2f gate_up_ms=%.2f down_quant_ms=%.2f down_ms=%.2f\n",
                        (unsigned long long) pool->profile_calls, (unsigned long long) pool->profile_jobs,
                        (unsigned long long) pool->profile_group_counts[0], (unsigned long long) pool->profile_group_counts[1],
                        (unsigned long long) pool->profile_group_counts[2], (unsigned long long) pool->profile_group_counts[3],
                        double(pool->profile_weight_bytes) / (1024 * 1024), double(pool->profile_setup_us) / 1000,
                        double(pool->profile_gate_up_us) / 1000, double(pool->profile_down_quant_us) / 1000,
                        double(pool->profile_down_us) / 1000);
                GGML_LOG_INFO("CUDA hybrid MoE CPU placement: samples=%llu worker_core_samples=%llu "
                        "reserved_core_samples=%llu caller_thread_id=%u other_thread_samples=%llu "
                        "worker_affinity_successes=%u worker_affinity_failures=%u "
                        "caller_affinity_requested=%llu caller_affinity_applied=%llu\n",
                        (unsigned long long) pool->profile_caller_samples,
                        (unsigned long long) pool->profile_caller_worker_core_samples,
                        (unsigned long long) pool->profile_caller_reserved_core_samples,
                        pool->profile_caller_thread_id, (unsigned long long) pool->profile_caller_other_thread_samples,
                        pool->worker_affinity_successes.load(std::memory_order_relaxed),
                        pool->worker_affinity_failures.load(std::memory_order_relaxed),
                        (unsigned long long) pool->profile_caller_affinity_requested,
                        (unsigned long long) pool->profile_caller_affinity_applied);
                pool->profile_calls = pool->profile_jobs = pool->profile_weight_bytes = 0;
                for (auto & count : pool->profile_group_counts) {
                    count = 0;
                }
                pool->profile_setup_us = pool->profile_gate_up_us = pool->profile_down_quant_us = pool->profile_down_us = 0;
                pool->profile_caller_samples = pool->profile_caller_worker_core_samples = 0;
                pool->profile_caller_reserved_core_samples = pool->profile_caller_other_thread_samples = 0;
                pool->profile_caller_thread_id = 0;
                pool->profile_caller_affinity_requested = pool->profile_caller_affinity_applied = 0;
            }
        }
        return true;
    } catch (const std::exception & ex) {
        pool->error = ex.what();
        return false;
    } catch (...) {
        pool->error = "Unknown MoE CPU expert failure";
        return false;
    }
}





