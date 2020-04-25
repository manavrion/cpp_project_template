# template_repository
Just template.

# How to build

1. git clone git@github.com:manavrion/template_repository.git
2. ./build.sh

## Clang compiler

1. sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
2. update-alternatives --install /usr/bin/clang clang /usr/bin/clang-10 10
3. update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-10 10

# How to test

1. ./test.sh

# Recomended tools

## IDE: VS Code with plugins:

### C++

C/C++ - ms-vscode.cpptools

Clang-Format - xaver.clang-format

### CMake

CMake - twxs.cmake

CMake Tools - ms-vscode.cmake-tools

cmake-format - cheshirekow.cmake-format

### Other

Code Spell Checker - streetsidesoftware.code-spell-checker

Markdown All in One - yzhang.markdown-all-in-one
