Python Coding Guidelines
========================

## I. Introduction

These are the internal **Python** guidelines for the
[machines-in-motion](https://wp.nyu.edu/machinesinmotion/) group. The same
guidelines are used in the
[Open Dynamic Robot Initiative](https://open-dynamic-robot-initiative.github.io/)

The following rules present basic guidelines for our **Python** code.

These guidelines may evolve in time so it is first
good practice to check them upon creation of a new package or code refactoring.

## II. Folder Structure and File Naming

- Only one **Python** module per git repository, and it must be located in
    `python/<catkin_package_name>/`.
- Executable scripts should be placed in the `scripts/` folder. And should have
    a CMake **install rule** that makes them executable upon installation.

## II. Python Coding Guidelines

Regarding the style, follow [PEP 8](https://www.python.org/dev/peps/pep-0008/).

## III. Python Version

**Use Python 3.**

In case it is not possible to avoid **Python 2** for some reason, add the
following import at the top of your files to make it easier to port the code to
**Python 3** in the future and to avoid confusion about unexpected integer
division:

    from __future__ import print_function, division
