wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic main"
apt update
apt install clang-12
apt install llvm-12
apt install lld-12
apt install libc++-12-dev
apt install libc++abi-12-dev
