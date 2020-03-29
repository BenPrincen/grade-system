file(GLOB src_files "*.cpp")
add_library(wrappers STATIC ${src_files})
target_link_libraries(wrappers class_system ${IO_LIB} ${Boost_LIBRARIES} ${Protobuf_LIBRARIES})