cmake_minimum_required(VERSION 3.1)

include(ExternalProject)
find_package(tl_base_ci QUIET)

if(NOT tl_base_ci_FOUND)
  message(STATUS "tl_base_ci NOT FOUND. Source will be downloaded.")

  ExternalProject_Add(tl_base_ci_b
    GIT_REPOSITORY "https://github.com/2LoC/tl_base_ci"
    GIT_TAG "master"

    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX} -DTLOC_DEP_SOURCE_DIR=${TLOC_DEP_SOURCE_DIR}
  )
else()
  message(STATUS "tl_base_ci FOUND: ${tl_base_ci_DIR}")
  get_target_property(tl_base_ci_INCLUDE_DIRECTORIES tl_base_ci
    INTERFACE_INCLUDE_DIRECTORIES
    )
  message(STATUS "Source Dir: ${tl_base_ci_SOURCE_DIR}")

  ExternalProject_Add(tl_base_ci_b
    BINARY_DIR "${tl_base_ci_DIR}"
    CONFIGURE_COMMAND ""
    DOWNLOAD_COMMAND ""
    INSTALL_DIR ${TLOC_INSTALL_PREFIX}
    CMAKE_ARGS -DTLOC_INSTALL_PREFIX=${TLOC_INSTALL_PREFIX} -DTLOC_DEP_SOURCE_DIR=${TLOC_DEP_SOURCE_DIR}
  )
endif()

ExternalProject_Add(tl_proj_template_b
  SOURCE_DIR "${CMAKE_SOURCE_DIR}/include/"

  INSTALL_COMMAND ""
  INSTALL_DIR ${TLOC_INSTALL_PREFIX}
  CMAKE_ARGS -DTLOC_INSTALL_PREFIX=${TLOC_INSTALL_PREFIX} -DTLOC_DEP_SOURCE_DIR=${TLOC_DEP_SOURCE_DIR}
  )

add_dependencies(tl_proj_template_b tl_base_ci_b)


#option(USE_SUPERBUILD "Turn superbuild on/off" ON)
#
#if(USE_SUPERBUILD)
#  project(SUPERBUILD NONE)
#  include("cmake/superbuild.cmake")
#  return()
#else()
#  project(${PROJ_NAME})
#endif()
#
#add_subdirectory("include/${PROJ_NAME}/")
