FROM ubuntu:latest

RUN apt update

# Prerequisite for VS Code's Source Control tool.
RUN apt -y install git

# Prerequisites for the Linux GCC kit.
RUN apt -y install gcc-12
RUN apt -y install g++-12
RUN apt -y install gdb

# Prerequisites for building.
RUN apt -y install make
RUN apt -y install cmake
