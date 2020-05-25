#
# @file cereal.cmake
# @author Vincent Berenz
# @copyright Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# @license License BSD-3 clause
# @date 2019-09-24
#

MACRO(SEARCH_FOR_CEREAL REQUIRED)

  IF(EXISTS "/usr/include/cereal")
    set(cereal_INCLUDE_DIRS "/usr/include/cereal")
    INCLUDE_DIRECTORIES(SYSTEM ${cereal_INCLUDE_DIRS})
    set(cereal_FOUND 1)
  ELSE()
    set(cereal_FOUND 0)
  ENDIF()

  IF( NOT ${cereal_FOUND} AND ${REQUIRED})
    message(FATAL_ERROR "cereal not found. maybe: sudo apt-get install libcereal-dev")
  ENDIF()
  
ENDMACRO(SEARCH_FOR_CEREAL REQUIRED)

MACRO(SEARCH_FOR_CEREAL_REQUIRED)
    SEARCH_FOR_CEREAL(1)
ENDMACRO(SEARCH_FOR_CEREAL_REQUIRED)


MACRO(SEARCH_FOR_CEREAL_OPTIONAL)
    SEARCH_FOR_CEREAL(0)
ENDMACRO(SEARCH_FOR_CEREAL_OPTIONAL)