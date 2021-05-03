#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft.
#
# License BSD-3 clause
#

#[=======================================================================[.rst:

Simply add the find_modules/* to the *CMAKE_MODULE_PATH*.

#]=======================================================================]

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/find_modules
                      ${CMAKE_MODULE_PATH})

# from CMake Version 3.15 the FindPython.cmake is much better implemented.
if(CMAKE_VERSION VERSION_LESS "3.15")
  set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/find_modules/python
                        ${CMAKE_MODULE_PATH})
endif()
