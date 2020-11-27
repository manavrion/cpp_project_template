#include "lib/sample.h"

#include <numeric>

namespace template_repository {

int64_t add(const int64_t a, const int64_t b) { return a + b; }
int64_t mul(const int64_t a, const int64_t b) { return a * b; }

int64_t add_first3(const std::vector<int64_t>& xs) {
  // return std::ranges::accumulate(xs | std::ranges::views::take(3),
  // int64_t{});
  return xs[0] + xs[1] + xs[2];
}

}  // namespace template_repository
