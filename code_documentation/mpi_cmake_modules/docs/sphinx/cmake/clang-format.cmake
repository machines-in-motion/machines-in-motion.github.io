#
# @file clang-format.cmake
# @author Maximilien Naveau, Felix Widmaier
# @copyright Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# @license License BSD-3 clause
# @date 2019-10-16
#
#===============================================================================
# Code Formatting
#===============================================================================

# Add targets to automatically run clang-format on all C++ source files.
MACRO(FORMAT_CODE)

    option(FORMAT_CODE
        "Set to ON to format your code automatically during the build" OFF)

    if(${FORMAT_CODE})
        message(STATUS "[ Code Formatting ]")
        find_program(
            CLANG_FORMAT_EXECUTABLE
            NAMES clang-format clang-format-6.0 clang-format-8
        )
        if(CLANG_FORMAT_EXECUTABLE)
            message(STATUS "Looking for clang-format - found")
            message(STATUS "Format source files using catkin_make format.")

            # load the clang-format configuration
            execute_process(COMMAND
                ${MPI_CMAKE_MODULES_ROOT_DIR}/python/mpi_cmake_modules/yaml2oneline.py
                ${MPI_CMAKE_MODULES_RESOURCES_DIR}/_clang-format
                RESULT_VARIABLE clang_format_conversion_result
                OUTPUT_VARIABLE clang_format_config
                ERROR_VARIABLE clang_format_error_output)
            if(NOT ${clang_format_error_output} STREQUAL "")
                message(FATAL_ERROR "Failed to load clang-format config."
                    " Error output: ${clang_format_error_output}")
            elseif(NOT ${clang_format_conversion_result} EQUAL 0)
                message(FATAL_ERROR "Failed to load clang-format config."
                    " Return code: ${clang_format_conversion_result}")
            endif()

            # target to run clang-format to reformat the files
            add_custom_target(${PROJECT_NAME}-format ALL
                COMMAND ${CMAKE_COMMAND} -E echo "Formatting files... "
                COMMAND ${MPI_CMAKE_MODULES_SCRIPTS_DIR}/format.sh
                    ${CLANG_FORMAT_EXECUTABLE} "${clang_format_config}"
                COMMAND ${CMAKE_COMMAND} -E echo "Done."
                DEPENDS ${CLANG_FORMAT_EXECUTABLE}
                WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

            # target to check if formatting of files complies with style guide
            add_custom_target(${PROJECT_NAME}-check-format ALL
                COMMAND ${CMAKE_COMMAND} -E echo "Checking files... "
                COMMAND ${MPI_CMAKE_MODULES_SCRIPTS_DIR}/check_format.sh
                    ${CLANG_FORMAT_EXECUTABLE} "${clang_format_config}"
                COMMAND ${CMAKE_COMMAND} -E echo "Done."
                DEPENDS ${CLANG_FORMAT_EXECUTABLE} ${PROJECT_NAME}-format
                WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
        else()
            message(FATAL_ERROR "Looking for clang-format - NOT found, please"
                    "install clang-format to enable automatic code formatting")
        endif()
    endif()

ENDMACRO(FORMAT_CODE)
