#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# License BSD-3 clause
#

#.rst:
#
# This file allows us to detect which linux os we are using to compile
# the code.
#
#
# .. cmake:command:: DEFINE_OS
#
#   Execute "uname --all" which provides us information on the *OS* specific
#   functions to use.
#   This method supports::
#       * Xenomai
#       * RT-Preempt
#       * Ubuntu
#       * Mac-OS
#
#   It also discriminate between real-time and non-real-time *OS*.
#
macro(DEFINE_OS)

  # Update submodules as needed
  execute_process(
      COMMAND uname -a
      OUTPUT_VARIABLE UNAME_OUT)
  string(TOLOWER "${UNAME_OUT}" OS_VERSION)

  if(OS_VERSION MATCHES "xenomai")
    set(CURRENT_OS "xenomai")
    add_definitions("-DXENOMAI")
    
  elseif(OS_VERSION MATCHES "preempt rt" OR OS_VERSION MATCHES "preempt-rt" OR OS_VERSION MATCHES "preempt_rt")
    set(CURRENT_OS "rt-preempt")
    add_definitions("-DRT_PREEMPT")
    
  elseif(OS_VERSION MATCHES "ubuntu" OR OS_VERSION MATCHES "non-real-time" OR OS_VERSION MATCHES "darwin" OR OS_VERSION MATCHES "el7.x86_64")
    set(CURRENT_OS "non-real-time")
    add_definitions("-DNON_REAL_TIME")
  else()
    message(STATUS "output of \"uname -a\": ${OS_VERSION}")
    message(WARNING "Could not detect the OS version please "
      "fix os_detection.cmake. Falling back to NON REAL-TIME api.")
    set(CURRENT_OS "non-real-time")
    add_definitions("-DNON_REAL_TIME")
  endif()
  #
  message(STATUS "The OS type is " ${CURRENT_OS})
  
  if(OS_VERSION MATCHES "darwin")
    add_definitions("-DMAC_OS")
    message(STATUS "OS found is MAC_OS")
  endif()

endmacro(DEFINE_OS)

