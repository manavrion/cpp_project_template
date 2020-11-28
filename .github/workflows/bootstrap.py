import os
import platform
import sys

toolchain = sys.argv[1]
system = platform.system()

print('Selected toolchain - ' + toolchain)
print('Run on - ' + system)

sys.stdout.flush()

if toolchain == 'clang-format':
  print('Install clang-format')
  sys.stdout.flush()
  os.system('wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -')
  os.system('apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic main"')
  os.system('apt update')
  os.system('apt install clang-format-12')
  exit(0)

if system == 'Linux':
  if 'clang' in toolchain and 'gcc' in toolchain:
    print('Broken toolchain!')
    exit(1)
  if 'clang' in toolchain:
    print('Install clang')
    sys.stdout.flush()
    os.system('wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -')
    os.system('apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic main"')
    os.system('apt update')
    os.system('apt install clang-12')
    os.system('apt install llvm-12')
    os.system('apt install lld-12')
    os.system('apt install libc++-12-dev')
    os.system('apt install libc++abi-12-dev')
  if 'gcc' in toolchain:
    print('Install gcc')
    sys.stdout.flush()
    os.system('apt update')
    os.system('apt install gcc-10')
    os.system('apt install g++-10')
