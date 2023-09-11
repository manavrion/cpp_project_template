list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/toolchain")

# Compiler
set(CMAKE_C_COMPILER clang-12)
set(CMAKE_CXX_COMPILER clang++-12)

set(CMAKE_AR llvm-ar-12)
set(CMAKE_LINKER lld-12)
set(CMAKE_NM llvm-nm-12)
set(CMAKE_OBJDUMP llvm-objdump-12)
set(CMAKE_RANLIB llvm-ranlib-12)
