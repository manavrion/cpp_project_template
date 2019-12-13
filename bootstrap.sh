cd "$(dirname "$0")"
cd "submodules/googletest/"
rm -rf build
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../../../toolchain.cmake ..
cmake --build .
cmake -DCMAKE_INSTALL_PREFIX=install -P cmake_install.cmake
