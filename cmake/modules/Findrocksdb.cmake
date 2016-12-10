# Find the native Rocksdb includes and library
# This module defines
#  ROCKSDB_INCLUDE_DIRS, where to find Rocksdb.h, Set when
#                        ROCKSDB_INCLUDE_DIR is found.
#  ROCKSDB_LIBRARIES, libraries to link against to use Rocksdb.
#  ROCKSDB_FOUND, If false, do not try to use Rocksdb.

find_path(ROCKSDB_INCLUDE_DIR rocksdb/db.h)

find_library(ROCKSDB_LIBRARIES rocksdb)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Rocksdb DEFAULT_MSG
  ROCKSDB_LIBRARIES ROCKSDB_INCLUDE_DIR)

mark_as_advanced(
  ROCKSDB_INCLUDE_DIR
  ROCKSDB_LIBRARIES)
