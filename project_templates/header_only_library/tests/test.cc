#include <gtest/gtest.h>

#include "manavrion/header_only_library_sample.h"

using header_only_library_sample::add;
using header_only_library_sample::add_first3;
using header_only_library_sample::mul;

TEST(SampleTest, Add) {
  EXPECT_EQ(add(1, 2), 3);
  EXPECT_EQ(add(2, 2), 4);
}

TEST(SampleTest, Mul) {
  EXPECT_EQ(mul(1, 2), 2);
  EXPECT_EQ(mul(2, 2), 4);
}

TEST(SampleTest, AddFirst3) {
  EXPECT_EQ(add_first3(std::vector<int64_t>{1, 1, 1, 5}), 3);
}
