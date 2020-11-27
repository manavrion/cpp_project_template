add_executable(header_only_library_tests test.cc)
set_target_properties(header_only_library_tests PROPERTIES CXX_EXTENSIONS OFF)
target_link_libraries(header_only_library_tests header_only_library gtest
                      gtest_main)
add_test(header_only_library_tests header_only_library_tests)
