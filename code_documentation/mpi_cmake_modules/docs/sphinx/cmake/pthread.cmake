#
# @file pthread.cmake
# @author Maximilien Naveau (maximilien.naveau@gmail.com)
# @copyright Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# @license License BSD-3 clause
# @date 2019-05-06
# 
# @brief This file is copied/inspired from
# https://github.com/jrl-umi3218/jrl-cmakemodules/blob/master/pthread.cmake
# 

INCLUDE(FindThreads)

#.rst:
# .. cmake:command:: SEARCH_FOR_PTHREAD
#
#    Check for pthread support on Linux. This does nothing on Windows.
#
MACRO(SEARCH_FOR_PTHREAD)
  IF(UNIX)
    IF(CMAKE_USE_PTHREADS_INIT)
      ADD_DEFINITIONS(-pthread)
    ELSE(CMAKE_USE_PTHREADS_INIT)
      MESSAGE(FATAL_ERROR
	"Pthread is required on Unix, but "
	${CMAKE_THREAD_LIBS_INIT} " has been detected.")
    ENDIF(CMAKE_USE_PTHREADS_INIT)
  ELSEIF(WIN32)
    # Nothing to do.
  ELSE(UNIX)
    MESSAGE(FATAL_ERROR "Thread support for this platform is not implemented.")
  ENDIF(UNIX)

  LIST(APPEND LOGGING_WATCHED_VARIABLES
    CMAKE_THREAD_LIBS_INIT
    CMAKE_USE_SPROC_INIT
    CMAKE_USE_WIN32_THREADS_INIT
    CMAKE_USE_PTHREADS_INIT
    CMAKE_HP_PTHREADS_INIT
    )
ENDMACRO(SEARCH_FOR_PTHREAD)
