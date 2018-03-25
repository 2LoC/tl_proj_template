# ----------------------------------
# auto-generated file, do not modify
# ----------------------------------

# -----------------------------------------------------------------------------

# This helper file allows you to include tl_common.cmake using the same function
# found inside tl_common.cmake. Note that this file may be updated automatically
# by tl_add_superbuild.cmake

# -----------------------------------------------------------------------------

find_package(tl_base_ci REQUIRED)
get_target_property(tl_base_ci_INCLUDE_DIRECTORIES tl_base_ci
  INTERFACE_INCLUDE_DIRECTORIES
  )

# -----------------------------------------------------------------------------
# same function found in tl_common.cmake

function(TLOC_INCLUDE_TEMP FILE PATHS)
  foreach(PATH ${PATHS})
    set(FULL_PATH ${PATH}${FILE})
    if (EXISTS ${FULL_PATH})
      include(${FULL_PATH})
      return()
    endif()
  endforeach()
  message(FATAL_ERROR "Could not find file ${FILE} to include in paths ${PATHS}")
endfunction()

TLOC_INCLUDE_TEMP("/tl_base_ci/tl_common.cmake" ${tl_base_ci_INCLUDE_DIRECTORIES})
TLOC_LOG_COMMON_VARIABLES()

# -----------------------------------------------------------------------------
