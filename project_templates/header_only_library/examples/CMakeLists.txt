macro(add_example name)
  add_executable(header_only_library_${name} ${name}.cc)
  target_link_libraries(header_only_library_${name} header_only_library)
endmacro()

add_example(01_add)
add_example(02_mul)
