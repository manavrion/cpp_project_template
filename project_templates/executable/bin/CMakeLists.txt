cmake_minimum_required(VERSION 3.8)
project(bin)

set(SOURCE_FILES main.cc)

source_group("sources" FILES ${SOURCE_FILES})

add_executable(bin ${SOURCE_FILES})

target_link_libraries(bin lib)
