list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

# Compiler
set(CMAKE_C_COMPILER
    clang
    CACHE STRING "")
set(CMAKE_CXX_COMPILER
    clang++
    CACHE STRING "")

# set(... CACHE STRING "") is needed to propagate flags to CMakeCache.txt file.
# It makes this infirmation available for external tools like VS's CMake Tools
# extension.
