cd "$(dirname "$0")"
# clone LLVM
git clone --depth=1 https://github.com/llvm/llvm-project
cmake -G Ninja \
    -S llvm-project/runtimes \
	-B llvm-project/build \
    -DCMAKE_TOOLCHAIN_FILE=../../toolchain/ubuntu_llvm_msan.cmake \
	-DCMAKE_BUILD_TYPE=Release \
	-DLLVM_USE_SANITIZER=MemoryWithOrigins \
	-DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi"
ninja -C llvm-project/build cxx cxxabi
