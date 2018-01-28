find_package(tl_base_ci REQUIRED)
get_target_property(tl_base_ci_INCLUDE_DIRECTORIES tl_base_ci
  INTERFACE_INCLUDE_DIRECTORIES
  )

include("${tl_base_ci_INCLUDE_DIRECTORIES}/tl_base_ci/tl_common.cmake")
include("${tl_base_ci_INCLUDE_DIRECTORIES}/tl_base_ci/tl_add_ycm_config.cmake")
include("${tl_base_ci_INCLUDE_DIRECTORIES}/tl_base_ci/tl_add_library.cmake")

tl_add_library(
  LIB_NAME "temp_proj"
  PUBLIC_HEADER_FILES "temp.h"
  SOURCE_FILES "temp.cpp"
  )
