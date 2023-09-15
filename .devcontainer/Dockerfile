FROM ubuntu:latest

RUN apt update

# Prerequisite for VS Code's Source Control tool.
RUN apt -y install git

# Prerequisites for the Ubuntu GCC toolchain.
RUN apt -y install gcc-12 g++-12 gdb

# Prerequisites for the Ubuntu LLVM toolchain.
RUN apt -y install lsb-release wget software-properties-common gnupg
RUN wget https://apt.llvm.org/llvm.sh
RUN chmod +x llvm.sh
RUN yes '' | ./llvm.sh 18

# Prerequisites for the Ubuntu LLVM libcpp toolchain.
RUN apt -y install libc++-18-dev libc++abi-18-dev

# Prerequisites for building.
RUN apt -y install make
RUN apt -y install cmake
