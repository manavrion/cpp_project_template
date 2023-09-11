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
    os.system('apt update')
    os.system('apt install clang-15')
    os.system('apt install lld-15')
  if 'gcc' in toolchain:
    print('Install gcc')
    sys.stdout.flush()
    os.system('apt update')
    os.system('apt install gcc-12')
    os.system('apt install g++-12')
