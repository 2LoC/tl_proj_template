# -----------------------------------------------------------------------------

cmake_minimum_required(VERSION 3.1)

# -----------------------------------------------------------------------------

find_package(tl_base_ci REQUIRED)
get_target_property(tl_base_ci_INCLUDE_DIRECTORIES tl_base_ci
  INTERFACE_INCLUDE_DIRECTORIES
  )

# -----------------------------------------------------------------------------

include("${tl_base_ci_INCLUDE_DIRECTORIES}/tl_base_ci/tl_common.cmake")
include("${tl_base_ci_INCLUDE_DIRECTORIES}/tl_base_ci/tl_add_ycm_config.cmake")
include("${tl_base_ci_INCLUDE_DIRECTORIES}/tl_base_ci/tl_add_travis.cmake")

# -----------------------------------------------------------------------------

set(TRAVIS_SCRIPT
"\
  - mkdir build
  - cd build
  - cmake -DCMAKE_CXX_COMPILER=$COMPILER -DCMAKE_INSTALL_PREFIX=../install -TLOC_DETAILED_LOGS=ON ../
  - make install
"
)

tl_add_travis(
  DESTINATION "${CMAKE_SOURCE_DIR}/../"
  SCRIPT ${TRAVIS_SCRIPT}
  OVERWRITE
  )

# -----------------------------------------------------------------------------

set(PROJ_NAME tl_proj_template)
project(${PROJ_NAME})

add_subdirectory(tl_proj_template)
