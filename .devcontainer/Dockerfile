FROM ubuntu:latest

RUN apt-get update

# Prerequisite for VS Code's Source Control tool.
RUN apt-get -y install git

# Prerequisites for C/C++ development.
RUN apt-get -y install gcc
RUN apt-get -y install g++
RUN apt-get -y install gdb

# Prerequisites for building.
RUN apt-get -y install make
RUN apt-get -y install cmake
