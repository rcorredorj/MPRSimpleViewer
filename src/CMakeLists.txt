#=========================================================
# Set your files and resources here
set( MPRViewer_CXX_FILES 
		QtVTKRenderWindowsApp.cxx 
		QtVTKRenderWindows.cxx
		)
set( MPRViewer_HEADER_FILES 
		QtVTKRenderWindows.h 
		)
		
set( MPRViewer_MOC_HEADER_FILES 
		QtVTKRenderWindows.h 
		)

set( MPRViewer_UI_FILES 
		QtVTKRenderWindows.ui 	
		)
#=========================================================

#=========================================================		
include_directories(
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/data
)
#=========================================================

#=========================================================
# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)
qt5_add_resources(MPRViewer_RESOURCES MPRViewerIcons.qrc)
qt5_wrap_ui(MPRViewer_UI_SOURCE_FILES ${MPRViewer_UI_FILES})
# CMAKE_AUTOMOC in ON so the MPRViewer_MOC_HEADER_FILES will be automatically wrapped.
add_executable(MPRViewer ${MPRViewer_CXX_FILES} ${MPRViewer_HEADER_FILES} ${MPRViewer_UI_SOURCE_FILES} ${MPRViewer_MOC_HEADER_FILES} ${MPRViewer_RESOURCES})
qt5_use_modules(MPRViewer Core Gui Widgets)
target_link_libraries(MPRViewer ${VTK_LIBRARIES})
#=========================================================