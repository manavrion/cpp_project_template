#include <benchmark/benchmark.h>

#include "manavrion/static_library_sample.h"

using static_library_sample::add;

static void BM_Add(benchmark::State& state) {
  int64_t a = 1;
  int64_t b = 1;
  for (auto _ : state) {
    a = add(a, b);
    b = add(a, b);
    a %= 1024;
    b %= 1024;
    ++a;
    ++b;
  }
}

BENCHMARK(BM_Add);
