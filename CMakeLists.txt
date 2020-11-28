cmake_minimum_required(VERSION 3.14)

project(cpp_project_template LANGUAGES CXX)

# Options
option(CPP_PROJECT_TEMPALTE_BENCHMARKS "Build benchmarks" OFF)
option(CPP_PROJECT_TEMPALTE_EXAMPLES "Build examples" OFF)
option(CPP_PROJECT_TEMPALTE_TESTS "Build tests" OFF)

# Enable ctest
if(CPP_PROJECT_TEMPALTE_TESTS)
  enable_testing()
endif()

# Export dependencies
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON) # Export compilation data-base
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# CCache
include(ccache)

# Add sub templates. You can paste project_templates/*/CMakeLists.txt here for
# simple projects and move related files.
add_subdirectory(project_templates/executable)
add_subdirectory(project_templates/header_only_library)
add_subdirectory(project_templates/static_library)
