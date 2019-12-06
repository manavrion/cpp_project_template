cmake_minimum_required(VERSION 3.8)
project(lib)

set(SOURCE_FILES sample.cc)

set(HEADER_FILES sample.h)

set(UNITTEST_FILES sample_unittest.cc)

source_group("sources" FILES ${SOURCE_FILES})
source_group("headers" FILES ${HEADER_FILES})

add_library(lib STATIC ${SOURCE_FILES} ${HEADER_FILES})

# Testing
add_executable(lib_unittests ${UNITTEST_FILES})

target_link_libraries(lib_unittests lib ${GTEST_BOTH_LIBRARIES} pthread)

add_test(lib_unittests lib_unittests)
