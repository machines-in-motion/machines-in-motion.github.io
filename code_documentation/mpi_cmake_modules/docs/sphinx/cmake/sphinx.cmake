#
# @file
# @author Maximilien Naveau (maximilien.naveau@gmail.com)
# @copyright Copyright (c) 2019, New York University and Max Planck Gesellschaft.
# @license License BSD-3 clause
# @date 2019-05-06
#
# @brief This file allow building the sphinx documentation using cmake
#

#################
# Doxygen Macro #
#################

macro(_BUILD_DOXYGEN)

    # Find "doxygen"
    find_package(Doxygen)
    if (NOT DOXYGEN_FOUND)
        message(FATAL_ERROR
            "Doxygen is needed to build the documentation. "
            "Please install it correctly")
    endif()

    # Create the doxyfile in function of the current project.
    # If the Doxyfile.in does not exists, the cmake step stops.
    configure_file(${DOXYGEN_DOXYFILE_IN} ${DOXYGEN_DOXYFILE} @ONLY IMMEDIATE)

    # the doxygen target is generated
    add_custom_target (${PROJECT_NAME}_doxygen ALL
        COMMAND ${DOXYGEN_EXECUTABLE} ${DOXYGEN_DOXYFILE}
        SOURCES ${DOXYGEN_DOXYFILE} # if the file change rebuild
        WORKING_DIRECTORY ${DOXYGEN_OUTPUT}
        COMMENT "Building xml doxygen documentation for ${PROJECT_NAME}")

    set(SPHINX_BUILD_TARGET_DEPEND ${SPHINX_BUILD_TARGET_DEPEND}
        ${PROJECT_NAME}_doxygen)
endmacro(_BUILD_DOXYGEN)

##################
# Breathe APIDOC #
##################

macro(_BUILD_BREATHE_APIDOC)

    # Find the breathe
    find_program(BREATHE_APIDOC breathe-apidoc)
    if(NOT BREATHE_APIDOC)
        message(FATAL_ERROR "breathe-apidoc not found!"
                "Please install using: pip3 install breathe")
    endif()

    file(MAKE_DIRECTORY ${BREATHE_OUTPUT})
    add_custom_target(
        ${PROJECT_NAME}_breathe_apidoc ALL
        # Generate the .rst files from the doxygen xml output
	    ${BREATHE_APIDOC} -o ${BREATHE_OUTPUT} ${BREATHE_INPUT} ${BREATHE_OPTION} 
        WORKING_DIRECTORY ${SPHINX_DOC_BUILD_FOLDER}
        DEPENDS ${PROJECT_NAME}_doxygen
        COMMENT "Building breathe-apidoc for ${PROJECT_NAME}")

    set(SPHINX_BUILD_TARGET_DEPEND ${SPHINX_BUILD_TARGET_DEPEND}
        ${PROJECT_NAME}_breathe_apidoc)
endmacro(_BUILD_BREATHE_APIDOC)

##################
# SPHINX APIDOC #
##################

macro(_BUILD_SPHINX_API_DOC)

    # Find the sphinx-apidoc executable.
    find_program(SPHINX_APIDOC sphinx-apidoc)
    if(NOT SPHINX_APIDOC)
        message(FATAL_ERROR "sphinx-apidoc not found!"
                "Please install using: pip3 install sphinx")
    endif()

    # Create the output
    file(MAKE_DIRECTORY ${SPHINX_APIDOC_OUTPUT})
    add_custom_target(
        ${PROJECT_NAME}_sphinx_apidoc ALL
	    ${SPHINX_APIDOC} -o ${SPHINX_APIDOC_OUTPUT} ${SPHINX_APIDOC_INPUT}
        WORKING_DIRECTORY ${SPHINX_APIDOC_OUTPUT}
        COMMENT "Building sphinx-apidoc for ${PROJECT_NAME}")
    
    set(SPHINX_BUILD_TARGET_DEPEND ${SPHINX_BUILD_TARGET_DEPEND}
        ${PROJECT_NAME}_sphinx_apidoc)

endmacro(_BUILD_SPHINX_API_DOC)

################
# SPHINX BUILD #
################

macro(_BUILD_SPHINX_BUILD)
    # Find the sphinx-apidoc executable.
    find_program(SPHINX_BUILD sphinx-build)
    if(NOT SPHINX_BUILD)
        message(FATAL_ERROR "sphinx-apidoc not found!"
                "Please install using: pip3 install sphinx")
    endif()

    # Create the output
    file(MAKE_DIRECTORY ${SPHINX_DOC_BUILD_FOLDER})
    add_custom_target(
        ${PROJECT_NAME}_sphinx_html ALL
	    ${SPHINX_BUILD} -M html ${SPHINX_BUILD_INPUT} ${SPHINX_DOC_BUILD_FOLDER} ${SPHINX_OPTION}
        WORKING_DIRECTORY ${SPHINX_DOC_BUILD_FOLDER}
        DEPENDS ${SPHINX_BUILD_TARGET_DEPEND}
        COMMENT "Building sphinx-apidoc for ${PROJECT_NAME}")

endmacro(_BUILD_SPHINX_BUILD)


##########################
# building documentation #
##########################
macro(BUILD_SPHINX_DOCUMENTATION)

    set(BUILD_DOCUMENTATION OFF CACHE BOOL
        "Set to ON if you want to build the documentation")
    if(BUILD_DOCUMENTATION)
        
        # All parameters
        
        # Build and install directories
        set(SPHINX_DOC_BUILD_FOLDER   ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_SHARE_DESTINATION}/docs/sphinx)
        set(SPHINX_DOC_INSTALL_FOLDER ${CMAKE_INSTALL_PREFIX}/${CATKIN_PACKAGE_SHARE_DESTINATION}/docs/sphinx)
        # Doxygen
        set(DOXYGEN_DOXYFILE_IN ${MPI_CMAKE_MODULES_ROOT_DIR}/resources/sphinx/doxygen/Doxyfile.in)
        set(DOXYGEN_DOXYFILE    ${SPHINX_DOC_BUILD_FOLDER}/doxygen/Doxyfile)
        set(DOXYGEN_OUTPUT      ${SPHINX_DOC_BUILD_FOLDER}/doxygen)
        set(DOXYGEN_XML_OUTPUT  ${SPHINX_DOC_BUILD_FOLDER}/doxygen/xml)
        set(DOXYGEN_FILE_PATTERNS "*.h *.hpp *.hh *.cpp *.c *.cc *.hxx")
        # Breathe apidoc
        set(BREATHE_INPUT  ${SPHINX_DOC_BUILD_FOLDER}/doxygen/xml)
        set(BREATHE_OUTPUT ${SPHINX_DOC_BUILD_FOLDER}/breathe)
        set(BREATHE_OPTION -g union,namespace,class,group,struct,file,interface)
        # Sphinx apidoc
        set(SPHINX_APIDOC_INPUT  ${PROJECT_SOURCE_DIR}/python/${PROJECT_NAME})
        set(SPHINX_APIDOC_OUTPUT ${SPHINX_DOC_BUILD_FOLDER})
        # Shinx build
        set(SPHINX_BUILD_INPUT  ${SPHINX_DOC_BUILD_FOLDER})
        set(SPHINX_BUILD_OUTPUT ${SPHINX_BUILD_INPUT})
        set(SPHINX_BUILD_OPTION -Q) # quiet the sphinx output
        # Make sure the sphinx-build is not executed before the different API
        # are built.
        set(SPHINX_BUILD_TARGET_DEPEND "")

        # Parameterize the final layout

        # Build the C++ API rst files if needed
        set(CPP_API "")
        string(REPLACE " " ";" DOXYGEN_FILE_PATTERNS_LIST ${DOXYGEN_FILE_PATTERNS})
        set(CPP_FILES "")
        foreach(pattern ${DOXYGEN_FILE_PATTERNS_LIST})
            file(GLOB_RECURSE CPP_FILES_FOUND FOLLOW_SYMLINKS ${PROJECT_SOURCE_DIR}/${pattern})
            set(CPP_FILES ${CPP_FILES} ${CPP_FILES_FOUND})
        endforeach()
        if(NOT "${CPP_FILES}" STREQUAL "")

            # Add the C++ API to the main documentation
            set(CPP_API ".. toctree::\n   :maxdepth: 2\n   :caption: C++ API\n\n   doxygen_index\n\n")
            # Associated configuration files
            configure_file(
                ${MPI_CMAKE_MODULES_ROOT_DIR}/resources/sphinx/sphinx/doxygen_index_one_page.rst.in
                ${SPHINX_DOC_BUILD_FOLDER}/doxygen_index_one_page.rst @ONLY IMMEDIATE)
            configure_file(
                ${MPI_CMAKE_MODULES_ROOT_DIR}/resources/sphinx/sphinx/doxygen_index.rst.in
                ${SPHINX_DOC_BUILD_FOLDER}/doxygen_index.rst @ONLY IMMEDIATE)

            # Build the doxygen xml files.
            _build_doxygen()
            # Generate the .rst corresponding to the doxygen xml
            _build_breathe_apidoc()

        endif()
        # Build the Python API rst files if needed
        set(PYTHON_API "")
        if(IS_DIRECTORY ${PROJECT_SOURCE_DIR}/python)

            # Add the Python API to the main documentation
            set(PYTHON_API ".. toctree::\n   :maxdepth: 3\n   :caption: Python API\n\n   modules\n\n")
            # Generate the .rst corresponding to the python module(s)
            _build_sphinx_api_doc()

        endif()
        # Build the cmake API if needed
        set(CMAKE_API "")
        if(IS_DIRECTORY ${PROJECT_SOURCE_DIR}/cmake)
            
            # Add the cmake files to the main documentation
            set(CMAKE_API ".. toctree::\n   :maxdepth: 3\n   :caption: CMake API\n\n   cmake_doc\n\n")

            # Create the list of cmake files
            file(GLOB_RECURSE CMAKE_FILES_FOUND RELATIVE ${PROJECT_SOURCE_DIR} FOLLOW_SYMLINKS ${PROJECT_SOURCE_DIR}/cmake/*.cmake)
            set(DOC_CMAKE_MODULE "")
            foreach(cmake_file ${CMAKE_FILES_FOUND})
                set(DOC_CMAKE_MODULE "${DOC_CMAKE_MODULE}.. cmake-module:: ${cmake_file}\n")
            endforeach(cmake_file ${CMAKE_FILES_FOUND})
            
            # Add the cmake documentation to the main doc
            configure_file(
                ${MPI_CMAKE_MODULES_ROOT_DIR}/resources/sphinx/sphinx/cmake_doc.rst.in
                ${SPHINX_DOC_BUILD_FOLDER}/cmake_doc.rst @ONLY IMMEDIATE)
            # Create a symlink to the cmake folder
            add_custom_target(
                ${PROJECT_NAME}_cmake_symlink ALL
                ${CMAKE_COMMAND} -E create_symlink ${PROJECT_SOURCE_DIR}/cmake ${SPHINX_DOC_BUILD_FOLDER}/cmake
                WORKING_DIRECTORY ${SPHINX_DOC_BUILD_FOLDER}
                COMMENT "Add the doc folder to the sphinx build.")
            set(SPHINX_BUILD_TARGET_DEPEND ${SPHINX_BUILD_TARGET_DEPEND} ${PROJECT_NAME}_cmake_symlink)

        endif()
        # Build the general documentation if needed
        set(ADDITIONNAL_DOC_PATH "")
        if(IS_DIRECTORY ${PROJECT_SOURCE_DIR}/doc)
            
            # Add the general documentation to the main one if needed.
            set(ADDITIONNAL_DOC_PATH "doc/*")
            # Add the cmake files to the main documentation
            set(GENERAL_DOCUMENTATION ".. toctree::\n   :maxdepth: 2\n   :caption: General Documentation\n\n   general_documentation\n\n")
   
            # Create a symlink to the doc folder containing the Markdown files.
            add_custom_target(
                ${PROJECT_NAME}_doc_symlink ALL
                ${CMAKE_COMMAND} -E create_symlink ${PROJECT_SOURCE_DIR}/doc ${SPHINX_DOC_BUILD_FOLDER}/doc
                WORKING_DIRECTORY ${SPHINX_DOC_BUILD_FOLDER}
                COMMENT "Add the doc folder to the sphinx build.")
            set(SPHINX_BUILD_TARGET_DEPEND ${SPHINX_BUILD_TARGET_DEPEND} ${PROJECT_NAME}_doc_symlink)
        endif()

        # Generate the configuration files
        configure_file(
            ${MPI_CMAKE_MODULES_ROOT_DIR}/resources/sphinx/sphinx/conf.py.in
            ${SPHINX_DOC_BUILD_FOLDER}/conf.py @ONLY IMMEDIATE)
        configure_file(
            ${MPI_CMAKE_MODULES_ROOT_DIR}/resources/sphinx/sphinx/index.rst.in
            ${SPHINX_DOC_BUILD_FOLDER}/index.rst @ONLY IMMEDIATE)
        configure_file(
            ${MPI_CMAKE_MODULES_ROOT_DIR}/resources/sphinx/sphinx/general_documentation.rst.in
            ${SPHINX_DOC_BUILD_FOLDER}/general_documentation.rst @ONLY IMMEDIATE)
        configure_file(
            ${MPI_CMAKE_MODULES_ROOT_DIR}/resources/sphinx/custom_module/cmake.py.in
            ${SPHINX_DOC_BUILD_FOLDER}/cmake.py @ONLY IMMEDIATE)

        # Fetch the readme.md
        add_custom_target(
            ${PROJECT_NAME}_readme_symlink ALL
            ${CMAKE_COMMAND} -E create_symlink ${PROJECT_SOURCE_DIR}/readme.md ${SPHINX_DOC_BUILD_FOLDER}/readme.md
            WORKING_DIRECTORY ${SPHINX_DOC_BUILD_FOLDER}
            COMMENT "Add the readme.md folder to the sphinx build.")

        # We generate the final layout. Mardown files are looked for automatically.
        _build_sphinx_build()

        # Install the documentation
        install(DIRECTORY ${SPHINX_DOC_BUILD_FOLDER}/html DESTINATION
                ${SPHINX_DOC_INSTALL_FOLDER})

    endif()

endmacro(BUILD_SPHINX_DOCUMENTATION)
