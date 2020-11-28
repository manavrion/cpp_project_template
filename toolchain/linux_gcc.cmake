list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/toolchain")
include(enabled_options)

# Compiler
set(CMAKE_C_COMPILER gcc-10)
set(CMAKE_CXX_COMPILER g++-10)
