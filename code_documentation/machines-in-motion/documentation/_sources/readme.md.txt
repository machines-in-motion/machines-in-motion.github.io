[![check_main_branch_and_deploy_doc](https://github.com/machines-in-motion/package_template/actions/workflows/deploy_doc.yml/badge.svg?branch=master)](https://github.com/machines-in-motion/package_template/actions/workflows/deploy_doc.yml)

package_template
----------------

This repository is a tutorial on how to package C++ and python code together.
The convention presented are to be followed by people in the 
[machines-in-motion](https://wp.nyu.edu/machinesinmotion/) group.

In particular it contains the examples for:
- Packaging C++ and Python code in one repository.
- How to build C++ code and package it with [CMake](https://cmake.org/) + [mpi_cmake_module](https://github.com/machines-in-motion/mpi_cmake_modules).
- How to write a PID controller in C++
- How to write a PID controller in Python
- How to write Python bindings over the C++ code using [Pybind11](https://github.com/pybind/pybind11)
- How to write unit-tests in C++ and Python.
- How to deal with YAML configuration files from C++ or Python.
- How to use ROS1 parameters (deprecated, privilege ROS2 param).
- How to write C++ and Python demos of the code.
- How to write the API documentation using:
    - Doxygen docstring for C++,
    - Google docstring for Python,
    - Markdown or Restructured text for generic documentation.

A tutorial on how to write CMakeLists.txt is also available here:
https://github.com/machines-in-motion/machines-in-motion.github.io/wiki/use_cmake

### Installation:

#### Standard dependencies:

This package depend externally on:
- mpi_cmake_module for the build system (see next paragraph)
- pybind11 for the python bindings (see next paragraph)
- yaml_utils for the yaml parsing in C++ (see next paragraph)
- googletest for the C++ unit tests (see next paragraph)
- pytest for the Python unit tests.
  
The mpi_cmake_module will ask for dependencies when building the documentation,
see the [requirements.txt](https://github.com/machines-in-motion/mpi_cmake_modules/blob/master/requirements.txt)

In short for the external dependencies without the doc ones:
```
sudo apt install libyaml-cpp-dev
python3 -m pip install -U pytest
```

#### Download the package:

Preferably use [treep](https://gitlab.is.tue.mpg.de/amd-clmc/treep)
with the
[treep_machines_in_motion](https://github.com/machines-in-motion/treep_machines_in_motion)
configuration.

**Note: ** do not forget to *register your ssh public key in your settings*.

```
mkdir -p ~/devel
pip install treep
cd ~/devel
git clone git@github.com:machines-in-motion/treep_machines_in_motion.git
treep --clone PACKAGE_TEMPLATE
```

#### Build the package

We use [colcon](https://github.com/machines-in-motion/machines-in-motion.github.io/wiki/use_colcon)
to build this package:
```
cd mkdir -p ~/devel/workspace
colcon build
```

### Usage:

#### Demos/Examples

The purpose of the this code is for user to read it.
But you can still start the demos compiled with this package:
```
package_template_demo_pid
```
or
```
package_template_demo_pid_load_from_file
```
See the [source files](https://github.com/machines-in-motion/package_template/tree/master/demos)

#### API documentation

Building the documentation locally:
```
colcon build --packages-select package_template --cmake-args -DGENERATE_DOCUMENTATION=ON
```

A pre-built documentation can be seen here:
```
https://machines-in-motion.github.io/code_documentation/package_template
```

### License and Copyrights

License BSD-3-Clause
Copyright (c) 2021, New York University and Max Planck Gesellschaft.
