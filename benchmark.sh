cd "$(dirname "$0")"
.build/project_templates/header_only_library/benchmarks/header_only_library_benchmarks --benchmark_out_format=csv --benchmark_out=result.csv --benchmark_repetitions=2
