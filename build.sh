cd "$(dirname "$0")"
cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=toolchain/enabled_options.cmake -DCMAKE_BUILD_TYPE=Debug
cmake --build build --parallel 8
