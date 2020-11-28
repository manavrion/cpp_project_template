#include <iostream>

#include "manavrion/header_only_library_sample.h"

using header_only_library_sample::mul;

int main() {
  int64_t a;
  int64_t b;
  std::cin >> a >> b;
  std::cout << mul(a, b) << std::endl;
}
