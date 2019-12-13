cmake_minimum_required(VERSION 3.8)
project(unittests)

set(UNITTEST_FILES ../lib/sample_unittest.cc)

source_group("unittests" FILES ${UNITTEST_FILES})

add_executable(unittests ${UNITTEST_FILES})
target_link_libraries(unittests lib GTest::GTest GTest::Main pthread)
add_test(unittests unittests)
