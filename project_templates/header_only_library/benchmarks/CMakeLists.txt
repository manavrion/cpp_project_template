add_executable(header_only_library_benchmarks add.cc mul.cc)
set_target_properties(header_only_library_benchmarks PROPERTIES CXX_EXTENSIONS
                                                                OFF)
target_link_libraries(header_only_library_benchmarks header_only_library gtest
                      benchmark_main)
