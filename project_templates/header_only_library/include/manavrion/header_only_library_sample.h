#ifndef MANAVRION_HEADER_ONLY_LIBRARY_SAMPLE_H_
#define MANAVRION_HEADER_ONLY_LIBRARY_SAMPLE_H_

#include <range/v3/numeric/accumulate.hpp>
#include <range/v3/view/take.hpp>
#include <vector>

namespace header_only_library_sample {

inline int64_t add(const int64_t a, const int64_t b) { return a + b; }
inline int64_t mul(const int64_t a, const int64_t b) { return a * b; }

inline int64_t add_first3(const std::vector<int64_t>& xs) {
  return ranges::accumulate(xs | ranges::views::take(3), int64_t{});
}

}  // namespace header_only_library_sample

#endif  // MANAVRION_HEADER_ONLY_LIBRARY_SAMPLE_H_
