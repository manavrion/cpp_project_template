include(FetchContent)

# Prevent overriding the parent project's compiler/linker settings on Windows
set(gtest_force_shared_crt
    ON
    CACHE BOOL "" FORCE)

FetchContent_Declare(googletest
                     GIT_REPOSITORY https://github.com/google/googletest.git)

FetchContent_MakeAvailable(googletest)
