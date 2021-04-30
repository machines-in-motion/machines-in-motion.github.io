OS detection
============

## Introduction

This module has for purpose to detect the kind of Operating System (OS) the
build is executed in using the tool `uname -a`. It is supporting:

- [Ubuntu](https://ubuntu.com/)
- [MacOs](https://fr.wikipedia.org/wiki/Mac_OS)
- [PREEMPT_RT](https://wiki.linuxfoundation.org/realtime/start)
- [Xenomai](https://gitlab.denx.de/Xenomai/xenomai/-/wikis/home)

It defines the following C/C++ preprocessor macros:

- `XENOMAI` (if Xenomai is detected)
- `RT_PREEMPT` (if PREEMPT_RT OS is found)
- `MAC_OS` (if MacOS is detected)
- `NON_REAL_TIME` (if non-real-time OS is detected)

The
[real_time_tools](https://machines-in-motion.github.io/code_documentation/real_time_tools/) 
package depends heavily on this detection.

## Usage

There is a macros called `define_os()` that is called by default if one
depend on this pacakge, see [readme.md](@ref md_readme).
So basically there is nothing specific to be done to use this tool.