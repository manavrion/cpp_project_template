cmake_minimum_required(VERSION 3.8)
project(lib)

set(SOURCE_FILES sample.cc)

set(HEADER_FILES sample.h)

source_group("sources" FILES ${SOURCE_FILES})
source_group("headers" FILES ${HEADER_FILES})

add_library(lib STATIC ${SOURCE_FILES} ${HEADER_FILES})

target_link_libraries(lib range-v3)
