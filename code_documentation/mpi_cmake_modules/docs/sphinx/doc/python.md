Python
======

## Introduction

This module is very important as it provide tools to search for the Python
libraries and includes depending on the required Python version.
Plus some tools to create python bindings using boost python or pybind11.

## Usage

### Search for Python

The simplest thing is here to find the default Python library:

    search_for_python()

This macros is influenced by `PYTHON_EXECUTABLE` and `PYTHON_LIBRARY` which can
be set for Python2 via the command:

    catkin build --cmake-args -DPYTHON_EXECUTABLE=`which python2` -DPYTHON_LIBRARY=`/usr/lib/x86_64-linux-gnu/libpython2.7.so`

or for Python3 via the command

    catkin build --cmake-args -DPYTHON_EXECUTABLE=`which python3` -DPYTHON_LIBRARY=`/usr/lib/x86_64-linux-gnu/libpython3.5m.so`

Please make sure the library exists at the defined place before executing the
above commands.

### Search for Numpy

Numpy includes can be found via the following macro:

    search_for_numpy()

The macro `search_for_python()` must have been called before hand.