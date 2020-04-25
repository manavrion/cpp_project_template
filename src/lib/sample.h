#ifndef LIB_SAMPLE_H_
#define LIB_SAMPLE_H_

#include <cstdint>
#include <vector>

namespace template_repository {

[[nodiscard]] int64_t add(const int64_t a, const int64_t b);
[[nodiscard]] int64_t mul(const int64_t a, const int64_t b);

[[nodiscard]] int64_t add_first3(const std::vector<int64_t>& xs);

}  // namespace template_repository

#endif  // LIB_SAMPLE_H_
