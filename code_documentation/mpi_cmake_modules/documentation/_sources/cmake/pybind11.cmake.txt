#
# Copyright (c) 2019-2020, New York University and Max Planck Gesellschaft.
# License BSD-3 clause
#

#.rst:
#
# Add a Python module using pybind11
#
# .. cmake:command:: ADD_PYBIND11_MODULE
#
#    Create a pybind11 module.  First argument is the target name (needs to
#    match the name of the Python module!) followed by a list of source files.
#
#    Optional arguments:
#     - NO_EXTRAS:  Disables some optimisation in pybind11 (see documentation of
#         pybind11_add_module for details).
#     - LINK_LIBRARIES:  List of libraries that are linked to the target.
#     - INLUCDE_DIRS:  List of include directories.  "include" is added by
#       default.
#
macro(add_pybind11_module module_name)
    cmake_parse_arguments(ADD_PYBIND11_MODULE
        "NO_EXTRAS"  # options without arguments
        ""  # options with single argument
        "INCLUDE_DIRS;LINK_LIBRARIES"  # options with multiple arguments
        ${ARGN}
    )
    set(ADD_PYBIND11_MODULE_SRC ${ADD_PYBIND11_MODULE_UNPARSED_ARGUMENTS})

    if (ADD_PYBIND11_MODULE_NO_EXTRAS)
        set(NO_EXTRAS "NO_EXTRAS")
    else()
        # make sure it is not set
        unset(NO_EXTRAS)
    endif()

    # NO_EXTRAS
    pybind11_add_module(${module_name} ${NO_EXTRAS} ${ADD_PYBIND11_MODULE_SRC})
    target_include_directories(${module_name} PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>
        ${ADD_PYBIND11_MODULE_INCLUDE_DIRS}
    )
    target_link_libraries(${module_name} PRIVATE
        ${ADD_PYBIND11_MODULE_LINK_LIBRARIES}
    )

    # make sure ${PYTHON_INSTALL_DIR} is set
    _ament_cmake_python_get_python_install_dir()

    install(TARGETS ${module_name}
        DESTINATION "${PYTHON_INSTALL_DIR}/${PROJECT_NAME}"
    )
endmacro()


