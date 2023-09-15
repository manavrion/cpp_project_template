cmake_minimum_required(VERSION 3.14)

project(cpp_project_template LANGUAGES CXX)

# Options
option(CPP_PROJECT_TEMPALTE_BENCHMARKS "Build benchmarks" ON)
option(CPP_PROJECT_TEMPALTE_EXAMPLES "Build examples" ON)
option(CPP_PROJECT_TEMPALTE_TESTS "Build tests" ON)

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

# Print all variables for debug purposes.
get_cmake_property(_variableNames VARIABLES)
list (SORT _variableNames)
foreach (_variableName ${_variableNames})
  message(STATUS "Dynamic variable ${_variableName}=${${_variableName}}")
endforeach()

# Add sub templates. You can paste project_templates/*/CMakeLists.txt here for
# simple projects and move related files.
add_subdirectory(project_templates/executable)
add_subdirectory(project_templates/header_only_library)
add_subdirectory(project_templates/static_library)
