Xacro
=====

## Introduction

Provide tools to build [xacro](http://wiki.ros.org/xacro) files into urdf ones.

## Usage

Simply call the following command:

    build_xacro_files()

It will recursively search for xacro file in your `project_root_folder/xacro/`
folder and build the urdf into `project_root_folder/urdf/`.