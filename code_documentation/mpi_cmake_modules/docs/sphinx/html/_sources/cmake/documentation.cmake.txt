#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# License BSD-3 clause
#

#.rst:
# .. cmake:command:: CREATE_DOC_TARGET
#
#   Create a target called *doc*. This target allows you do perform::
#       
#       make doc
#
#   This target is created by default in the *cmake/global_calls.cmake*. It can
#   be built by default if one set the CMake variable ``GENERATE_DOCUMENTATION``
#   to on::
#
#       cmake .. -DGENERATE_DOCUMENTATION=ON
#
macro(CREATE_DOC_TARGET)
  option(GENERATE_DOCUMENTATION
         "This allow the docuementation to be build by default." OFF)

  if(NOT TARGET doc)
    if(GENERATE_DOCUMENTATION)
      add_custom_target(doc ALL)
    else()
      add_custom_target(doc)
    endif()
  endif(NOT TARGET doc)

endmacro(CREATE_DOC_TARGET)

#.rst:
# .. cmake:command:: ADD_DOCUMENTATION
#
#   Create targets that are dependencies to the *doc* target. It builds the
#   documentation html output using the classic Doxygen output and the rather
#   more modern Sphinx/Read-the-doc output. Eventually only the read-the-doc
#   output will remain.
#
macro(ADD_DOCUMENTATION)

  add_doxygen_documentation()
  add_sphinx_documentation()

endmacro(ADD_DOCUMENTATION)

#.rst:
# 
# .. warning:: The following is deprecated. It is used for backward support.
#

#.rst:
# .. cmake:command:: BUILD_DOCUMENTATION
#
#   See :cmake:command:`ADD_DOCUMENTATION`
#
macro(BUILD_DOCUMENTATION)

  message(WARNING "'build_documentation()' is deprecated, "
                  "please prefer 'add_documentation()'")
  add_documentation()

endmacro(BUILD_DOCUMENTATION)

#.rst:
# .. cmake:command:: BUILD_DOXYGEN_DOCUMENTATION
#
#   See :cmake:command:`ADD_DOXYGEN_DOCUMENTATION`
#
macro(BUILD_DOXYGEN_DOCUMENTATION)

  message(WARNING "'BUILD_DOXYGEN_DOCUMENTATION()' is deprecated, "
                  "please prefer 'add_doxygen_documentation()'")
  add_doxygen_documentation()

endmacro(BUILD_DOXYGEN_DOCUMENTATION)

#.rst:
# .. cmake:command:: BUILD_SPHINX_DOCUMENTATION
#
#   See :cmake:command:`ADD_SPHINX_DOCUMENTATION`
#
macro(BUILD_SPHINX_DOCUMENTATION)

  message(WARNING "'build_sphinx_documentation()' is deprecated, "
                  "please prefer 'add_sphinx_documentation()'")
  add_sphinx_documentation()

endmacro(BUILD_SPHINX_DOCUMENTATION)