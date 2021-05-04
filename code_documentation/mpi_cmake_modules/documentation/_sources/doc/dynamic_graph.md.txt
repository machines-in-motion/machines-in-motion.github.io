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

    find_package(dynamic-graph REQUIRED")
    find_package(dynamic-graph-graph REQUIRED")
    
and then a target `my_target`:

    target_link_libraries(my_target dynamic-graph::dynamic-graph)
    target_link_libraries(my_target dynamic-graph::dynamic-graph-python)

Then one need to create a library based on C++ and then build the python
dynamic graph module:

    ################################
    # Build a dynamic graph module #
    ################################
    add_library(my_dg_plugin SHARED
        src/my_first_entity.cpp
        src/a_second_controller.cpp
        src/some_dynamic_graph_operators.cpp
    )
    # Add the include dependencies.
    target_include_directories(
        my_dg_plugin PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
                            $<INSTALL_INTERFACE:include>)
    # Link the dependencies.
    target_link_libraries(my_dg_plugin dynamic-graph::dynamic-graph)
    target_link_libraries(my_dg_plugin dynamic-graph::dynamic-graph-python)
    target_link_libraries(my_dg_plugin <some other dependencies>)
    # Install the target and it's python bindings.
    install_dynamic_graph_plugin_python_bindings(my_dg_plugin)
    # Install the plugin.
    get_dynamic_graph_plugin_install_path(plugin_install_path)
    install(
    TARGETS my_dg_plugin
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION ${plugin_install_path}
    ARCHIVE DESTINATION ${plugin_install_path}
    RUNTIME DESTINATION ${plugin_install_path}
    INCLUDES
    DESTINATION include)


This little piece of code creates a library called `my_dg_plugin` and it's
python bindings `my_dg_plugin_dg_wrapper` and install them properly.
