#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft. License
# BSD-3 clause
#

#[=======================================================================[.rst:
FindZeroMQPP
------------

Finds the libzmqpp library.

Imported Targets
^^^^^^^^^^^^^^^^

This module provides the following imported targets, if found:

``ZeroMQPP::ZeroMQPP``
  The ZeroMQPP interface library.

Result Variables
^^^^^^^^^^^^^^^^

This will define the following variables:

``ZeroMQPP_FOUND``
  True if the system has the ZeroMQPP library.
``ZeroMQPP_VERSION``
  The version of the ZeroMQPP library which was found.
``ZeroMQPP_INCLUDE_DIR``
  Include directory needed to use ZeroMQPP.
``ZeroMQPP_LIBRARY``
  ZeroMPQQ library
  only library.


#]=======================================================================]

set(ZeroMQPP_error_message "Could not find 'ZeroMQPP', "
                         "Please try 'sudo apt install libzmqpp-dev'")

set(ZeroMQPP_path_found TRUE)
		       
find_path(ZeroMQPP_INCLUDE_DIR zmqpp HINTS /usr/include/zmqpp /usr/include/)
if(ZeroMQPP_INCLUDE_DIR STREQUAL "ZeroMQPP_INCLUDE_DIR-NOTFOUND")
  message(FATAL_ERROR ${ZeroMQPP_error_message})
  set(ZeroMQPP_path_found FALSE)
endif()

find_library(ZeroMQPP_LIBRARY zmqpp)
if(ZeroMQPP_LIBRARY STREQUAL "ZeroMQPP_LIBRARY-NOTFOUND")
  message(FATAL_ERROR ${ZeroMQPP_error_message})
  set(ZeroMQPP_path_found FALSE)
endif()

if(ZeroMQPP_path_found)

  # Verify the information given.
  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(
    ZeroMQPP
    REQUIRED_VARS ZeroMQPP_INCLUDE_DIR
    FOUND_VAR ZeroMQPP_FOUND)

  # Export the library.
  if(ZeroMQPP_FOUND)
    set(ZeroMQPP_LIBRARIES ${ZeroMQPP_LIBRARY})
    set(ZeroMQPP_LIBRARY ${ZeroMQPP_LIBRARY})
    set(ZeroMQPP_INCLUDE_DIRS ${ZeroMQPP_INCLUDE_DIR})
    set(ZeroMQPP_DEFINITIONS "")
  endif()

  set(ZeroMQPP_target_name ZeroMQPP::ZeroMQPP)
  if(ZeroMQPP_FOUND AND NOT TARGET ${ZeroMQPP_target_name})
    add_library(${ZeroMQPP_target_name} INTERFACE IMPORTED)
    set_target_properties(
      ${ZeroMQPP_target_name} PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
      "${ZeroMQPP_INCLUDE_DIR}")
    set_target_properties(
      ${ZeroMQPP_target_name} PROPERTIES INTERFACE_LINK_LIBRARIES
      "${ZeroMQPP_LIBRARY}")
  endif()

  mark_as_advanced(
    ZeroMQPP_INCLUDE_DIR
    ZeroMQPP_INCLUDE_DIRS
    ZeroMQPP_LIBRARY
    ZeroMQPP_LIBRARIES
    ZeroMQPP_DEFINITIONS
    ZeroMQPP_VERSION
    ZeroMQPP_FOUND)

endif()
