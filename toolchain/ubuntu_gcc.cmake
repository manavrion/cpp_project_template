# Compiler
set(CMAKE_C_COMPILER
    gcc-12
    CACHE STRING "")
set(CMAKE_CXX_COMPILER
    g++-12
    CACHE STRING "")

# set(... CACHE STRING "") is needed to propagate flags to CMakeCache.txt file.
# It makes this infirmation available for external tools like VS's CMake Tools
# extension.

# Archiver
set(CMAKE_AR gcc-ar-12)
set(CMAKE_C_COMPILER_AR "${CMAKE_AR}")
set(CMAKE_CXX_COMPILER_AR "${CMAKE_AR}")

# Linker
set(CMAKE_LINKER ld)

# List bitcode and object file’s symbol table
set(CMAKE_NM gcc-nm-12)

# Object file dumper
set(CMAKE_OBJDUMP objdump)

# Generates an archive index
set(CMAKE_RANLIB gcc-ranlib-12)
set(CMAKE_C_COMPILER_RANLIB "${CMAKE_RANLIB}")
set(CMAKE_CXX_COMPILER_RANLIB "${CMAKE_RANLIB}")
