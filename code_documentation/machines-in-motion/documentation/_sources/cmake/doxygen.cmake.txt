#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft.
#
# License BSD-3 clause
#

#.rst:
# .. cmake:command:: ADD_DOXYGEN_DOCUMENTATION
#
#   Builds the doxygen html documentation of a package. The Doxyfile is set to
#   parse the Markdown files in the *doc/* folder, the Python file in the
#   *python/* folder and the C/C++ files. The output is gnerated in
#   *install/${PROJECT_NAME}/share/docs/doxygen/html/*.
#
#
macro(ADD_DOXYGEN_DOCUMENTATION)

  message(STATUS "building doxygen documentation for ${PROJECT_NAME}")

  # Find "doxygen"
  find_package(Doxygen)
  if(NOT DOXYGEN_FOUND)
    message(FATAL_ERROR "Doxygen is needed to build the documentation. "
                        "Please install it correctly")
  endif()

  # set the destination folder to be devel/share/[project_name]/doc/
  set(doc_build_folder ${CMAKE_BINARY_DIR}/share/docs/doxygen)
  set(doc_install_folder share/${PROJECT_NAME}/docs/doxygen)

  # Create the doxyfile in function of the current project. If the Doxyfile.in
  # does not exists, the cmake step stops.
  configure_file(${MPI_CMAKE_MODULES_RESOURCES_DIR}/Doxyfile.in
                 ${doc_build_folder}/Doxyfile @ONLY IMMEDIATE)

  # the doxygen target is generated
  add_custom_target(
    ${PROJECT_NAME}_doxygen_html
    COMMAND ${DOXYGEN_EXECUTABLE} ${doc_build_folder}/Doxyfile
    SOURCES ${doc_build_folder}/Doxyfile
    WORKING_DIRECTORY ${doc_build_folder})

  # install the documentation
  if(GENERATE_DOCUMENTATION)
    install(DIRECTORY ${doc_build_folder}/html
            DESTINATION ${doc_install_folder})
  endif()

  # Create a dependency on the doc target
  add_dependencies(doc ${PROJECT_NAME}_doxygen_html)

endmacro(ADD_DOXYGEN_DOCUMENTATION)
