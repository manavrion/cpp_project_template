list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/toolchain")
include(ubuntu_llvm)

# MSAN flags:
# Reference https://clang.llvm.org/docs/MemorySanitizer.html#usage
# -fsanitize=memory enables MSAN.
# -fno-omit-frame-pointer produces nicer stack traces in error messages.
# -fno-optimize-sibling-calls disables tail call optinization.
# -fsanitize-memory-track-origins tracks origins of uninitialized values.
set(CPP_PROJECT_TEMPLATE_MSAN_FLAGS "-fsanitize=memory -fno-omit-frame-pointer -fno-optimize-sibling-calls -fsanitize-memory-track-origins")

set(CMAKE_C_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_MSAN_FLAGS}")
set(CMAKE_CXX_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_MSAN_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_MSAN_FLAGS}")
set(CMAKE_MODULE_LINKER_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_MSAN_FLAGS}")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "${CPP_PROJECT_TEMPLATE_MSAN_FLAGS}")

# Bypass the following error:
# -- Performing Test HAVE_POSIX_REGEX -- compiled but failed to run
set(RUN_HAVE_POSIX_REGEX 0)
