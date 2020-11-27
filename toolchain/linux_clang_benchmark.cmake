# Build
set(CMAKE_BUILD_TYPE Release)

# Compiler
set(CMAKE_C_COMPILER clang-9)
set(CMAKE_CXX_COMPILER clang++-9)

# Options
set(CPP_PROJECT_TEMPALTE_BENCHMARKS
    ON
    CACHE BOOL "" FORCE)
