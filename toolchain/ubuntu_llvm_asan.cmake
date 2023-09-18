list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")
include(ubuntu_llvm)

# ASAN flags, https://clang.llvm.org/docs/AddressSanitizer.html#usage

# * -fsanitize=address enables ASAN.
# * -fno-omit-frame-pointer produces nicer stack traces in error messages.
# * -fno-optimize-sibling-calls disables tail call optinization.

set(CPP_PROJECT_TEMPLATE_ASAN_FLAGS
    "-fsanitize=address -fno-omit-frame-pointer -fno-optimize-sibling-calls")

set(CMAKE_C_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_ASAN_FLAGS}")
set(CMAKE_CXX_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_ASAN_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_ASAN_FLAGS}")
set(CMAKE_MODULE_LINKER_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_ASAN_FLAGS}")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_ASAN_FLAGS}")
