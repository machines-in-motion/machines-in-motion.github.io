PKG Config
==========

## Introduction

This CMake module is based on the
[pkg-config](https://linux.die.net/man/1/pkg-config) module.
And a compatibility with the
[Catkin CMake module](http://wiki.ros.org/catkin/CMakeLists.txt).

This tool is done for finding non-catkin depencies using a cross platform and
efficient tool. PKG-config is based on `.pc` files containing the dependencies
informations. For PKG-config to work one need to properly setup the
`PKG_CONFIG_PATH` to the path of the `.pc` files locations. Typically
`lib/pkgconfig` in the install folders.

## Usage

### Basic usage

The basic usage of this is like the following:

    # Look for the dependency
    ADD_OPTIONAL_DEPENDENCY(<dependency name 1>)
    ADD_REQUIRED_DEPENDENCY(<dependency name 2>)

    # Use the dependency on a CMake target:
    PKG_CONFIG_USE_DEPENDENCY(target <dependency name 1>)
    PKG_CONFIG_USE_DEPENDENCY(target <dependency name 2>)

### Usage in combination with catkin

The usage inside a catkin package allows us to skip the second part:

    # Look for the dependency and feed the catkin variables with the relevant
    # information
    CATKIN_ADD_OPTIONAL_DEPENDENCY(<dependency name 1>)
    CATKIN_ADD_REQUIRED_DEPENDENCY(<dependency name 2>)

    # use the dependencies using catkin variables
    TARGET_LINK_LIBRARIES(<target> ${catkin_LIBRARIES})
