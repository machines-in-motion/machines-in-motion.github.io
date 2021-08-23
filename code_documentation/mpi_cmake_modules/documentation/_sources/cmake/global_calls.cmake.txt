#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft. License
# BSD-3 clause
#

# .rst:
#
# Call macros by default for *all* packages importing mpi_cmake_modules. This
# file includes os-detection to determine the os the code is built on. It
# detects and import xenomai if needed. And generate the *doc* target in order
# to build the documentation.
#

include(${CMAKE_CURRENT_LIST_DIR}/os_detection.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/xenomai.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/documentation.cmake)

#
# Standard header for all packages
#

# GCC optimization, may break on MacOs
if(NOT ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
  # required to link the python bindings of the DG entities properly.
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wl,--no-as-needed")
endif()
# display all warnings
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wpedantic")
# add debug flag
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g")
# Strongly optimize code.
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")
# endif()

# use, i.e. don't skip the full RPATH for the build tree
set(CMAKE_SKIP_BUILD_RPATH FALSE)
# when building, don't use the install RPATH already (but later on when
# installing)
set(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE)
list(APPEND CMAKE_INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/lib
     ${CMAKE_INSTALL_PREFIX}/lib/dynamic_graph_plugins)
# add the automatically determined parts of the RPATH which point to directories
# outside the build tree to the install RPATH
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
# the RPATH to be used when installing, but only if it's not a system directory
list(FIND CMAKE_PLATFORM_IMPLICIT_LINK_DIRECTORIES
     "${CMAKE_INSTALL_PREFIX}/lib" isSystemDir)
if("${isSystemDir}" STREQUAL "-1")
  list(APPEND CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
endif("${isSystemDir}" STREQUAL "-1")

# defining -DXENOMAI, -DRT_PREEMPT or -DNON_REAL_TIME based on 'uname -a'
# command
define_os()

# if os is xenomami, setting up Xenomai_LIBS, calling xeno-config, and adding
# correct directory for include and linkage
if(CURRENT_OS STREQUAL "xenomai")
  setup_xenomai()
else()
  set(Xenomai_LIBS
      pthread
      edit
      curses
      nsl
      glut
      GL
      GLU
      X11
      Xmu
      m)
endif()

# All package have a doc target. This target may do nothing.
create_doc_target()

# By default we wanna use the default python executable available
if(NOT PYTHON_EXECUTABLE)
  find_program(PYTHON_EXECUTABLE "python")
  set(Python_EXECUTABLE ${PYTHON_EXECUTABLE})
  set(PYTHONINTERP_FOUND TRUE)
  #
  # Get the python version from string
  #
  execute_process(COMMAND ${PYTHON_EXECUTABLE} --version OUTPUT_VARIABLE out)
  string(REPLACE " " ";" python_version_str ${out})
  list(GET python_version_str 1 PYTHON_VERSION_STRING)
  string(REPLACE "." ";" python_version_list ${PYTHON_VERSION_STRING})
  list(GET python_version_list 0 PYTHON_VERSION_MAJOR)
  list(GET python_version_list 1 PYTHON_VERSION_MINOR)
  list(GET python_version_list 2 PYTHON_VERSION_PATCH)
endif()
