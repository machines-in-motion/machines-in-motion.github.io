Clang Format
============

## Introduction

This package provide some tools in order
to format the C/C++ code using clang-format and the
[machines-in-motions](https://machines-in-motion.github.io/code_documentation/ci_example_cpp/coding_guidelines_1.html)
specific set of rules.

## Executable

In order to use it one need to source the workspace environment:

    source workspace/devel/setup.bash

And to run the following command:

    rosrun mpi_cmake_modules clang_format list_of_files list_of_folders

`list_of_files` and `list_of_folders` can be either relative paths or absolute paths.

For those not willing to use rosrun the executable is located in

    mpi_cmake_modules/scripts/clang_format

So one can simply get the full path of the executable in order to use it.
A cleaner way would be to properly install the executable script.

The executable will create the list of all files to be formatted by checking all
arguments (which order does not matter). And perform the following tests:
- If you provided a file it will keep it if:
    - it exists &
    - it is a source files
- If you provided a folder it will search recursively all the files and
    perform the above checks.

Once the list is created the tool format each selected files.

## CMake macro

This package also provide a CMake macro allowing you to perform automatically
the formatting upon build.

The macro to add is located in the `mpi_cmake_modules/cmake/clang-format.cmake`
and is called
    
    format_code()

By default it does nothing. In order to activate it you need to add the
folowwing CMake argument:

    catkin build mpi_cmake_modules --cmake-args -DFORMAT_CODE=ON