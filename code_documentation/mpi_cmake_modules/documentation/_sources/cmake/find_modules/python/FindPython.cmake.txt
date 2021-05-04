#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft. License
# BSD-3 clause
#

#
# We priviledge Python3.
#
set(PYTHON_VERSION
    ""
    CACHE STRING
          "Specify specific Python version to use ('major.minor' or 'major')")
# if not specified otherwise use Python 3
if(NOT PYTHON_VERSION)
  set(PYTHON_VERSION "3")
endif()

#
# If the PYTHON_EXECUTABLE is already a valid path we do not look for it.
#
if(EXISTS ${PYTHON_EXECUTABLE})
  message(STATUS "PYTHON_EXECUTABLE already found: ${PYTHON_EXECUTABLE}")
else()
  if(${Python_FIND_REQUIRED})
    find_package(PythonInterp ${PYTHON_VERSION} REQUIRED)
  else()
    find_package(PythonInterp ${PYTHON_VERSION} QUIET)
  endif()
endif()

#
# If the libraries and include dirs have already been found we do not for them.
#
if(EXISTS "${PYTHON_LIBRARY}" AND EXISTS "${PYTHON_INCLUDE_DIR}")
  message(STATUS "PYTHON_INCLUDE_DIR already found: ${PYTHON_INCLUDE_DIR}")
  message(STATUS "PYTHON_LIBRARY already found: ${PYTHON_LIBRARY}")
else()
  message(STATUS "Trying to find the libraries corresponding to the "
                 "PYTHON_EXECUTABLE: ${PYTHON_EXECUTABLE}")
  if(${Python_FIND_REQUIRED})
    find_package(PythonLibs ${PYTHON_VERSION} REQUIRED)
  else()
    find_package(PythonLibs ${PYTHON_VERSION} QUIET)
  endif()
endif()

set(Python_EXECUTABLE ${PYTHON_EXECUTABLE})
set(Python_INCLUDE_DIR ${PYTHON_INCLUDE_DIR})
set(Python_LIBRARY ${PYTHON_LIBRARY})

# We display what has been found so far.
message(STATUS "FindPython has found:")
message(STATUS "    - Python_EXECUTABLE: ${PYTHON_EXECUTABLE}")
message(STATUS "    - Python_INCLUDE_DIR: ${PYTHON_INCLUDE_DIR}")
message(STATUS "    - Python_LIBRARY: ${PYTHON_LIBRARY}")
