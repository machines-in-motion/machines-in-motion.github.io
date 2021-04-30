#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# License BSD-3 clause
#

#.rst:
# .. cmake:command:: SET_IF_EMPTY
#
#   :param [in/out] variable: CMake varibale to allocate if it is empty.
#   :param [in] value: Value to affect to the input/ouput *variable*.
#
MACRO( SET_IF_EMPTY variable value )
  IF( "${${variable}}" STREQUAL "" )
    SET( ${variable} ${value} )
  ENDIF()
ENDMACRO()
