cd "$(dirname "$0")"
cmake -S . -B .build -DCMAKE_TOOLCHAIN_FILE=toolchain/linux_clang.cmake
cmake --build .build --parallel 8
