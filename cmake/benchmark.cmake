include(FetchContent)

set(BENCHMARK_ENABLE_TESTING OFF)

FetchContent_Declare(benchmark
                     GIT_REPOSITORY https://github.com/google/benchmark.git)

FetchContent_MakeAvailable(benchmark)
