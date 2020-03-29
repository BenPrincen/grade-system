# Each .cpp file is a separate set of tests
file(GLOB TEST_SRC_FILES "*.cpp")

# from list of files we'll create tests test_name.cpp -> test_name
foreach(_test_file ${TEST_SRC_FILES})
    get_filename_component(_test_name ${_test_file} NAME_WE)
    add_executable(${_test_name} ${_test_file})
    target_link_libraries(${_test_name} gtest gtest_main ${CMAKE_THREAD_LIBS_INIT} class_system wrappers ${IO_LIB} ${Boost_LIBRARIES} ${Protobuf_LIBRARIES})
    add_test(${_test_name} ${_test_name})
    set_tests_properties(${_test_name} PROPERTIES TIMEOUT 5)
endforeach()