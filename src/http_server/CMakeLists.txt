cmake_minimum_required(VERSION 3.8)
project(http_server)

set(SOURCE_FILES
    connection_manager.cc
    connection.cc
    main.cc
    mime_types.cc
    reply.cc
    request_handler.cc
    request_parser.cc
    server.cc)

set(HEADER_FILES
    connection_manager.h
    connection.h
    header.h
    mime_types.h
    reply.h
    request_handler.h
    request_parser.h
    request.h
    server.h)

source_group("sources" FILES ${SOURCE_FILES})
source_group("headers" FILES ${HEADER_FILES})

add_executable(http_server ${SOURCE_FILES})

target_link_libraries(http_server pthread ${Boost_SYSTEM_LIBRARY}
                      ${Boost_THREAD_LIBRARY} ${Boost_REGEX_LIBRARY})
