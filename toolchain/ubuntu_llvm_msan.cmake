list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")
include(ubuntu_llvm)

# MSAN flags, https://clang.llvm.org/docs/MemorySanitizer.html#usage

# * -fsanitize=memory enables MSAN.
# * -fno-omit-frame-pointer produces nicer stack traces in error messages.
# * -fno-optimize-sibling-calls disables tail call optinization.
# * -fsanitize-memory-track-origins tracks origins of uninitialized values.

set(CPP_PROJECT_TEMPLATE_MSAN_FLAGS
    "-fsanitize=memory -fno-omit-frame-pointer -fno-optimize-sibling-calls -fsanitize-memory-track-origins"
)

# According to
# https://github.com/google/sanitizers/wiki/MemorySanitizerLibcxxHowTo#instrumented-gtest
# we need to use an instrumented libc++.

# Using a custom built libc++:
# https://github.com/llvm/llvm-project/blob/main/libcxx/docs/UsingLibcxx.rst#using-a-custom-built-libc

set(CPP_PROJECT_TEMPLATE_INSTRUMENTED_CPP_COMPILER_FLAGS
    "-nostdinc++ -nostdlib++ -isystem /workspaces/cpp_project_template/scripts/llvm-project/build/include/c++/v1"
)

set(CPP_PROJECT_TEMPLATE_INSTRUMENTED_CPP_LINKER_FLAGS
    "-nostdinc++ -nostdlib++ -isystem /workspaces/cpp_project_template/scripts/llvm-project/build/include/c++/v1 -L /workspaces/cpp_project_template/scripts/llvm-project/build/lib -Wl,-rpath,/workspaces/cpp_project_template/scripts/llvm-project/build/lib -lc++"
)

set(CMAKE_C_FLAGS_INIT
    "${CPP_PROJECT_TEMPLATE_MSAN_FLAGS} ${CPP_PROJECT_TEMPLATE_INSTRUMENTED_CPP_COMPILER_FLAGS}"
)
set(CMAKE_CXX_FLAGS_INIT
    "${CPP_PROJECT_TEMPLATE_MSAN_FLAGS} ${CPP_PROJECT_TEMPLATE_INSTRUMENTED_CPP_COMPILER_FLAGS}"
)

set(CMAKE_EXE_LINKER_FLAGS_INIT
    "${CPP_PROJECT_TEMPLATE_MSAN_FLAGS} ${CPP_PROJECT_TEMPLATE_INSTRUMENTED_CPP_LINKER_FLAGS}"
)
set(CMAKE_MODULE_LINKER_FLAGS_INIT
    "${CPP_PROJECT_TEMPLATE_MSAN_FLAGS} ${CPP_PROJECT_TEMPLATE_INSTRUMENTED_CPP_LINKER_FLAGS}"
)
set(CMAKE_SHARED_LINKER_FLAGS_INIT
    "${CPP_PROJECT_TEMPLATE_MSAN_FLAGS} ${CPP_PROJECT_TEMPLATE_INSTRUMENTED_CPP_LINKER_FLAGS}"
)

# Bypass the following error: -- Performing Test HAVE_POSIX_REGEX -- compiled
# but failed to run set(RUN_HAVE_POSIX_REGEX 0)
