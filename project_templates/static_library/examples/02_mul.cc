#include <iostream>

#include "manavrion/static_library_sample.h"

using static_library_sample::mul;

int main() {
  int64_t a;
  int64_t b;
  std::cin >> a >> b;
  std::cout << mul(a, b) << std::endl;
}
