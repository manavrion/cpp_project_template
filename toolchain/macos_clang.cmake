list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/toolchain")
include(default_toolchain)

# Compiler
set(CMAKE_C_COMPILER clang-11)
set(CMAKE_CXX_COMPILER clang++-11)

set(CMAKE_AR llvm-ar-11)
set(CMAKE_LINKER lld-11)
set(CMAKE_NM llvm-nm-11)
set(CMAKE_OBJDUMP llvm-objdump-11)
set(CMAKE_RANLIB llvm-ranlib-11)
