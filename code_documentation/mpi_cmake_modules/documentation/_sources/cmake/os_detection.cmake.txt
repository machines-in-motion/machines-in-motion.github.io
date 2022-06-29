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
#   Executes ``uname -a`` to detect the OS and sets some flags accordingly.
#   Alternatively, the target OS can explicitly be specified by setting the
#   variable ``OS_VERSION`` before calling this macro (useful for cross
#   compiling).
#
#   Supported OS_VERSIONs are::
#
#       * "xenomai"
#       * "preempt-rt" / "lowlatency"
#       * "non-real-time"/"ubuntu"
#       * "darwin" (Mac-OS)
#
#   It also discriminate between real-time and non-real-time (or low latency) *OS* (kernel).
#
macro(DEFINE_OS)

  # Update submodules as needed
  if (NOT DEFINED OS_VERSION)
      execute_process(
          COMMAND uname -a
          OUTPUT_VARIABLE UNAME_OUT)
      string(TOLOWER "${UNAME_OUT}" OS_VERSION)
  endif()

  if(OS_VERSION MATCHES "xenomai")
    set(CURRENT_OS "xenomai")
    add_definitions("-DXENOMAI")

  elseif(OS_VERSION MATCHES "preempt rt" OR OS_VERSION MATCHES "preempt-rt" OR OS_VERSION MATCHES "preempt_rt" OR OS_VERSION MATCHES "lowlatency")
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

  message(STATUS "The OS type is " ${CURRENT_OS})

  if(OS_VERSION MATCHES "darwin")
    add_definitions("-DMAC_OS")
    message(STATUS "OS found is MAC_OS")
  endif()

endmacro(DEFINE_OS)

