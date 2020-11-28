cmake_minimum_required(VERSION 3.14)

project(header_only_library LANGUAGES CXX)

# Google test
if(CPP_PROJECT_TEMPALTE_TESTS)
  include(googletest)
  enable_testing()
endif()

# Google benchmark
if(CPP_PROJECT_TEMPALTE_BENCHMARKS)
  include(benchmark)
endif()

# Range-v3
include(range_v3)

# Header only library definition
add_library(header_only_library INTERFACE)
add_library(manavrion::header_only_library ALIAS header_only_library)
target_include_directories(
  header_only_library
  INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
            $<INSTALL_INTERFACE:include>)
target_link_libraries(header_only_library INTERFACE range-v3)
target_compile_features(header_only_library INTERFACE cxx_std_17)

# Optional targets
if(CPP_PROJECT_TEMPALTE_BENCHMARKS)
  add_subdirectory(benchmarks)
endif()

if(CPP_PROJECT_TEMPALTE_EXAMPLES)
  add_subdirectory(examples)
endif()

if(CPP_PROJECT_TEMPALTE_TESTS)
  add_subdirectory(tests)
endif()
