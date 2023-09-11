# Compiler
set(CMAKE_C_COMPILER clang-12)
set(CMAKE_CXX_COMPILER clang++-12)

# Archiver
set(CMAKE_AR llvm-ar-12)
set(CMAKE_C_COMPILER_AR "${CMAKE_AR}")
set(CMAKE_CXX_COMPILER_AR "${CMAKE_AR}")

# Linker
set(CMAKE_LINKER lld-12)

# List bitcode and object file’s symbol table
set(CMAKE_NM llvm-nm-12)

# Object file dumper
set(CMAKE_OBJDUMP llvm-objdump-12)

# Generates an archive index
set(CMAKE_RANLIB llvm-ranlib-12)
set(CMAKE_C_COMPILER_RANLIB "${CMAKE_RANLIB}")
set(CMAKE_CXX_COMPILER_RANLIB "${CMAKE_RANLIB}")
