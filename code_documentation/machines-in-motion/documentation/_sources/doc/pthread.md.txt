Pthread
=======

## Introduction

Use the default CMake macros
[here](https://cmake.org/cmake/help/v3.10/module/FindThreads.html).

## Usage

Simply add to you CMakeLists.txt:

    find_package(Threads REQUIRED)

    target_link_library(my_lib Threads::Threads)
