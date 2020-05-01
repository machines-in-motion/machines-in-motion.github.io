mpi_cmake_modules
=================

## Introduction

This package `mpi_cmake_modules` defines a list of usefull cmake macros.
It can be used by simply depending on it using catkin.

## Getting started

In order to use the CMake macros contained in this package one need to depend
on it in the following way:

    find_package(catkin REQUIRED COMPONENTS ${CATKIN_PKGS}) mpi_cmake_modules)

And add the following line in your `package.xml`

~~~xml
<depend>mpi_cmake_modules</depend>
~~~

Remarque: This will perform by default:
- the `define_os()` macro defined in cmake/os_detection.cmake
- the `setup_xenomai()` macro defined in the cmake/setup_xenomai.cmake
  if the OS Xenomai is detected.

## License

BSD 3-Clause

## Authors

- Vincent Berenz (vberenz@tue.mpg.de)
- Maximilien Naveau (mnaveau@tue.mpg.de)
- Felix Widmaier (fwidmaier@tue.mpg.de)
