#
# @file dg-dirs.cmake
# @author Maximilien Naveau (maximilien.naveau@gmail.com)
# @copyright Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# @license License BSD-3 clause
# @date 2019-05-06
# 
# @brief This file allows us to install the python bindings of the dynamic graph
# at the correct place.
# 

# at the very top
if(POLICY CMP0012)
  cmake_policy(PUSH)
  cmake_policy(SET CMP0012 NEW)
endif()

# Define a list of the subdirectories
macro(SUBDIRLIST result curdir)
  file(GLOB children RELATIVE ${curdir} ${curdir}/*)
  set(dirlist "")
  foreach(child ${children})
    if(IS_DIRECTORY ${curdir}/${child})
      list(APPEND dirlist ${child})
    endif()
  endforeach()
  set(${result} ${dirlist})
endmacro()

# Detect the parent devel folder
macro(FIND_DEVEL_FOLDER CURRENT_DIR)

  set(CURRENT_FOLDER ${CURRENT_DIR})
  set(stop_find_devel_folder OFF)

  subdirlist(SUB_FOLDERS ${CURRENT_FOLDER})
  foreach(subfold ${SUB_FOLDERS})
    if(${subfold} STREQUAL "devel")
      set(DEVEL_FOLDER ${CURRENT_FOLDER}/devel)
      set(stop_find_devel_folder TRUE)
    endif()
  endforeach()      

  if(NOT ${stop_find_devel_folder})
    get_filename_component(CURRENT_FOLDER ${CURRENT_FOLDER} PATH)
    find_devel_folder(${CURRENT_FOLDER})
  endif()
endmacro()

find_devel_folder(${CMAKE_CURRENT_SOURCE_DIR})
# Just declare where the plugin directory is for all dynamic graph plugins
set(DYNAMIC_GRAPH_GLOBAL_PLUGIN_DIR ${DEVEL_FOLDER}/lib/plugin)

set(DYNAMIC_GRAPH_PLUGIN_DIR ${CATKIN_DEVEL_PREFIX}/lib/plugin)

set(DYNAMIC_GRAPH_PYTHON_DIR
  ${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_PYTHON_DESTINATION}/dynamic_graph_manager)

# at the very bottom
if(POLICY CMP0012)
  cmake_policy(POP)
endif()

#.rst:
# .. command:: DYNAMIC_GRAPH_PYTHON_MODULE ( SUBMODULENAME LIBRARYNAME TARGETNAME)
#
#   Add a python submodule to dynamic_graph
#  
#   :param SUBMODULENAME: the name of the submodule (can be foo/bar),
#  
#   :param LIBRARYNAME:   library to link the submodule with.
#  
#   :param TARGETNAME:     name of the target: should be different for several
#                   calls to the macro.
#  .. note::
#    Before calling this macro, set variable NEW_ENTITY_CLASS as
#    the list of new Entity types that you want to be bound.
#    Entity class name should match the name referencing the type
#    in the factory.
#
MACRO(DYNAMIC_GRAPH_PYTHON_MODULE SUBMODULENAME LIBRARYNAME TARGET_NAME)

  set(SUBMODULE_DIR ${SUBMODULENAME})
  string(REPLACE "-" "_" SUBMODULE_DIR "${SUBMODULE_DIR}")

  IF(NOT DEFINED PYTHONLIBS_FOUND)
    FINDPYTHON()
  ELSEIF(NOT ${PYTHONLIBS_FOUND} STREQUAL "TRUE")
    MESSAGE(FATAL_ERROR "Python has not been found.")
  ENDIF()

  # local var to create the destination folders and install it
  SET(OUTPUT_MODULE_DIR ${DYNAMIC_GRAPH_PYTHON_DIR}/${SUBMODULE_DIR})

  # create the install folder
  FILE(MAKE_DIRECTORY ${OUTPUT_MODULE_DIR})


  # We need to set this policy to old to accept wrap target.
  CMAKE_POLICY(PUSH)
  IF(POLICY CMP0037)
    CMAKE_POLICY(SET CMP0037 OLD)
  ENDIF()

  # create the library
  SET(PYTHON_MODULE "${TARGET_NAME}")
  configure_file(${MPI_CMAKE_MODULES_RESOURCES_DIR}/python-module-py.cc.in
                 ${PROJECT_BINARY_DIR}/python-module-py.cc @ONLY IMMEDIATE)
  ADD_LIBRARY(${PYTHON_MODULE}
    MODULE
    ${PROJECT_BINARY_DIR}/python-module-py.cc
  )
  MESSAGE(STATUS "Creating the python binding of: ${LIBRARYNAME}")
  TARGET_LINK_LIBRARIES(${PYTHON_MODULE} ${LIBRARYNAME} ${PYTHON_LIBRARY})
  SET_TARGET_PROPERTIES(${PYTHON_MODULE} PROPERTIES
    PREFIX ""
    OUTPUT_NAME wrap
    LIBRARY_OUTPUT_DIRECTORY "${OUTPUT_MODULE_DIR}/"
  )

  CMAKE_POLICY(POP)

  # In essence create an empty __init__.py in all SUBMODULENAME subfolder
  # this allow you to load the python package without trouble.
  string(REPLACE "/" ";" SUB_FOLDER_LIST ${SUBMODULENAME})
  set(current_folder ${DYNAMIC_GRAPH_PYTHON_DIR})
  foreach(subfolder ${SUB_FOLDER_LIST})
    CONFIGURE_FILE(
        ${MPI_CMAKE_MODULES_RESOURCES_DIR}/__init__.py.empty.in
      ${current_folder}/${subfolder}/__init__.py
    )
    set(current_folder ${current_folder}/${subfolder})
  endforeach(subfolder ${SUB_FOLDER_LIST})


  # local var to create the destination folders and install it
  SET(OUTPUT_MODULE_DIR ${DYNAMIC_GRAPH_PYTHON_DIR}/${SUBMODULE_DIR})

  CONFIGURE_FILE(
    ${MPI_CMAKE_MODULES_RESOURCES_DIR}/__init__.py.in
    ${OUTPUT_MODULE_DIR}/__init__.py
  )

  SET(ENTITY_CLASS_LIST "")
  FOREACH (ENTITY ${NEW_ENTITY_CLASS})
    SET(ENTITY_CLASS_LIST "${ENTITY_CLASS_LIST}${ENTITY}('')\n")
  ENDFOREACH(ENTITY ${NEW_ENTITY_CLASS})

ENDMACRO(DYNAMIC_GRAPH_PYTHON_MODULE SUBMODULENAME LIBRARYNAME TARGET_NAME)
