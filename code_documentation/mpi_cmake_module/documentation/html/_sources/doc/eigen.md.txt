Eigen (linear algebra)
======================

## Introduction

Use the default
[FindEigen.cmake](https://eigen.tuxfamily.org/dox/TopicCMakeGuide.html)
provided by the CMake install.

## Usage

    find_package(Eigen3 REQUIRED)

    target_link_library(my_lib Eigen3::Eigen)