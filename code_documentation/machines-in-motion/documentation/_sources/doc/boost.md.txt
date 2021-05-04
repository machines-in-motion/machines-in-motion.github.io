Boost
=====

Use the default way to find boost in the official
[CMake documentation](https://cmake.org/cmake/help/v3.10/module/FindBoost.html).

## In practice

We need to look for boost and it's components:

    find_package(Boost REQUIRED COMPONENTS thread)

Then we need to link them to our targets:

    target_link_library(my_lib Boost::boost Boost::thread)

## Boost python

Boost python is a bit more annoying as it requires the version of python used
on the system. Hence the search is a bit different:

    # Find python
    find_package(Python REQUIRED)
    # Extract major/minor python version
    string(REPLACE "." ";" VERSION_LIST ${PYTHONLIBS_VERSION_STRING})
    list(GET VERSION_LIST 0 PYTHONLIBS_VERSION_MAJOR)
    list(GET VERSION_LIST 1 PYTHONLIBS_VERSION_MINOR)
    set(boost_python_name python${PYTHONLIBS_VERSION_MAJOR}.${PYTHONLIBS_VERSION_MINOR})
    find_package(Boost COMPONENTS ${boost_python_name} REQUIRED)

And then link to it:

    target_link_library(my_lib Boost::${boost_python_name})
