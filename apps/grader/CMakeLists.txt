file(GLOB SRC_FILES "*.cpp")
add_executable(grader ${SRC_FILES})
target_link_libraries(grader class_system wrappers ${IO_LIB} ${Boost_LIBRARIES} ${Protobuf_LIBRARIES})