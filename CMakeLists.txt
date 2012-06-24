cmake_minimum_required(VERSION 2.6)
project(PointPlay)

# g++/gcc flags
set(CMAKE_C_FLAGS "-g -Wall")
set(CMAKE_CXX_FLAGS "-std=c++0x -g -Wall")

# define cmake vars and locations
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)

# define include locations
set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH}:${CMAKE_SOURCE_DIR}/lib)
include_directories(${CMAKE_BINARY_DIR}/src)
include_directories(${CMAKE_SOURCE_DIR}/src)

# dependencies
find_package(OpenGL REQUIRED)
find_package(Qt4 REQUIRED)
set(QT_USE_QTOPENGL TRUE)
include(${QT_USE_FILE})

# set all dependencies
set(DEP_LIBS ${DEP_LIBS} ${OPENGL_LIBRARIES} ${QT_LIBRARIES})

# provide source
add_subdirectory(src)
