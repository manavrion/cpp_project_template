cd "$(dirname "$0")"
cmake -S . -B .build -DCMAKE_TOOLCHAIN_FILE=toolchain/default_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug
cmake --build .build --parallel 8
