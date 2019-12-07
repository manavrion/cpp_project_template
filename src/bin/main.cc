#include <iostream>

#include "lib/sample.h"

using template_repository::add;
using template_repository::mul;

int main() {
  int64_t a, b;
  std::cin >> a >> b;

  std::cout << "add: " << add(a, b) << std::endl;
  std::cout << "mul: " << mul(a, b) << std::endl;
  return 0;
}
