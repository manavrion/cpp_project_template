cmake_minimum_required(VERSION 3.8)
project(template_repository)

# Google test
enable_testing()
SET(GTEST_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/submodules/googletest/build/install/include/)
SET(GTEST_MAIN_LIBRARY ${PROJECT_SOURCE_DIR}/submodules/googletest/build/install/lib/libgtest_main.a)
SET(GTEST_LIBRARY ${PROJECT_SOURCE_DIR}/submodules/googletest/build/install/lib/libgtest.a)
find_package(GTest REQUIRED)

include_directories(${GTEST_INCLUDE_DIR})

# The code uses the root folder to #include
include_directories("src/")

add_subdirectory(src)
