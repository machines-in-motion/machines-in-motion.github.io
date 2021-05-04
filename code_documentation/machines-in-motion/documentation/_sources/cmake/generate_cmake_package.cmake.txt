#
# Copyright (c) 2019, New York University and Max Planck Gesellschaft.
#
# License BSD-3 clause
#

# .rst: .. cmake:command:: generate_cmake_package
#
# this macro generates a cmake package (i.e. cmake files for finding and using
# the package) as explained in
# https://cmake.org/cmake/help/latest/guide/importing-exporting/index.html
#
# in order to work, we need a Config.cmake.in file defined in the root dir
#

function(generate_cmake_package)
  cmake_parse_arguments(PARSE_ARGV 0 _LOCAL "SKIP_TARGET_EXPORT" "" "")
  include(CMakePackageConfigHelpers)

  # generate the necessary cmake file
  set(cm_files "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake")
  configure_package_config_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in ${cm_files}
    INSTALL_DESTINATION share/${PROJECT_NAME}/cmake)
  # we test if there is a version to be installed
  if(DEFINED PROJECT_VERSION)
    write_basic_package_version_file(
      ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake
      VERSION ${PROJECT_VERSION}
      COMPATIBILITY SameMajorVersion)
    list(APPEND cm_files
         "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake")
  endif()

  # we copy the cmake files we would need to configure the project
  install(FILES ${cm_files} DESTINATION share/${PROJECT_NAME}/cmake)

  if(NOT ${_LOCAL_SKIP_TARGET_EXPORT})
    # we install the cmake package
    install(
      EXPORT ${PROJECT_NAME}Targets
      FILE ${PROJECT_NAME}Targets.cmake
      NAMESPACE ${PROJECT_NAME}::
      DESTINATION share/${PROJECT_NAME}/cmake)
  endif()
endfunction()
