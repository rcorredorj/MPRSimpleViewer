cmake_minimum_required(VERSION 3.0.1)

#=========================================================
#RT Dose Planning Project
project(MPRViewer)
#=========================================================

#=========================================================
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/common.cmake)
include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/dependencies.cmake)
#=========================================================

#=========================================================
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/src ${CMAKE_CURRENT_BINARY_DIR}/src)

OPTION( BUILD_TESTING OFF)
# Build test
if(BUILD_TESTING)
  add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/tests ${CMAKE_CURRENT_BINARY_DIR}/tests)
endif(BUILD_TESTING)
#=========================================================
