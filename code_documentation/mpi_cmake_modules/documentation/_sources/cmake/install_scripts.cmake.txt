#
# Copyright (c) 2019-2020, New York University and Max Planck Gesellschaft.
# License BSD-3 clause
#

#.rst:
#
# Install scripts without their file extension.
#
# .. cmake:command:: INSTALL_SCRIPTS
#
#    Expects as argument a list of files and a ``DESTINATION`` parameter with an
#    installation destination.
#
#    The files are installed as programs (i.e. as executables) with the file
#    extension (e.g. ".py") striped from their names.
#
function(install_scripts)
    cmake_parse_arguments(
        PARSE_ARGV
        0
        _args
        ""  # options without arguments
        "DESTINATION"  # options with single argument
        ""  # options with multiple arguments
    )

    # based on https://stackoverflow.com/a/10321017
    foreach(file ${_args_UNPARSED_ARGUMENTS})
        get_filename_component(name_without_extension ${file} NAME_WE)
        install(
            PROGRAMS ${file}
            DESTINATION ${_args_DESTINATION}
            RENAME ${name_without_extension}
        )
    endforeach()
endfunction()
