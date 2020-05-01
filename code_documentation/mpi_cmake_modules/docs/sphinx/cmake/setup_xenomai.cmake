#
# @file setup_xenomai.cmake
# @author Vincent Berenz (vberenz@tue.mpg.de)
# @copyright Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# @license License BSD-3 clause
# @date 2020-01-02
# 
# @brief setup Xenomai : 1) calls xeno-config , 2) add suitable libraries to linked
# directories, 3) add suitable directories to include directories
#  and 4) setup variable Xenomai_LIBS. Has been tested only on Xenomai 2.6.  
# 

macro(SETUP_XENOMAI)

  message(WARNING "\n\n** compiling for xenomai **\n\n")

  set (Xenomai_DIR "${CMAKE_CURRENT_LIST_DIR}/")
  find_package(Xenomai REQUIRED)

  set(XENOMAI_ROOT ${Xenomai_ROOT_DIR})

  exec_program(${XENOMAI_ROOT}/bin/xeno-config ARGS "--skin=native --cflags" 
      OUTPUT_VARIABLE XENOMAI_C_FLAGS)  
  exec_program(${XENOMAI_ROOT}/bin/xeno-config ARGS "--skin=native --ldflags" 
      OUTPUT_VARIABLE XENOMAI_LD_FLAGS)  
  set(CMAKE_C_FLAGS "${XENOMAI_C_FLAGS} ${CMAKE_C_FLAGS}")
  set(CMAKE_CPP_FLAGS "${XENOMAI_C_FLAGS} ${CMAKE_CPP_FLAGS}")
  
  set(Xenomai_LIBS native xenomai rtdm pthread edit curses nsl glut GL GLU X11 Xmu m)
  if(Xenomai_LIBRARY_RTDK)
    set(Xenomai_LIBS ${Xenomai_LIBS} rtdk)
  endif()

  link_directories(${XENOMAI_ROOT}/lib /usr/lib /usr/X11/lib64 /usr/X11/lib /usr/lib64 ${CMAKE_LIBRARY_PATH})

  include_directories( ${Xenomai_INCLUDE_DIR} )

endmacro(SETUP_XENOMAI)

