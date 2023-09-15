list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/toolchain")
include(ubuntu_llvm)

# https://libcxx.llvm.org/UsingLibcxx.html#using-libc-when-it-is-not-the-system-default
set(CMAKE_CXX_FLAGS_INIT "-stdlib=libc++")

set(CMAKE_EXE_LINKER_FLAGS "-stdlib=libc++ -lc++abi")
set(CMAKE_MODULE_LINKER_FLAGS_INIT "-stdlib=libc++ -lc++abi")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "-stdlib=libc++ -lc++abi")
