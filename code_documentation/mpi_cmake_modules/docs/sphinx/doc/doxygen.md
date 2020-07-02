Doxygen
=======

## Introduction

In the machines-in-motion group we use doxygen in order to build all
documentations from C/C++ and Python code.
The main idea is that we can have a unifyed way to generate the documentation.

## Usage

In order to use this macro one obviously needs to depend on this package through
a `find_package` or using `catkin` components.
Once the dependency is found the following macro needs to be added to the
CMakelists.txt:

    build_doxygen_documentation()

This macro is idle by default. To activate it one need to pass the following
CMake argument:

    catkin build --cmake-args -DGENERATE_DOCUMENTATION=ON

The macro will generate a specific target using the name of the project for
unicity. The documentation is located in:

    workspace/devel/share/<project name>/doc/html/

In order to visual the built documentation with firefox please run:

    firefox workspace/devel/share/<project name>/doc/html/index.html

## Writting a documentation

In order to write a decent documentation one need to make sure that Doxygen
do not output warnings. A warning from DOxygen proves that a code item is not
documentated. See the 
[C++ coding guidelines](https://machines-in-motion.github.io/code_documentation/ci_example_cpp/coding_guidelines_1.html)
, the
[Python coding guidelines](https://machines-in-motion.github.io/code_documentation/ci_example_python/coding_guidelines_1.html)
and the
[General coding guidelines](https://machines-in-motion.github.io/code_documentation/ci_example_cpp/coding_guidelines_0.html)
For more information on how our code style and the good code practice.

The documentation of your code is combined with several main items:

- First, one need to add the docstring of the language.
- Second, one need to provide unittests, these usually are good basis for an
external user to understand the API.
- Third, one need to provide demos of the API defining the usual use case of the
code. These code must contain doc-strings containing the key word, e.g. with
C/C++:

    ```C++
    /** 
      * \@example <file name> This example provide an exmaple on how to use ...
      * Remarque: remove the `\` before the `@`.
      */
    ```

- Finally whenever you feel like documenting more extensively something and
adding graph, image, extensive text explanatin, link, etc, it is way more
convenitent to use markdown. Therefore one need to provide a `doc/` folder
containing the additionnal documentation.

For more detail on how to use doxygen here is a list of extremely useful links:
- [List of doxygen commands](http://doxygen.nl/manual/commands.html)
- [Doxygen markdown support](http://doxygen.nl/manual/markdown.html#markdown_dox)

## Implementation details

The `Doxyfile.in` place in this repository's `resources` folder is reponsible
for the parsing paramters and shape of the documentation. The idea here is that
upon build Doxygen will go recursively through all the current project files
looking for the C/C++/Python/Markdown files and generate the documentation
automatically.

The subtility about python is that we use the
[doxypypy](https://github.com/Feneric/doxypypy) package in order to convert the
Google docstring in the python code into Doxygen recognizable docstrings.
So one need to install this dependency using pip for example.
