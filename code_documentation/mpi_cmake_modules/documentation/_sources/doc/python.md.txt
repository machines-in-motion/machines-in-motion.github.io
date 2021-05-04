Python
======

## Introduction

This part is very important as it provides tools to search for the Python
libraries and includes depending on the required Python version.
Plus some tools to create python bindings using pybind11.

## Usage

### Search for Python

The simplest thing is here to find the default Python library:

    find_package(Python REQUIRED)

This macros is influenced by `PYTHON_EXECUTABLE` and `PYTHON_LIBRARY` which can
be set for Python2 via the command:

    colcon build --cmake-args -DPYTHON_EXECUTABLE=`which python2`

you can add `-DPYTHON_LIBRARY=`/usr/lib/x86_64-linux-gnu/libpython2.7.so``
if needed

or for Python3 via the command:

    colcon build --cmake-args -DPYTHON_EXECUTABLE=`which python3`

you can add `-DPYTHON_LIBRARY=`/usr/lib/x86_64-linux-gnu/libpython3.5m.so``
if needed

Please make sure the library exists at the defined place before executing the
above commands.

If you only want to find the python executable you can just do:

    get_python_interpreter(my_var)

`my_var` will contain the path to the python interpreter.

### Install path

In order to install files and library in the good place for python to find it
on need to get the correct path:

    get_python_install_dir(my_var)

`my_var` contains the path to where the python files needs to be installed.

### Search python module

In order to find pure python package one can use this:

    find_package(PythonModule REQUIRED COMPONENTS robot_properties_solo)

This will declare the following variables:

- `PythonModules_FOUND`: Whether all specified Python modules were found.
- `PythonModules_<module>_FOUND`: Whether the Python module \<module\> was found.
- `PythonModules_<module>_PATH`: Absolute path of the directory containing the
    Python module named \<module\>
- `PythonModules_<module>`: Import target for module named \<module\>.
    The location of the target is `PythonModules_<module>_PATH`.
- `PythonModules_PYTHONPATH`: The `PYTHONPATH` setting required for the found
    Python module(s), i.e., The directories that have to be added to the Python
    search path. To support the use of this CMake module more than once with
    different arguments to the find_package() command, e.g., with and without
    the `REQUIRED` argument, the directories containing the found Python
    modules are appended to any existing directories in\
    `PythonModules_PYTHONPATH` if not already listed.
