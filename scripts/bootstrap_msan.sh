echo "Bootstrapping MSAN"

# Absolute path to this script.
SCRIPT=$(readlink -f $0)

# Absolute path this script is in.
SCRIPTPATH=`dirname $SCRIPT`

cd $SCRIPTPATH

git clone --depth=1 -b llvmorg-17.0.0-rc4 https://github.com/llvm/llvm-project
cd llvm-project

cmake -G Ninja \
    -S runtimes \
	-B build \
    -DCMAKE_TOOLCHAIN_FILE=$SCRIPTPATH/../toolchain/ubuntu_llvm.cmake \
	-DCMAKE_BUILD_TYPE=Release \
	-DLLVM_USE_SANITIZER=MemoryWithOrigins \
	-DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi"
ninja -C build cxx cxxabi

echo "Bootstrapped MSAN"
