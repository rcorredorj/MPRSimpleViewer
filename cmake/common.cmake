
#=========================================================
#Set a reasonable build mode default if the user hasn't set any
if (NOT CMAKE_BUILD_TYPE)
  #set(CMAKE_BUILD_TYPE Release)
  set(CMAKE_BUILD_TYPE Debug)
endif (NOT CMAKE_BUILD_TYPE)

#=========================================================
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_BINARY_DIR}/lib)
link_directories(${CMAKE_CURRENT_BINARY_DIR}/lib)
#=========================================================

#=========================================================
set (CMAKE_PREFIX_PATH "C:\\Program Files (x86)\\Windows Kits\\8.0\\Lib\\win8\\um\\x64")
#=========================================================