file(GLOB SRC_FILES "*.cpp")
add_executable(data_creation ${SRC_FILES})
target_link_libraries(data_creation class_system ${IO_LIB} ${Boost_LIBRARIES} ${Protobuf_LIBRARIES})
