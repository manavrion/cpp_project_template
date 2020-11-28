message("-- Detecting CCache")
find_program(CCACHE_PROGRAM ccache)

if(CCACHE_PROGRAM)
  set(CMAKE_CXX_COMPILER_LAUNCHER "${CCACHE_PROGRAM}")
  message("-- Detecting CCache - done")
else()
  message("-- Detecting CCache - failed")
endif()
