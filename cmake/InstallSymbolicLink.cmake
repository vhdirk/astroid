macro(install_symlink filepath sympath)
  get_filename_component(symdir ${sympath} DIRECTORY)
  install(DIRECTORY DESTINATION ${symdir})
  install(CODE "execute_process(COMMAND ${CMAKE_COMMAND} -E create_symlink ${filepath} ${sympath})")
  install(CODE "message(\"-- Symlinking: ${sympath} -> ${filepath}\")")
endmacro(install_symlink)
