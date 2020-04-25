#include "lib/sample.h"

#include <range/v3/numeric/accumulate.hpp>
#include <range/v3/view/take.hpp>

namespace template_repository {

int64_t add(const int64_t a, const int64_t b) { return a + b; }
int64_t mul(const int64_t a, const int64_t b) { return a * b; }

int64_t add_first3(const std::vector<int64_t>& xs) {
  using namespace ranges;
  return accumulate(xs | views::take(3), int64_t{});
}

}  // namespace template_repository
