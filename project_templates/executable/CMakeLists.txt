cmake_minimum_required(VERSION 3.14)

project(executable LANGUAGES CXX)

# Range-v3
include(range_v3)

# Executable definition
add_executable(executable bin/main.cc)
target_compile_features(executable PUBLIC cxx_std_20)
