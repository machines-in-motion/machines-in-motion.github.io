#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft.
#
# License BSD-3 clause
#

include(${CMAKE_CURRENT_LIST_DIR}/get_python_install_dir.cmake)

# cmake-format: off
#.rst:
# .. cmake:command:: GET_DYNAMIC_GRAPH_PLUGIN_INSTALL_PATH(INSTALL_DYNAMIC_GRAPH_PLUGIN_PATH)
#
#   Get the install dir for the plugin to install them in the correct place.
#
#   :param INSTALL_DYNAMIC_GRAPH_PLUGIN_PATH: path to the dynamic graph plugin
# cmake-format: on
macro(GET_DYNAMIC_GRAPH_PLUGIN_INSTALL_PATH INSTALL_DYNAMIC_GRAPH_PLUGIN_PATH)
  set(${INSTALL_DYNAMIC_GRAPH_PLUGIN_PATH}
      lib/dynamic-graph-plugins)
endmacro(GET_DYNAMIC_GRAPH_PLUGIN_INSTALL_PATH
         INSTALL_DYNAMIC_GRAPH_PLUGIN_PATH)

# cmake-format: off
#.rst:
# .. cmake:command:: INSTALL_DYNAMIC_GRAPH_PLUGIN_PYTHON_BINDINGS(PLUGIN_TARGET)
#
#   This file allows us to install the Python bindings of the dynamic graph at
#   the correct place.
#
#   Add a python submodule to dynamic_graph
#
#   :param plugin_target: target (library) name of the dynamic graph plugin,
# cmake-format: on
macro(INSTALL_DYNAMIC_GRAPH_PLUGIN_PYTHON_BINDINGS PLUGIN_TARGET)

  # Parse arguments
  set(options)
  set(oneValueArgs)
  set(multiValueArgs)
  cmake_parse_arguments(ARG "${options}" "${oneValueArgs}" "${multiValueArgs}"
                        ${ARGN})

  message(STATUS "Creating the python binding of: ${PLUGIN_TARGET}")

  # Look for the python install directory.
  get_python_install_dir(python_install_dir)
  set(python_module_install_dir
      ${python_install_dir}/${PROJECT_NAME}/dynamic_graph)

  # Find Python.
  find_package(Python REQUIRED)
  
  # Suffix to all python objects.
  set(PYTHON_SUFFIX dg_python_module)

  # Python module name.
  set(PYTHON_MODULE "${PLUGIN_TARGET}_${PYTHON_SUFFIX}")

  # Get the source files.
  set(PYTHON_MODULE_SOURCE_FILE)
  set(PYTHON_MODULE_HEADER_FILE)
  set(PYTHON_MODULE_USER_SOURCE_FILE
      "${PROJECT_SOURCE_DIR}/srcpy/${PLUGIN_TARGET}_${PYTHON_SUFFIX}.cpp")
  set(PYTHON_MODULE_USER_HEADER_FILE
      "${PROJECT_SOURCE_DIR}/srcpy/${PLUGIN_TARGET}_${PYTHON_SUFFIX}.hpp")
  if(EXISTS ${PYTHON_MODULE_USER_SOURCE_FILE})
    set(PYTHON_MODULE_SOURCE_FILE ${PYTHON_MODULE_USER_SOURCE_FILE})
  elseif(EXISTS ${PYTHON_MODULE_USER_HEADER_FILE})
    # Export the python module name using `configure_file`.
    set(DYNAMIC_GRAPH_PLUGIN_CPP_BINDINGS ${PLUGIN_TARGET})
    # Export the header name using `configure_file`.
    set(PYTHON_MODULE_HEADER_FILE ${PYTHON_MODULE_USER_HEADER_FILE})
    configure_file(${MPI_CMAKE_MODULES_RESOURCES_DIR}/${PYTHON_SUFFIX}.cc.in
                   ${PROJECT_BINARY_DIR}/${PYTHON_MODULE}.cc @ONLY IMMEDIATE)
    set(PYTHON_MODULE_SOURCE_FILE ${PROJECT_BINARY_DIR}/${PYTHON_MODULE}.cc)
  else()
    message(
      FATAL_ERROR
        "INSTALL_DYNAMIC_GRAPH_PLUGIN_PYTHON_BINDINGS: No source found.\n"
        "Cannot find ${PYTHON_MODULE_USER_SOURCE_FILE} nor "
        "${PYTHON_MODULE_USER_HEADER_FILE}.\n"
        "Cannot build the dynamic-graph plugin python bindings.")
  endif()

  # Create the python bindings
  add_library(${PYTHON_MODULE} MODULE ${PYTHON_MODULE_SOURCE_FILE})
  target_include_directories(
    ${PYTHON_MODULE} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/srcpy>
                            ${Python_INCLUDE_DIR} ${PYTHON_INCLUDE_DIR})
  target_link_libraries(${PYTHON_MODULE} ${PLUGIN_TARGET} ${PYTHON_LIBRARY}
                        ${python_LIBRARY})
  set_target_properties(${PYTHON_MODULE} PROPERTIES PREFIX "" OUTPUT_NAME
                                                              ${PLUGIN_TARGET})
  get_dynamic_graph_plugin_install_path(plugin_install_path)
  set_target_properties(
    ${PYTHON_MODULE}
    PROPERTIES
      INSTALL_RPATH
      "${CMAKE_INSTALL_RPATH}:${CMAKE_INSTALL_PREFIX}/${plugin_install_path}")
  install(TARGETS ${PYTHON_MODULE} DESTINATION ${python_module_install_dir})

endmacro()
