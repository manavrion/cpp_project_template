# Compiler
set(CMAKE_C_COMPILER clang-18)
set(CMAKE_CXX_COMPILER clang++-18)

# Archiver
set(CMAKE_AR llvm-ar-18)
set(CMAKE_C_COMPILER_AR "${CMAKE_AR}")
set(CMAKE_CXX_COMPILER_AR "${CMAKE_AR}")

# Linker
set(CMAKE_LINKER lld-18)

# List bitcode and object file’s symbol table
set(CMAKE_NM llvm-nm-18)

# Object file dumper
set(CMAKE_OBJDUMP llvm-objdump-18)

# Generates an archive index
set(CMAKE_RANLIB llvm-ranlib-18)
set(CMAKE_C_COMPILER_RANLIB "${CMAKE_RANLIB}")
set(CMAKE_CXX_COMPILER_RANLIB "${CMAKE_RANLIB}")
