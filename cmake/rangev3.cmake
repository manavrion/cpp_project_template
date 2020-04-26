# Download and unpack range-v3 at configure time
configure_file(cmake/rangev3.cmake.in range-v3-download/CMakeLists.txt)

execute_process(
  COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
  RESULT_VARIABLE result
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/range-v3-download)

if(result)
  message(FATAL_ERROR "CMake step for range-v3 failed: ${result}")
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} --build .
  RESULT_VARIABLE result
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/range-v3-download)

if(result)
  message(FATAL_ERROR "Build step for range-v3 failed: ${result}")
endif()

# Add range-v3 directly to our build. This defines the gtest and gtest_main
# targets.
add_subdirectory(${CMAKE_CURRENT_BINARY_DIR}/range-v3-src
                 ${CMAKE_CURRENT_BINARY_DIR}/range-v3-build EXCLUDE_FROM_ALL)
