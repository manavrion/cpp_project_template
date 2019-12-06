cmake_minimum_required(VERSION 3.8)
project(template_repository)

# Google test
enable_testing()
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# The code uses the root folder to #include
include_directories("src/")

add_subdirectory(src)
