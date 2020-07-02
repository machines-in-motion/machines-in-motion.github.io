#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# License BSD-3 clause
#

#.rst:
#
# Call macros by default for *all* catkin packages importing mpi_cmake_modules.
# This file includes os-detection to determine the os the code is built on.
# It detects and import xenomai if needed.
# And generate the *doc* target in order to build the documentation.
# 

include(${CMAKE_CURRENT_LIST_DIR}/os_detection.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/xenomai.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/documentation.cmake)

# defining -DXENOMAI, -DRT_PREEMPT or -DNON_REAL_TIME
# based on 'uname -a' command
define_os()

# if os is xenomami, setting up Xenomai_LIBS, calling
# xeno-config, and adding correct directory for include
# and linkage
if(CURRENT_OS STREQUAL "xenomai")
  setup_xenomai()
else()
  set(Xenomai_LIBS pthread edit curses nsl glut GL GLU X11 Xmu m)
endif()

# All package have a doc target. This target may do nothing.
create_doc_target()