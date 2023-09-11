FROM ubuntu:latest

RUN apt update

# Prerequisite for VS Code's Source Control tool.
RUN apt -y install git

# Prerequisites for the Ubuntu GCC toolchain.
RUN apt -y install gcc-12
RUN apt -y install g++-12
RUN apt -y install gdb

# Prerequisites for the Ubuntu Clang toolchain.
RUN apt -y install clang-15
RUN apt -y install lld-15

# Prerequisites for building.
RUN apt -y install make
RUN apt -y install cmake
