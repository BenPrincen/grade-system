get_filename_component(TEST_DATA_DIR "./test_data" ABSOLUTE)
add_definitions(-DTEST_DATA_DIR="${TEST_DATA_DIR}")

add_subdirectory(class_system)