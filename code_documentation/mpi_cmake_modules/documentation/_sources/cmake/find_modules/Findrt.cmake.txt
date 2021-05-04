#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft. License
# BSD-3 clause
#

# cmake-format off
#[=======================================================================[.rst:
Findrt
----------

Finds the rt library.

Imported Targets
^^^^^^^^^^^^^^^^

This module provides the following imported targets, if found:

``rt::rt``
  The rt interface library.

Result Variables
^^^^^^^^^^^^^^^^

This will define the following variables:

``rt_FOUND``
  True if the system has the rt library.
``rt_VERSION``
  The version of the rt library which was found.
``rt_INCLUDE_DIRS``
  Include directories needed to use rt.
``rt_LIBRARIES``
  Libraries needed to link to rt. This will be empty as this is a header
  only library.

Cache Variables
^^^^^^^^^^^^^^^

The following cache variables may also be set:

``rt_INCLUDE_DIR``
  The directory containing ``rt.h``.
``rt_LIBRARY``
  The path to the rt library.

#]=======================================================================]
# cmake-format on
set(rt_error_message "Could not find 'rt', the serialization library.")

find_library(rt_LIBRARY rt)
if(rt_LIBRARY STREQUAL "rt_LIBRARY-NOTFOUND")
  message(FATAL_ERROR ${rt_error_message})
  set(rt_path_found FALSE)
endif()

set(rt_path_found TRUE)

if(rt_path_found)

  # Verify the information given.
  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(
    rt
    REQUIRED_VARS rt_LIBRARY
    FOUND_VAR rt_FOUND)

  # Export the library.
  if(rt_FOUND)
    set(rt_LIBRARIES ${rt_LIBRARY})
    set(rt_INCLUDE_DIR "")
    set(rt_INCLUDE_DIRS ${rt_INCLUDE_DIR})
    set(rt_DEFINITIONS "")
  endif()

  if(rt_FOUND)
    if(NOT TARGET rt::rt)
      add_library(rt::rt UNKNOWN IMPORTED)
      set_target_properties(rt::rt PROPERTIES IMPORTED_LOCATION ${rt_LIBRARY})
    endif()
  endif()

  mark_as_advanced(
    rt_INCLUDE_DIR
    rt_INCLUDE_DIRS
    rt_LIBRARY
    rt_LIBRARIES
    rt_DEFINITIONS
    rt_VERSION
    rt_FOUND)
endif()
