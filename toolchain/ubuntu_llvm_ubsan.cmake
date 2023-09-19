list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")
include(ubuntu_llvm)

# UBSAN flags, https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html#usage

# * -fsanitize=undefined enables UBSAN.

set(CPP_PROJECT_TEMPLATE_UBSAN_FLAGS
    "-fsanitize=address -fno-omit-frame-pointer -fno-optimize-sibling-calls")

set(CMAKE_C_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_UBSAN_FLAGS}")
set(CMAKE_CXX_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_UBSAN_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_UBSAN_FLAGS}")
set(CMAKE_MODULE_LINKER_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_UBSAN_FLAGS}")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_UBSAN_FLAGS}")
