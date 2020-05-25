#
# @file xacro.cmake
# @author Maximilien Naveau (maximilien.naveau@gmail.com)
# @copyright Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# @license License BSD-3 clause
# @date 2019-05-06
# 
# @brief This file allows us to abuild xacro files with a single macro.
# 


#.rst:
#
# This looks for any files ending with .urdf.xacro in the [package_root]/xacro
# folder. Then it calls the xacro command on each and every file found.
# It then declare a target whith the xacro command.
# 
# This all boils down to the following fact:
#
# At compile time the [package_root]/urdf/*.urdf files are going to be compiled
# from the [package_root]/xacro/*.urdf.xacro files.
#
macro(BUILD_XACRO_FILES)

  # find dependencies using catkin
  find_package(catkin REQUIRED COMPONENTS
    xacro
  )

  # Xacro files of the quadruped
  file(GLOB  xacro_file_names RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}/xacro
      ${CMAKE_CURRENT_SOURCE_DIR}/xacro/*.urdf.xacro)

  foreach(xacro_file_name ${xacro_file_names})
    # remove .xacro extension
    string(REGEX MATCH "(.*)[.]urdf.xacro$" unused ${xacro_file_name})
    set(urdf_file_name ${CMAKE_MATCH_1}.urdf)

    set(xacro_file_full_path ${CMAKE_CURRENT_SOURCE_DIR}/xacro/${xacro_file_name})
    set(urdf_file_full_path ${CMAKE_CURRENT_SOURCE_DIR}/urdf/${urdf_file_name})

    # create a rule to generate ${output_filename} from {it}
    xacro_add_xacro_file(
      ${xacro_file_full_path}
      ${urdf_file_full_path}
      INORDER
    )

    list(APPEND urdf_files ${urdf_file_full_path})

  endforeach(xacro_file_name)

  # add an abstract target to actually trigger the builds
  add_custom_target(${PROJECT_NAME}_urdf_build_files ALL DEPENDS ${urdf_files})

endmacro(BUILD_XACRO_FILES)