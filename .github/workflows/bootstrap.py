import os
import platform
import sys

toolchain = sys.argv[1]
system = platform.system()

print('Selected toolchain - ' + toolchain)
print('Run on - ' + system)

sys.stdout.flush()

if system == 'Linux':
  if 'llvm' in toolchain and 'gcc' in toolchain:
    print('Broken toolchain!')
    exit(1)
  if 'llvm' in toolchain:
    print('Install llvm')
    sys.stdout.flush()
    os.system('apt -y install lsb-release wget software-properties-common gnupg')
    os.system('wget https://apt.llvm.org/llvm.sh')
    os.system('chmod +x llvm.sh')
    os.system('yes '' | ./llvm.sh 18')
    if 'libcpp' in toolchain:
      os.system('apt -y install libc++-18-dev libc++abi-18-dev')
  if 'gcc' in toolchain:
    print('Install gcc')
    sys.stdout.flush()
    os.system('apt update')
    os.system('apt -y install gcc-12 g++-12')
  if 'msan' in toolchain:
    print('Install instrumented libc++')
    sys.stdout.flush()
    os.system('./scripts/bootstrap_msan.sh')

if system == 'Linux':
    print('Install ninja-build')
    sys.stdout.flush()
    os.system('apt update')
    os.system('apt -y install ninja-build')
if system == 'Darwin':
    print('Install ninja-build')
    sys.stdout.flush()
    os.system('brew install ninja')
