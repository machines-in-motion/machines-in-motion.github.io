Dynamic graph
=============

## Introduction

This package provide tools to ease the use of the
[dynamic-graph](https://github.com/stack-of-tasks/dynamic-graph)
package for building the entities, their python bindings
and install them.

## Usage

In order to build a package containing dynamic-graph entities one need to fetch
the dependencies first. In order to to this one can use the
[pkg-config](@ref md_doc_pkg_config).

    catkin_add_required_dependency("dynamic-graph >= 3.0.0")
    catkin_add_required_dependency("dynamic-graph-python >= 3.0.0")

Then one need to create a library based on C++ and then build the python
dynamic graph module:

    ################################
    # Build a dynamic graph module #
    ################################
    add_library(a_cpp_library SHARED
        src/my_first_entity.cpp
        src/a_second_controller.cpp
        src/some_dynamic_graph_operators.cpp
    )
    target_link_libraries(a_cpp_library ${catkin_LIBRARIES})
    set_target_properties(a_cpp_library PROPERTIES
        PREFIX ""
        LIBRARY_OUTPUT_DIRECTORY ${DYNAMIC_GRAPH_PLUGIN_DIR}
    )
    dynamic_graph_python_module(
        "a_cpp_library"    # from dynamic_graph_manager.a_cpp_library import *
        a_cpp_library      # python wrapper dependencies
        a_cpp_library_wrap # python wrapper target name
    )

This little peace of code creates a library called `a_cpp_library` and build the
corresponding python dynamic-graph module and install it in
`lib/pythonX.X/dist-packages/dynamic_graph_manager`.