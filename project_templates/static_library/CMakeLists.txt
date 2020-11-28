cmake_minimum_required(VERSION 3.14)

project(static_library LANGUAGES CXX)

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

# Static library definition
add_library(static_library STATIC lib/manavrion/static_library_sample.cc)
add_library(manavrion::static_library ALIAS static_library)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
target_include_directories(
  static_library
  INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
            $<INSTALL_INTERFACE:include>)
target_link_libraries(static_library STATIC range-v3)
target_compile_features(static_library PUBLIC cxx_std_17)

# Optional targets if(CPP_PROJECT_TEMPALTE_BENCHMARKS)
# add_subdirectory(benchmarks) endif()
#
# if(CPP_PROJECT_TEMPALTE_EXAMPLES) add_subdirectory(examples) endif()
#
# if(CPP_PROJECT_TEMPALTE_TESTS) add_subdirectory(tests) endif()
