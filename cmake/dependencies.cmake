#=========================================================
# Find ITK (required)
# find_package(ITK)
# if(ITK_FOUND)
  # include("${ITK_USE_FILE}")
# else(ITK_FOUND)
  # message(FATAL_ERROR "Cannot build without ITK.  Please set ITK_DIR.")
# endif(ITK_FOUND)
#=========================================================

#=========================================================
# Find VTK (required)
find_package(VTK REQUIRED)
if(VTK_FOUND)
  include(${VTK_USE_FILE})
  message(STATUS "----------------")
  message(STATUS "VTK Libraries:\n" ${VTK_LIBRARIES})
  message(STATUS "----------------")
else(VTK_FOUND)
  message(FATAL_ERROR "Please set VTK_DIR.")
endif(VTK_FOUND)

if("${VTK_QT_VERSION}" STREQUAL "")
  message(FATAL_ERROR "VTK was not built with Qt")
endif()
#=========================================================

#=========================================================

if(VTK_QT_VERSION VERSION_GREATER "4")
  find_package(Qt5Widgets REQUIRED)
else()
  message(FATAL_ERROR "Compilation must be made with Qt 5.2.1")
endif()
#=========================================================
