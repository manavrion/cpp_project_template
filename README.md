# С++ Project Template
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

# Setup development on Ubuntu

1. Generate a new SSH key.
```
ssh-keygen -t ed25519 -C "<your_email@example.com>"
```
[Reference.](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key)

2. Add the SSH key to your GitHub account as an Authentication Key.
Copy the content of `~/.ssh/id_ed25519.pub` to https://github.com/settings/ssh/new form.

3. Install cmake.
```
sudo snap install cmake --classic
```
