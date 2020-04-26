# TODO: improve speed and toolchain forwarding

execute_process(
  COMMAND git clone --recursive https://github.com/boostorg/boost.git boost-src
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
  OUTPUT_VARIABLE GIT_VERSION)

execute_process(COMMAND bash bootstrap.sh
                WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/boost-src)

execute_process(COMMAND ./b2
                WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/boost-src)

set(BOOST_ROOT ${CMAKE_CURRENT_BINARY_DIR}/boost-src)

set(Boost_USE_STATIC_LIBS ON)
set(Boost_USE_MULTITHREAD ON)

find_package(Boost REQUIRED)
if(Boost_FOUND)
  include_directories(${Boost_INCLUDE_DIRS})
  link_directories(${Boost_LIBRARY_DIRS})
endif(Boost_FOUND)

if(!Boost_FOUND)
  message(FATAL_ERROR "CMake step for boost failed!")
endif(!Boost_FOUND)
