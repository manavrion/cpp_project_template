add_executable(static_library_benchmarks add.cc mul.cc)
set_target_properties(static_library_benchmarks PROPERTIES CXX_EXTENSIONS OFF)
target_link_libraries(static_library_benchmarks static_library gtest
                      benchmark_main)
