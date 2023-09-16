cd "$(dirname "$0")"
cmake -G Ninja -S . -B build -DCMAKE_TOOLCHAIN_FILE=toolchain/ubuntu_llvm_msan.cmake -DCMAKE_BUILD_TYPE=Debug
cmake --build build
