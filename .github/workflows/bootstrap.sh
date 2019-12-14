cd submodules/googletest/
rm -rf build
mkdir build
cd build
snap run cmake -DCMAKE_TOOLCHAIN_FILE=../../../toolchain.cmake ..
snap run cmake --build .
snap run cmake -DCMAKE_INSTALL_PREFIX=install -P cmake_install.cmake
