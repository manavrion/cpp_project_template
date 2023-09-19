cd "$(dirname "$0")"
cmake -G Ninja -S . -B build -DCMAKE_TOOLCHAIN_FILE=toolchain/ubuntu_llvm.cmake -DCMAKE_BUILD_TYPE=Debug
cmake --build build
