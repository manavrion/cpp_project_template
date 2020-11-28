#include <gtest/gtest.h>

#include "manavrion/static_library_sample.h"

using static_library_sample::add;
using static_library_sample::add_first3;
using static_library_sample::mul;

TEST(StaticLibrarySampleTest, Add) {
  EXPECT_EQ(add(1, 2), 3);
  EXPECT_EQ(add(2, 2), 4);
}

TEST(StaticLibrarySampleTest, Mul) {
  EXPECT_EQ(mul(1, 2), 2);
  EXPECT_EQ(mul(2, 2), 4);
}

TEST(StaticLibrarySampleTest, AddFirst3) {
  EXPECT_EQ(add_first3(std::vector<int64_t>{1, 1, 1, 5}), 3);
}
