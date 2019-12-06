cmake_minimum_required(VERSION 3.8)
project(template_repository)

# The code uses the root folder to #include
include_directories("src/")

add_subdirectory(src)
