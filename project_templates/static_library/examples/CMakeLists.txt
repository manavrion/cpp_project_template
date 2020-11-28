macro(add_example name)
  add_executable(static_library_${name} ${name}.cc)
  target_link_libraries(static_library_${name} static_library)
endmacro()

add_example(01_add)
add_example(02_mul)
