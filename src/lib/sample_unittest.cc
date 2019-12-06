#include "sample.h"

#include <gtest/gtest.h>

using template_repository::add;
using template_repository::mul;

TEST(SampleTest, Add) {
  EXPECT_EQ(add(1, 2), 3);
  EXPECT_EQ(add(2, 2), 4);
}

TEST(SampleTest, Mul) {
  EXPECT_EQ(mul(1, 2), 2);
  EXPECT_EQ(mul(2, 2), 4);
}
