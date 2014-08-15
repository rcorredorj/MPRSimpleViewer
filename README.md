MPRSimpleViewer
===============
@rcorredorj

Simple MPR medical imaging viewer using VTK 6.0.1 and Qt 5.2.1
Inspired on the FourPaneViewer VTK Example (http://bit.ly/1qcGx98)

Environment Settings
==============
  - Windows 7 (x64)
  - CMake 3.0.1
  - VTK 6.1.0
  - Qt 5.2.1 MSVC2012 x64 OPENGL
  - Visual Studio Express 2012 x64

Walkthrough from scratch
==============

  1. Download and install CMake. It's better to add [CMAKE_PATH]/bin to the system PATH
  2. Download and install VStudio
  3. Download and install all the Windows Updates for VStudio and .NET
  4. Download and install Windows SDK (http://www.microsoft.com/en-us/download/details.aspx?id=8279)
  5. Download and install Qt (http://download.qt-project.org/official_releases/qt/5.2/5.2.1/qt-opensource-windows-x86-msvc2012_64_opengl-5.2.1.exe)
  6. Add [Qt_PATH]\5.2.1\msvc2012_64_opengl\bin to the system PATH. Usually I add a variable name PATH (if it doesn't exist already) in the user variables (the list on the top). Add a new variable QTDIR to the Qt root folder.
  7. Download VTK
  8. Edit the CMakeLists.txt on the VTK root folder. Add the following line after initialising the project name: 
    set (CMAKE_PREFIX_PATH "C:\\Program Files (x86)\\Windows Kits\\8.0\\Lib\\win8\\um\\x64")
  This corrects an error to find GLUT and OpenGL libraries from the Windows SDK
  9. Launch CMake for the VTK project and activate options 
    - VTK_GROUP_IMAGING
    - VTK_GROUP_QT
  
  After this, open advanced CMake settings and set 
    - VTK_QT_VERSION 5
    - QT_QMAKE_EXECUTABLE [PATH_TO_QT]\bin\qmake.exe
  
  It is useful to set also 
    - CMAKE_INSTALL_PREFIX to a specific folder. Normally I use the following hierarchie
      - VTK_SRC  // Sources
      - VTK_BIN  // To generate the project
      - VTK_INST // For the installing process
  
  Some problems with the path to Qt modules could appear but it is only to set the correct cmake folder path for each module and it will work.
  10. Open the VS solution (.sln) and compile in Debug or Release as you prefer, but remember that you will need to compile your project in the same way. Better to "build" the INSTALL target
  11. Add VTK bin folder to system PATH
  12. Everything should work now !! First suggestion: try to compile and to run one of the VTK QT examples in the Wiki (like this one: http://www.vtk.org/Wiki/VTK/Examples/Cxx/Qt/RenderWindowUISingleInheritance)
  
Try the viewer
==============
  - Clone the project, compile and run.
