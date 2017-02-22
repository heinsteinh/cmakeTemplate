cmake_minimum_required(VERSION 2.8.12)

project(EventChannel)


set(${PROJECT_NAME}_MAJOR 0)
set(${PROJECT_NAME}_MINOR 0)
set(${PROJECT_NAME}_PATCH 3)

set(${PROJECT_NAME}_VERSION "${${PROJECT_NAME}_MAJOR}.${${PROJECT_NAME}_MINOR}.${${PROJECT_NAME}_PATCH}")

SET(CMAKE_LEGACY_CYGWIN_WIN32 1)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

  
# Set GCC flags to some sensible defaults
set(CMAKE_CXX_FLAGS "-std=c++11 -Wall -O")
  
  
add_subdirectory(EventChannel-lib)
add_subdirectory(EventChannel-bin)
