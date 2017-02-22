cmake_minimum_required(VERSION 2.8.12)

#project(${PROJECT_NAME}Application)

include(../cmake/CMakeInclude.txt)

if(NOT TARGET ${PROJECT_NAME}_lib)
	find_package(${PROJECT_NAME}_lib CONFIG REQUIRED)
	message("## Found Package: ${PROJECT_NAME}_lib")
endif()


# Add all the source files to the SOURCES variable.
file(GLOB_RECURSE SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")

# Add all the header files to the HEADERS variable.
file(GLOB_RECURSE HEADERS "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h")



#	make source hiearchy
source_group("Header Files" FILES ${HEADERS})
source_group("Source Files" FILES ${SOURCES})


# Set the compiled file to the TARGET variable.
set(TARGET "${PROJECT_NAME}_bin")

add_executable(${TARGET} ${SOURCES} ${HEADERS})

target_link_libraries(${TARGET} ${PROJECT_NAME}_lib)

target_include_directories(${TARGET} PUBLIC
	$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src>
	$<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}>
)
