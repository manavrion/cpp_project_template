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
RUN apt -y install cmake
RUN apt -y install ninja-build

# Use bash in a default shell.
ENV SHELL /bin/bash

# Default non-root user.
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    # Add sudo support.
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Set the default user.
USER $USERNAME
