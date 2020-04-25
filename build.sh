cd "$(dirname "$0")"
mkdir .build
cd .build
cmake ..
cmake --build . --parallel 8
