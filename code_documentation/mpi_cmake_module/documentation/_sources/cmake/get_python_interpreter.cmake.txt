
#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft.
#
# License BSD-3 clause
#

# .rst: .. cmake:command:: get_python_interpreter
#
# Find the python interpreter and return it's location.
#
function(get_python_interpreter output)

  find_package(PythonInterp ${ARGN})
  if(NOT ${PYTHONINTERP_FOUND} STREQUAL TRUE)
    message(FATAL_ERROR "Python executable has not been found.")
  endif(NOT ${PYTHONINTERP_FOUND} STREQUAL TRUE)

  set(Python_EXECUTABLE ${PYTHON_EXECUTABLE})

  message(STATUS "PythonInterp: ${PYTHON_EXECUTABLE}")
  set(${output}
      ${PYTHON_EXECUTABLE}
      PARENT_SCOPE)

endfunction()