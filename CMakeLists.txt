cmake_minimum_required(VERSION 3.8)

include(toolchain.cmake)

project(template_repository)

# Export dependencies
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON) # Export compilation data-base
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Google test
include(gtest)
enable_testing()

# Google benchmark
include(gbenchmark)

# The code uses the root folder to #include
include_directories("src/")

add_subdirectory(src)
