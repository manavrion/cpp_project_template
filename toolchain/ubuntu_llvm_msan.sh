echo "Bootstrapping ubuntu_llvm_msan toolchain"

# Absolute path to this script.
SCRIPT=$(readlink -f $0)

# Absolute path this script is in.
SCRIPTPATH=`dirname $SCRIPT`

# To place llvm-project in toolchain/ubuntu_llvm_msan_deps folder.
cd $SCRIPTPATH
mkdir ubuntu_llvm_msan_deps

git clone --depth=1 -b llvmorg-17.0.0-rc4 https://github.com/llvm/llvm-project ubuntu_llvm_msan_deps/llvm-project

# Build an instrumented libc++.
cmake -G Ninja \
    -S ubuntu_llvm_msan_deps/llvm-project/runtimes \
	-B ubuntu_llvm_msan_deps/llvm-project/build \
    -DCMAKE_TOOLCHAIN_FILE=$SCRIPTPATH/ubuntu_llvm.cmake \
	-DCMAKE_BUILD_TYPE=Release \
	-DLLVM_USE_SANITIZER=MemoryWithOrigins \
	-DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi"
ninja -C ubuntu_llvm_msan_deps/llvm-project/build cxx cxxabi

echo "Bootstrapped ubuntu_llvm_msan toolchain"
