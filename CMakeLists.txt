cmake_minimum_required(VERSION 3.1.0)
set(PROJECT_NAME_STR tests)
project(${PROJECT_NAME_STR} C CXX CUDA)

SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/Modules)

find_package(Threads REQUIRED)

include(FindProtobuf)
find_package(Protobuf REQUIRED)
if(Protobuf_FOUND)
	INCLUDE_DIRECTORIES(${Protobuf_INCLUDE_DIRS})
	LINK_DIRECTORIES(${Protobuf_INCLUDE_DIRS})
endif()

find_package(CUDA REQUIRED)
if(CUDA_FOUND)
	include_directories(${CUDA_INCLUDE_DIRS})
endif()

FIND_PACKAGE(Boost REQUIRED COMPONENTS filesystem iostreams program_options system serialization)
if(Boost_FOUND)
	INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIRS})
	ADD_DEFINITIONS(${Boost_DEFINITIONS})
	LINK_DIRECTORIES(${Boost_LIBRARY_DIRS})
endif()

FIND_PACKAGE(OpenMP REQUIRED)
if(OPENMP_FOUND)
	SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
else()
	message("ERROR - Can't find OpenMP")
endif()

find_package(Ceres QUIET HINTS ${CERES_DIR_HINTS})
if(Ceres_FOUND)
	INCLUDE_DIRECTORIES(${Ceres_INCLUDE_DIRS})
	ADD_DEFINITIONS(${Ceres_DEFINITIONS})
	LINK_DIRECTORIES(${Ceres_LIBRARY_DIRS})
endif()

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -ansi -Wno-deprecated")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -ansi -Wno-deprecated")

enable_testing()

add_subdirectory(libs)
add_subdirectory(apps)
add_subdirectory(tests)