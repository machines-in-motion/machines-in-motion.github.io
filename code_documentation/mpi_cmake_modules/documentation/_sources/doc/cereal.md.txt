Cereal (serialization)
======================

## Introduction

This package provide a CMake find module macros to look for the 
[Cereal](http://uscilab.github.io/cereal/index.html)
package.

## Usage

The Cereal package is an include only C++ project.
We define the `cereal::cereal` target when we look for it.
Hence we need to:

look for cereal:

    find_package(cereal REQUIRED)

link the `cereal::cereal` to one of our own:

    target_link_library(my_lib cereal::cereal)
    target_link_library(my_exe cereal::cereal)
