#
# Copyright (c) 2019-2020, New York University and Max Planck Gesellschaft.
# 
# License BSD-3 clause
#
# Build the documentation based on sphinx and the read_the_doc layout.
#


#.rst:
#
# .. cmake:command:: ADD_SPHINX_DOCUMENTATION
#
#    Use `breathing cat <https://github.com/machines-in-motion/breathing-cat>`_
#    to generate documentation for the current project.
#
#    This macro adds a target for the documentation that is only build/installed
#    if ``GENERATE_DOCUMENTATION`` is set (otherwise it has no effect).
#
#    Optional Arguments:
#
#    - DOXYGEN_EXCLUDE_PATTERNS:  **This argument is not supported anymore!**
#      Setting it will cause an error.  It will be complete removed in the
#      future.
#      To specify exclude patterns, use a breathing-cat config file instead
#      (see https://github.com/machines-in-motion/breathing-cat).
#
macro(ADD_SPHINX_DOCUMENTATION)

  cmake_parse_arguments(ADD_SPHINX_DOCUMENTATION
    ""  # options without arguments
    ""  # options with single argument
    "DOXYGEN_EXCLUDE_PATTERNS"  # options with multiple arguments
    ${ARGN}
  )

  if (ADD_SPHINX_DOCUMENTATION_DOXYGEN_EXCLUDE_PATTERNS)
    message(FATAL_ERROR
        "The DOXYGEN_EXCLUDE_PATTERNS argument is not supported anymore."
        " Documentation is now built by breathing cat, so you can add a"
        " breathing_cat.toml file to your repository to add exclude patterns."
        " See documentation of breathing cat for details:"
        " https://github.com/machines-in-motion/breathing-cat"
    )
    # TODO [2022-10-17]: remove the DOXYGEN_EXCLUDE_PATTERNS argument in half a
    # year or so.
  endif()

  if(GENERATE_DOCUMENTATION)

    # TODO: This should probably be handled in a nicer way that is more obvious
    # to the user (probably via an argument that has to be passed?
    if (DEFINED PYTHON_INSTALL_DIR)
      set(PYTHON_PACKAGE_LOCATION
          ${CMAKE_INSTALL_PREFIX}/${PYTHON_INSTALL_DIR}/${PROJECT_NAME})
    else()
      set(PYTHON_PACKAGE_LOCATION ${PROJECT_SOURCE_DIR}/python/${PROJECT_NAME})
    endif()

    # Build and install directories
    set(SPHINX_DOC_BUILD_FOLDER ${CMAKE_BINARY_DIR}/share/docs/sphinx)
    set(SPHINX_DOC_INSTALL_FOLDER share/${PROJECT_NAME}/docs/sphinx)


    # make sure bcat is installed
    find_program(BCAT bcat)
    if(NOT BCAT)
      message(FATAL_ERROR
          "breathing-cat not found! "
          "Please install using: pip3 install breathing-cat"
      )
    endif()

    # Create the output
    add_custom_target(
      ${PROJECT_NAME}_sphinx_html
      ${BCAT} --package-dir "${PROJECT_SOURCE_DIR}"
          --output-dir "${SPHINX_DOC_BUILD_FOLDER}"
          --python-dir "${PYTHON_PACKAGE_LOCATION}"
          --force
      COMMENT "Building documentation for ${PROJECT_NAME}"
    )

    # install the documentation
    install(DIRECTORY ${SPHINX_DOC_BUILD_FOLDER}/html
            DESTINATION ${SPHINX_DOC_INSTALL_FOLDER})

    # Create a dependency on the doc target
    add_dependencies(doc ${PROJECT_NAME}_sphinx_html)

  endif()

endmacro(ADD_SPHINX_DOCUMENTATION)
