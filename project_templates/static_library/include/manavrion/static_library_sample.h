#ifndef MANAVRION_STATIC_LIBRARY_SAMPLE_H_
#define MANAVRION_STATIC_LIBRARY_SAMPLE_H_

#include <cstdint>
#include <vector>

namespace static_library {

[[nodiscard]] int64_t add(const int64_t a, const int64_t b);
[[nodiscard]] int64_t mul(const int64_t a, const int64_t b);

[[nodiscard]] int64_t add_first3(const std::vector<int64_t>& xs);

}  // namespace static_library

#endif  // MANAVRION_STATIC_LIBRARY_SAMPLE_H_
