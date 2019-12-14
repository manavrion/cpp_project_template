# Tools
set(CMAKE_C_COMPILER clang-10)

set(CMAKE_CXX_COMPILER clang++-10)

set(CMAKE_AR llvm-ar-10)
set(CMAKE_LINKER llvm-link-10)
set(CMAKE_NM llvm-nm-10)
set(CMAKE_OBJDUMP llvm-objdump-10)
set(CMAKE_RANLIB llvm-ranlib-10)

# Build
set(CMAKE_BUILD_TYPE Debug)

# C++
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
