list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/toolchain")
include(enabled_options)

# Compiler
set(CMAKE_C_COMPILER msvc)
set(CMAKE_CXX_COMPILER msvc)
