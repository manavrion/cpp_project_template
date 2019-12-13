cd "$(dirname "$0")"
rm -rf build
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../toolchain.cmake -DGTEST_ROOT=submodules/googletest/build/install/ ..
cmake --build .
cmake -DCMAKE_INSTALL_PREFIX=install -P cmake_install.cmake
