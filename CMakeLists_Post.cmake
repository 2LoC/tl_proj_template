# -----------------------------------------------------------------------------
# user editable file that is added AFTER superbuild is completed. This file
# can be used to add additional dependencies

TLOC_INCLUDE("tl_base_ci/projects/tl_add_catch.cmake" ${tl_base_ci_INCLUDE_DIRECTORIES})

tl_add_catch()
add_dependencies(${PROJ_NAME}_EXT Catch_EXT)
