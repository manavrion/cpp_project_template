cmake_minimum_required(VERSION 3.8)
project(src)

add_subdirectory(bin)
add_subdirectory(http_server)
add_subdirectory(lib)

add_subdirectory(unittests)
