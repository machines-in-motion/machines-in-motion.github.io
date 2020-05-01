# Copyright (C) 2008-2020 LAAS-CNRS, JRL AIST-CNRS, INRIA.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


#.rst:
# .. command:: FINDPYTHON
#
#  Find python interpreter and python libs.
#  Arguments are passed to the find_package command so
#  refer to `find_package` documentation to learn about valid arguments.
#
#  To specify a specific Python version from the command line,
#  use the command ``FINDPYTHON()``
#  and pass the following arguments to CMake
#  ``-DPYTHON_EXECUTABLE=/usr/bin/python3.5 -DPYTHON_LIBRARY= /usr/lib/x86_64-linux-gnu/libpython3.5m.so.1``
#
#  To specify a specific Python version within the CMakeLists.txt,
#  use the command ``FINDPYTHON(2.7 EXACT REQUIRED)``.
#
#  If PYTHON_PACKAGES_DIR is set, then the {dist,site}-packages will be replaced by the value contained in PYTHON_PACKAGES_DIR.
#
#  .. warning::
#    According to the ``FindPythonLibs`` and ``FindPythonInterp``
#    documentation, you could also set ``Python_ADDITIONAL_VERSIONS``.
#    If you do this, you will not have an error if you found two different versions
#    or another version that the requested one.
#

#.rst:
# .. variable:: PYTHON_SITELIB
#
#  Absolute path where Python files will be installed.

#.rst:
# .. variable:: PYTHON_EXT_SUFFIX
#
#  Portable suffix of C++ Python modules.

IF(CMAKE_VERSION VERSION_LESS "3.2")
    SET(CMAKE_MODULE_PATH ${MPI_CMAKE_MODULES_ROOT_DIR}/cmake/python ${CMAKE_MODULE_PATH})
    MESSAGE(STATUS "CMake versions older than 3.2 do not properly find Python. Custom macros are used to find it.")
ENDIF(CMAKE_VERSION VERSION_LESS "3.2")

MACRO(FINDPYTHON)
  IF(DEFINED FINDPYTHON_ALREADY_CALLED)
    MESSAGE(AUTHOR_WARNING "Macro FINDPYTHON has already been called. Several call to FINDPYTHON may not find the same Python version (for a yet unknown reason).")
  ENDIF()
  SET(FINDPYTHON_ALREADY_CALLED TRUE)
  IF(NOT CMAKE_VERSION VERSION_LESS "3.12" AND NOT WIN32)

    IF(DEFINED PYTHON_EXECUTABLE OR DEFINED Python_EXECUTABLE)
      IF(NOT DEFINED Python_EXCUTABLE)
        SET(Python_EXCUTABLE ${PYTHON_EXECUTABLE})
      ELSE()
        SET(PYTHON_EXCUTABLE ${Python_EXECUTABLE})
      ENDIF()
    ELSE()
      # Search for the default python of the system, if exists
      FIND_PROGRAM(PYTHON_EXECUTABLE python)
    ENDIF()

    IF(PYTHON_EXECUTABLE)
      EXECUTE_PROCESS(
        COMMAND ${PYTHON_EXECUTABLE} --version
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        OUTPUT_VARIABLE _PYTHON_VERSION_OUTPUT
        ERROR_VARIABLE _PYTHON_VERSION_OUTPUT
        OUTPUT_STRIP_TRAILING_WHITESPACE
        ERROR_STRIP_TRAILING_WHITESPACE
        )
      
      STRING(REGEX REPLACE "Python " "" _PYTHON_VERSION ${_PYTHON_VERSION_OUTPUT})
      STRING(REGEX REPLACE "\\." ";" _PYTHON_VERSION ${_PYTHON_VERSION})
      LIST(GET _PYTHON_VERSION 0 _PYTHON_VERSION_MAJOR)

      # Hint for finding the right Python version
      SET(Python_EXECUTABLE ${PYTHON_EXECUTABLE})
      SET(Python${_PYTHON_VERSION_MAJOR}_EXECUTABLE ${PYTHON_EXECUTABLE})

      FIND_PACKAGE("Python${_PYTHON_VERSION_MAJOR}" REQUIRED COMPONENTS Interpreter Development)
    ELSE()
      # No hind was provided. We can then check for first Python 2, then Python 3
      FIND_PACKAGE(Python2 QUIET COMPONENTS Interpreter Development)
      IF(NOT Python2_FOUND)
        FIND_PACKAGE(Python3 QUIET COMPONENTS Interpreter Development)
        IF(NOT Python3_FOUND)
          MESSAGE(FATAL_ERROR "Python executable has not been found.")
        ELSE()
          SET(_PYTHON_VERSION_MAJOR 3)
        ENDIF(NOT Python3_FOUND)
      ELSE()
        SET(_PYTHON_VERSION_MAJOR 2)
      ENDIF(NOT Python2_FOUND)
    ENDIF(PYTHON_EXECUTABLE)
    
    SET(_PYTHON_PREFIX "Python${_PYTHON_VERSION_MAJOR}")
    MESSAGE(STATUS "${_PYTHON_PREFIX}_FOUND: " ${${_PYTHON_PREFIX}_FOUND})
    IF(${_PYTHON_PREFIX}_FOUND)
      SET(PYTHON_EXECUTABLE          ${${_PYTHON_PREFIX}_EXECUTABLE})
      SET(PYTHON_LIBRARY             ${${_PYTHON_PREFIX}_LIBRARIES})
      SET(PYTHON_LIBRARIES           ${${_PYTHON_PREFIX}_LIBRARIES})
      SET(PYTHON_INCLUDE_DIR         ${${_PYTHON_PREFIX}_INCLUDE_DIRS})
      SET(PYTHON_INCLUDE_DIRS        ${${_PYTHON_PREFIX}_INCLUDE_DIRS})
      SET(PYTHON_VERSION_STRING      ${${_PYTHON_PREFIX}_VERSION})
      SET(PYTHONLIBS_VERSION_STRING  ${${_PYTHON_PREFIX}_VERSION})
      SET(PYTHON_FOUND               ${${_PYTHON_PREFIX}_FOUND})
      SET(PYTHONLIBS_FOUND           ${${_PYTHON_PREFIX}_FOUND})
      SET(PYTHON_VERSION_MAJOR       ${${_PYTHON_PREFIX}_VERSION_MAJOR})
      SET(PYTHON_VERSION_MINOR       ${${_PYTHON_PREFIX}_VERSION_MINOR})
      SET(PYTHON_VERSION_PATCH       ${${_PYTHON_PREFIX}_VERSION_PATCH})
    ELSE()
      MESSAGE(FATAL_ERROR "Python executable has not been found.")
    ENDIF()

  ELSE(NOT CMAKE_VERSION VERSION_LESS "3.12" AND NOT WIN32)

    FIND_PACKAGE(PythonInterp ${ARGN})
    IF (NOT ${PYTHONINTERP_FOUND} STREQUAL TRUE)
      MESSAGE(FATAL_ERROR "Python executable has not been found.")
    ENDIF (NOT ${PYTHONINTERP_FOUND} STREQUAL TRUE)
    MESSAGE(STATUS "PythonInterp: ${PYTHON_EXECUTABLE}")

    # Set PYTHON_INCLUDE_DIR variables if it is not defined by the user
    IF(DEFINED PYTHON_EXECUTABLE AND NOT WIN32)
      # Retrieve the corresponding value of PYTHON_INCLUDE_DIR if it is not defined
      IF(NOT DEFINED PYTHON_INCLUDE_DIR)
        EXECUTE_PROCESS(
          COMMAND "${PYTHON_EXECUTABLE}" "-c"
          "import distutils.sysconfig as sysconfig; print(sysconfig.get_python_inc())"
          OUTPUT_VARIABLE PYTHON_INCLUDE_DIR
          ERROR_QUIET)
        STRING(STRIP "${PYTHON_INCLUDE_DIR}" PYTHON_INCLUDE_DIR)
      ENDIF(NOT DEFINED PYTHON_INCLUDE_DIR)
      SET(PYTHON_INCLUDE_DIRS ${PYTHON_INCLUDE_DIR})
    ENDIF(DEFINED PYTHON_EXECUTABLE AND NOT WIN32)

    MESSAGE(STATUS "PYTHON_INCLUDE_DIRS:${PYTHON_INCLUDE_DIRS}")
    MESSAGE(STATUS "PYTHON_INCLUDE_DIR:${PYTHON_INCLUDE_DIR}")

    # Inform PythonLibs of the required version of PythonInterp
    SET(PYTHONLIBS_VERSION_STRING ${PYTHON_VERSION_STRING})

    FIND_PACKAGE(PythonLibs ${ARGN})
    IF (NOT ${PYTHONLIBS_FOUND} STREQUAL TRUE)
        MESSAGE(FATAL_ERROR "Python has not been found.")
    ENDIF (NOT ${PYTHONLIBS_FOUND} STREQUAL TRUE)

    MESSAGE(STATUS "PythonLibraries found: ${PYTHONLIBS_FOUND}")
    MESSAGE(STATUS "PythonLibraries: ${PYTHON_LIBRARIES}")
    STRING(REPLACE "." ";" _PYTHONLIBS_VERSION ${PYTHONLIBS_VERSION_STRING})
    LIST(GET _PYTHONLIBS_VERSION 0 PYTHONLIBS_VERSION_MAJOR)
    LIST(GET _PYTHONLIBS_VERSION 1 PYTHONLIBS_VERSION_MINOR)

    IF (NOT ${PYTHON_VERSION_MAJOR} EQUAL ${PYTHONLIBS_VERSION_MAJOR} OR
        NOT ${PYTHON_VERSION_MINOR} EQUAL ${PYTHONLIBS_VERSION_MINOR})
      MESSAGE(FATAL_ERROR "Python interpreter and libraries are in different version: ${PYTHON_VERSION_STRING} vs ${PYTHONLIBS_VERSION_STRING}")
    ENDIF (NOT ${PYTHON_VERSION_MAJOR} EQUAL ${PYTHONLIBS_VERSION_MAJOR} OR
           NOT ${PYTHON_VERSION_MINOR} EQUAL ${PYTHONLIBS_VERSION_MINOR})

  ENDIF(NOT CMAKE_VERSION VERSION_LESS "3.12" AND NOT WIN32)

  # Find PYTHON_LIBRARY_DIRS
  GET_FILENAME_COMPONENT(PYTHON_LIBRARY_DIRS "${PYTHON_LIBRARIES}" PATH)
  MESSAGE(STATUS "PythonLibraryDirs: ${PYTHON_LIBRARY_DIRS}")
  MESSAGE(STATUS "PythonLibVersionString: ${PYTHONLIBS_VERSION_STRING}")

  # Use either site-packages (default) or dist-packages (Debian packages) directory
  OPTION(PYTHON_DEB_LAYOUT "Enable Debian-style Python package layout" OFF)
  # ref. https://docs.python.org/3/library/site.html
  OPTION(PYTHON_STANDARD_LAYOUT "Enable standard Python package layout" OFF)

  IF(PYTHON_STANDARD_LAYOUT)
    SET(PYTHON_SITELIB_CMD "import sys, os; print(os.sep.join(['lib', 'python' + sys.version[:3], 'site-packages']))")
  ELSE(PYTHON_STANDARD_LAYOUT)
    SET(PYTHON_SITELIB_CMD "from distutils import sysconfig; print(sysconfig.get_python_lib(prefix='', plat_specific=False))")
  ENDIF(PYTHON_STANDARD_LAYOUT)

  EXECUTE_PROCESS(
    COMMAND "${PYTHON_EXECUTABLE}" "-c"
    "${PYTHON_SITELIB_CMD}"
    OUTPUT_VARIABLE PYTHON_SITELIB
    OUTPUT_STRIP_TRAILING_WHITESPACE
    ERROR_QUIET)

  # Keep compatility with former jrl-cmake-modules versions
  IF(PYTHON_DEB_LAYOUT)
    STRING(REPLACE "site-packages" "dist-packages" PYTHON_SITELIB "${PYTHON_SITELIB}")
  ENDIF(PYTHON_DEB_LAYOUT)

  # If PYTHON_PACKAGES_DIR is defined, then force the Python packages directory name
  IF(PYTHON_PACKAGES_DIR)
    STRING(REGEX REPLACE "(site-packages|dist-packages)" "${PYTHON_PACKAGES_DIR}" PYTHON_SITELIB "${PYTHON_SITELIB}")
  ENDIF(PYTHON_PACKAGES_DIR)

  MESSAGE(STATUS "Python site lib: ${PYTHON_SITELIB}")

  # Get PYTHON_SOABI
  # We should be in favor of using PYTHON_EXT_SUFFIX in future for better portability.
  # However we keep it here for backward compatibility.
  SET(PYTHON_SOABI "")
  IF(PYTHON_VERSION_MAJOR EQUAL 3 AND NOT WIN32)
    EXECUTE_PROCESS(
      COMMAND "${PYTHON_EXECUTABLE}" "-c"
      "from distutils.sysconfig import get_config_var; print('.' + get_config_var('SOABI'))"
      OUTPUT_VARIABLE PYTHON_SOABI)
    STRING(STRIP ${PYTHON_SOABI} PYTHON_SOABI)
  ENDIF(PYTHON_VERSION_MAJOR EQUAL 3 AND NOT WIN32)

  # Get PYTHON_EXT_SUFFIX
  SET(PYTHON_EXT_SUFFIX "")
  IF(PYTHON_VERSION_MAJOR EQUAL 3)
    EXECUTE_PROCESS(
      COMMAND "${PYTHON_EXECUTABLE}" "-c"
      "from distutils.sysconfig import get_config_var; print(get_config_var('EXT_SUFFIX'))"
      OUTPUT_VARIABLE PYTHON_EXT_SUFFIX)
    STRING(STRIP ${PYTHON_EXT_SUFFIX} PYTHON_EXT_SUFFIX)
  ENDIF(PYTHON_VERSION_MAJOR EQUAL 3)
  IF("${PYTHON_EXT_SUFFIX}" STREQUAL "")
    IF(WIN32)
      SET(PYTHON_EXT_SUFFIX ".pyd")
    ELSE()
      SET(PYTHON_EXT_SUFFIX ".so")
    ENDIF()
  ENDIF()

  # Log Python variables
  LIST(APPEND LOGGING_WATCHED_VARIABLES
    PYTHONINTERP_FOUND
    PYTHONLIBS_FOUND
    PYTHON_LIBRARY_DIRS
    PYTHONLIBS_VERSION_STRING
    PYTHON_EXECUTABLE
    PYTHON_SOABI
    PYTHON_EXT_SUFFIX
    )

ENDMACRO(FINDPYTHON)

#.rst:
# .. command::  SEARCH_FOR_PYTHON()
#
#  Alias for the FINDPYTHON macro. See FINDPYTHON().
#
MACRO(SEARCH_FOR_PYTHON)
    message(STATUS "before FIND_PYTHON: PYTHON_INCLUDE_DIRS=" ${PYTHON_INCLUDE_DIRS})
    message(STATUS "before FIND_PYTHON: PYTHON_LIBRARY_DIRS=" ${PYTHON_LIBRARY_DIRS})
    message(STATUS "before FIND_PYTHON: PYTHON_LIBRARIES=" ${PYTHON_LIBRARIES})
    if((NOT PYTHON_INCLUDE_DIRS) OR
       (NOT PYTHON_LIBRARIES))
            # If any of the python variable is empty we search for it.
            FINDPYTHON( ${ARGN} )
    endif((NOT PYTHON_INCLUDE_DIRS) OR
          (NOT PYTHON_LIBRARIES))

    message(STATUS "after FIND_PYTHON: PYTHON_INCLUDE_DIRS=" ${PYTHON_INCLUDE_DIRS})
    message(STATUS "after FIND_PYTHON: PYTHON_LIBRARY_DIRS=" ${PYTHON_LIBRARY_DIRS})
    message(STATUS "after FIND_PYTHON: PYTHON_LIBRARIES=" ${PYTHON_LIBRARIES})
    # We fioll in the catkin variables.
    SET(catkin_INCLUDE_DIRS
        ${PYTHON_INCLUDE_DIRS}
        ${catkin_INCLUDE_DIRS}
    )
    LINK_DIRECTORIES(${PYTHON_LIBRARY_DIRS})
    SET(catkin_LIBRARIES
        ${PYTHON_LIBRARIES}
        ${catkin_LIBRARIES}
    )
ENDMACRO(SEARCH_FOR_PYTHON)

#.rst:
# .. command::  PYTHON_INSTALL(MODULE FILE DEST)
#
#  Compile and install a Python file.
#
MACRO(PYTHON_INSTALL MODULE FILE DEST)

  PYTHON_BUILD("${MODULE}" "${FILE}")

  INSTALL(FILES
    "${CMAKE_CURRENT_SOURCE_DIR}/${MODULE}/${FILE}"
    DESTINATION "${DEST}/${MODULE}")
ENDMACRO()

#.rst:
# .. command:: PYTHON_INSTALL_ON_SITE (MODULE FILE)
#
#  Compile and install a Python file in :cmake:variable:`PYTHON_SITELIB`.
#
MACRO(PYTHON_INSTALL_ON_SITE MODULE FILE)

  IF(NOT DEFINED PYTHONLIBS_FOUND)
    FINDPYTHON()
  ELSEIF(NOT ${PYTHONLIBS_FOUND} STREQUAL "TRUE")
    MESSAGE(FATAL_ERROR "Python has not been found.")
  ENDIF()

  PYTHON_INSTALL("${MODULE}" "${FILE}" "${PYTHON_SITELIB}")

ENDMACRO()

# PYTHON_BUILD(MODULE FILE DEST)
# --------------------------------------
#
# Build a Python file from the source directory in the build directory.
#
MACRO(PYTHON_BUILD MODULE FILE)

  FILE(MAKE_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/${MODULE}")

  # convert "/" to "_"
  STRING(REGEX REPLACE "/" "_" FILE_TARGET_NAME
    "${CMAKE_CURRENT_BINARY_DIR}/${MODULE}/${FILE}c")

  ADD_CUSTOM_TARGET(${FILE_TARGET_NAME} ALL
    COMMAND
    "${PYTHON_EXECUTABLE}"
    "${PROJECT_SOURCE_DIR}/cmake/compile.py"
    "${CMAKE_CURRENT_SOURCE_DIR}"
    "${CMAKE_CURRENT_BINARY_DIR}"
    "${MODULE}/${FILE}"
  )

  # Tag pyc file as generated.
  SET_SOURCE_FILES_PROPERTIES(
    "${CMAKE_CURRENT_BINARY_DIR}/${MODULE}/${FILE}c"
    PROPERTIES GENERATED TRUE)

  # Clean generated files.
  SET_PROPERTY(
    DIRECTORY APPEND PROPERTY
    ADDITIONAL_MAKE_CLEAN_FILES
    "${CMAKE_CURRENT_BINARY_DIR}/${MODULE}/${FILE}c"
    )
ENDMACRO()

# PYTHON_INSTALL_BUILD(MODULE FILE DEST)
# --------------------------------------
#
# Install a Python file residing in the build directory and its
# associated compiled version.
#
MACRO(PYTHON_INSTALL_BUILD MODULE FILE DEST)

  MESSAGE(AUTHOR_WARNING "PYTHON_INSTALL_BUILD is deprecated and will be removed in the future")
  MESSAGE(AUTHOR_WARNING "Please use PYTHON_INSTALL_ON_SITE")
  MESSAGE(AUTHOR_WARNING "ref https://github.com/jrl-umi3218/jrl-cmakemodules/issues/136")

  FILE(MAKE_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/${MODULE}")

  INSTALL(CODE
    "EXECUTE_PROCESS(COMMAND
    \"${PYTHON_EXECUTABLE}\"
    \"${PROJECT_SOURCE_DIR}/cmake/compile.py\"
    \"${CMAKE_CURRENT_BINARY_DIR}\"
    \"${CMAKE_CURRENT_BINARY_DIR}\"
    \"${MODULE}/${FILE}\")
    ")

  # Tag pyc file as generated.
  SET_SOURCE_FILES_PROPERTIES(
    "${CMAKE_CURRENT_BINARY_DIR}/${MODULE}/${FILE}c"
    PROPERTIES GENERATED TRUE)

  # Clean generated files.
  SET_PROPERTY(
    DIRECTORY APPEND PROPERTY
    ADDITIONAL_MAKE_CLEAN_FILES
    "${CMAKE_CURRENT_BINARY_DIR}/${MODULE}/${FILE}c"
    )

  INSTALL(FILES
    "${CMAKE_CURRENT_BINARY_DIR}/${MODULE}/${FILE}"
    "${CMAKE_CURRENT_BINARY_DIR}/${MODULE}/${FILE}c"
    DESTINATION "${DEST}/${MODULE}")
ENDMACRO()

#.rst:
# .. command:: INSTALL_PYTHON_FILES (SUBMODULENAME PYTHON_SRC_DIR)
#
#   Install python files in the python submodule of dynamic_graph
#
#   :param PYTHON_SRC_DIR is the root of the python module. It *must* contain
#   a __init__.py. All file bleow this folder will be install in the python
#   submodule
# PYTHON_INSTALL_BUILD(MODULE FILE DEST)
# --------------------------------------
#
#   :param SUBMODULENAME: the name of the submodule (can be foo/bar),
# Install a Python file residing in the build directory and its
# associated compiled version.
#
#   :param LIBRARYNAME:   library to link the submodule with.
#
#  .. note::
#    Before calling this macro, set variable NEW_ENTITY_CLASS as
#    the list of new Entity types that you want to be bound.
#    Entity class name should match the name referencing the type
#    in the factory.
#
MACRO(INSTALL_PYTHON_FILES SUBMODULENAME PYTHON_SRC_DIR)
  # get the global path
  get_filename_component(PYTHON_SRC_FULL_PATH ${PYTHON_SRC_DIR} ABSOLUTE)

  # local var to create the destination folders and install it
  set(OUTPUT_MODULE_DIR ${DYNAMIC_GRAPH_PYTHON_DIR}/${SUBMODULENAME})

  # create the install folder
  file(MAKE_DIRECTORY ${OUTPUT_MODULE_DIR})

  # fetch all python files with a relative path to the PYTHON_SRC_FULL_PATH
  file(GLOB_RECURSE PYTHON_FILES RELATIVE "${PYTHON_SRC_FULL_PATH}"
    "${PYTHON_SRC_FULL_PATH}/*.py")

  foreach (PYTHON_FILE ${PYTHON_FILES})
    STRING(REGEX REPLACE "-" "_" PYTHON_FILE_STANDARDIZED ${PYTHON_FILES})
    configure_file(${PYTHON_SRC_FULL_PATH}/${PYTHON_FILE}
      ${OUTPUT_MODULE_DIR}/${PYTHON_FILE} @ONLY)
  endforeach ()

  # message(WARNING "${PYTHON_FILES}")
ENDMACRO()

#.rst:
# .. command:: FIND_NUMPY
#
#   Detect numpy module
#

MACRO(FIND_NUMPY)
  # Detect numpy.
  MESSAGE (STATUS "checking for numpy")
  EXECUTE_PROCESS(
    COMMAND "${PYTHON_EXECUTABLE}" "-c"
    "import numpy; print (numpy.get_include())"
    OUTPUT_VARIABLE NUMPY_INCLUDE_DIRS
    ERROR_QUIET)
  IF (NOT NUMPY_INCLUDE_DIRS)
    MESSAGE (FATAL_ERROR "Failed to detect numpy")
  ELSE ()
    STRING(REGEX REPLACE "\n$" "" NUMPY_INCLUDE_DIRS "${NUMPY_INCLUDE_DIRS}")
    FILE(TO_CMAKE_PATH "${NUMPY_INCLUDE_DIRS}" NUMPY_INCLUDE_DIRS)
    MESSAGE (STATUS " NUMPY_INCLUDE_DIRS=${NUMPY_INCLUDE_DIRS}")
  ENDIF()
ENDMACRO()
