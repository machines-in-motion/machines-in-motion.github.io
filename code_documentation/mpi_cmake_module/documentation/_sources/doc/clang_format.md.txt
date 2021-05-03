Clang Format
============

## Introduction

This package provide some tools in order
to format the C/C++ code using clang-format and the
[machines-in-motions](https://machines-in-motion.github.io/code_documentation/ci_example_cpp/coding_guidelines_1.html)
specific set of rules.

## Executable

In order to use it one need to source the workspace environment:

    source workspace/install/setup.bash

And to run the following command:

    mpi_clang_format list_of_files list_of_folders

`list_of_files` and `list_of_folders` can be either relative paths or absolute paths.

This executable will create the list of all files to be formatted by checking all
arguments (which order does not matter). And perform the following tests:
- If you provided a file it will keep it if:
    - it exists &
    - it is a source files
- If you provided a folder it will search recursively all the files and
    perform the above checks.

Once the list is created the tool format each selected files.
