include("${tl_base_ci_INCLUDE_DIRECTORIES}/tl_base_ci/tl_add_library.cmake")

tl_add_library(
  LIB_NAME "tl_proj_template"
  PUBLIC_HEADER_FILES "tloc.h"
  SOURCE_FILES "tloc.cpp"
  )
