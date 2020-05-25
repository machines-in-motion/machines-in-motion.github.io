Protobuf
========

## Introduction

We define here a couple of useful macros to ease the management of the
[Protobuf](https://developers.google.com/protocol-buffers/)
message code generation.

## Usage

This CMake module provide 2 macros that both work in collaboration with
Catkin.
Both macros will provide the generated C++ message source files. In addition
to this one can generate the Python files by setting the following CMake
variable:

    set(PROTOBUF_COMPILE_PYTHON ON)

These files will be installed in the correct Python directory.

### Generic macro

The first macro is a generic purpose macro which can be used in any project.

    protobuf_catkin_generate_cpp(src_path srcs hdrs)

This macro takes the path to the folder in which you stored you `*.proto` files.
This path is relative to your project path.

This macro then fills in the `SRCS` and `HDRS` variables with the generated
C++ sources generated from the protobuf generator.

One then need to build this files by hand by creating a library.

### Specific project architecture macro

This macro expect that you have put the `*.proto` files in the `protobuf` folder
located in your project root `PROJECT_PATH/protobuf/`.
Then calling:

    protobuf_catkin_generate_lib(my_protobuff_messages)

Will create the CMake target `my_protobuff_messages` which you can depend on:

    target_link_libraries(my_target my_protobuff_messages)
