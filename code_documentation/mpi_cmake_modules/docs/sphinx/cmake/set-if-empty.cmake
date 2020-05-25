#
# @file set-if-empty.cmake
# @author Maximilien Naveau (maximilien.naveau@gmail.com)
# @copyright Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# @license License BSD-3 clause
# @date 2019-05-06
# 
# @brief This file allows us to allocate cmake variable only of they have not
# been allocated before or if they are empty
# 

MACRO( SET_IF_EMPTY variable value )
  IF( "${${variable}}" STREQUAL "" )
    SET( ${variable} ${value} )
  ENDIF()
ENDMACRO()
