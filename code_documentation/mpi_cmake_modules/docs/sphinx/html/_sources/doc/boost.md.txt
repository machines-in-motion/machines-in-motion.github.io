Boost
=====

## Introduction

This package provide a CMake macros which looks for the 
[Boost](https://www.boost.org/doc/libs/)
libraries.

## Usage

Inside your `CMakeLists.txt` one can use:

    SET(BOOST_COMPONENTS <Boost components list>)
    SEARCH_FOR_BOOST(BOOST_COMPONENTS)

or in lower case:

    set(BOOST_COMPONENTS <Boost components list>)
    search_for_boost()

This will already define for you the path to the include directories for Boost.
It provide the variable `BOOST_LIBRARIES` in order to use the Boost component.

In order to link a CMake target with boost-python (cf. 
[add_library](https://cmake.org/cmake/help/v3.17/command/add_library.html?highlight=add_library)
or 
[add_executable](https://cmake.org/cmake/help/v3.17/command/add_executable.html?highlight=add_executable)) one can simply use the following macro:


    target_link_boost_python(<target name>)