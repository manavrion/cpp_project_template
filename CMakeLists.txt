cmake_minimum_required(VERSION 3.14)

project(cpp_project_template LANGUAGES CXX)

# Options
option(CPP_PROJECT_TEMPALTE_BENCHMARKS "Build benchmarks" OFF)
option(CPP_PROJECT_TEMPALTE_EXAMPLES "Build examples" OFF)
option(CPP_PROJECT_TEMPALTE_TESTS "Build tests" OFF)

# Export dependencies
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON) # Export compilation data-base
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# CCache
include(ccache)

# Google test
if(CPP_PROJECT_TEMPALTE_TESTS)
  include(googletest)
  enable_testing()
endif()

# Google benchmark
if(SEGMENT_TREE_BENCHMARKS)
  include(benchmark)
  enable_testing()
endif()

# range-v3
include(range_v3)

# The code uses the root folder to #include
include_directories("src/")

add_subdirectory(src)
