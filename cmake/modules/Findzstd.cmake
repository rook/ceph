# Find the native zstd includes and library
# This module defines
#  ZSTD_INCLUDE_DIR, where to find libzstd.h, Set when
#                    ZSTD_INCLUDE_DIR is found.
#  ZSTD_LIBRARIES, libraries to link against to use zstd.
#  ZSTD_FOUND, If false, do not try to use zstd.

find_path(ZSTD_INCLUDE_DIR zstd.h)

find_library(ZSTD_LIBRARIES zstd)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(zstd DEFAULT_MSG ZSTD_LIBRARIES ZSTD_INCLUDE_DIR)

mark_as_advanced(ZSTD_INCLUDE_DIR ZSTD_LIBRARIES)
