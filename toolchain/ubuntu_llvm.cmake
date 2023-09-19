# Compiler
set(CMAKE_C_COMPILER
    clang-18
    CACHE STRING "")
set(CMAKE_CXX_COMPILER
    clang++-18
    CACHE STRING "")

# set(... CACHE STRING "") is needed to propagate flags to CMakeCache.txt file.
# It makes this infirmation available for external tools like VS's CMake Tools
# extension.

# Archiver
set(CMAKE_AR llvm-ar-18)
set(CMAKE_C_COMPILER_AR "${CMAKE_AR}")
set(CMAKE_CXX_COMPILER_AR "${CMAKE_AR}")

# Linker
set(CMAKE_LINKER llvm-link-18)

# List bitcode and object file’s symbol table
set(CMAKE_NM llvm-nm-18)

# Object file dumper
set(CMAKE_OBJDUMP llvm-objdump-18)

# Generates an archive index
set(CMAKE_RANLIB llvm-ranlib-18)
set(CMAKE_C_COMPILER_RANLIB "${CMAKE_RANLIB}")
set(CMAKE_CXX_COMPILER_RANLIB "${CMAKE_RANLIB}")
