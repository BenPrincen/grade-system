# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/benjamin/Projects/grading_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/benjamin/Projects/grading_project/build

# Include any dependencies generated for this target.
include tests/class_system/CMakeFiles/test_system.dir/depend.make

# Include the progress variables for this target.
include tests/class_system/CMakeFiles/test_system.dir/progress.make

# Include the compile flags for this target's objects.
include tests/class_system/CMakeFiles/test_system.dir/flags.make

tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o: tests/class_system/CMakeFiles/test_system.dir/flags.make
tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o: ../tests/class_system/test_system.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benjamin/Projects/grading_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o"
	cd /home/benjamin/Projects/grading_project/build/tests/class_system && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_system.dir/test_system.cpp.o -c /home/benjamin/Projects/grading_project/tests/class_system/test_system.cpp

tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_system.dir/test_system.cpp.i"
	cd /home/benjamin/Projects/grading_project/build/tests/class_system && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/benjamin/Projects/grading_project/tests/class_system/test_system.cpp > CMakeFiles/test_system.dir/test_system.cpp.i

tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_system.dir/test_system.cpp.s"
	cd /home/benjamin/Projects/grading_project/build/tests/class_system && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/benjamin/Projects/grading_project/tests/class_system/test_system.cpp -o CMakeFiles/test_system.dir/test_system.cpp.s

tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o.requires:

.PHONY : tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o.requires

tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o.provides: tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o.requires
	$(MAKE) -f tests/class_system/CMakeFiles/test_system.dir/build.make tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o.provides.build
.PHONY : tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o.provides

tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o.provides.build: tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o


# Object files for target test_system
test_system_OBJECTS = \
"CMakeFiles/test_system.dir/test_system.cpp.o"

# External object files for target test_system
test_system_EXTERNAL_OBJECTS =

tests/class_system/test_system: tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o
tests/class_system/test_system: tests/class_system/CMakeFiles/test_system.dir/build.make
tests/class_system/test_system: libs/class_system/libclass_system.a
tests/class_system/test_system: libs/wrappers/libwrappers.a
tests/class_system/test_system: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/class_system/test_system: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
tests/class_system/test_system: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
tests/class_system/test_system: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/class_system/test_system: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
tests/class_system/test_system: /usr/lib/x86_64-linux-gnu/libboost_regex.so
tests/class_system/test_system: /usr/local/lib/libprotobuf.so
tests/class_system/test_system: libs/class_system/libclass_system.a
tests/class_system/test_system: tests/class_system/CMakeFiles/test_system.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/benjamin/Projects/grading_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_system"
	cd /home/benjamin/Projects/grading_project/build/tests/class_system && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_system.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/class_system/CMakeFiles/test_system.dir/build: tests/class_system/test_system

.PHONY : tests/class_system/CMakeFiles/test_system.dir/build

tests/class_system/CMakeFiles/test_system.dir/requires: tests/class_system/CMakeFiles/test_system.dir/test_system.cpp.o.requires

.PHONY : tests/class_system/CMakeFiles/test_system.dir/requires

tests/class_system/CMakeFiles/test_system.dir/clean:
	cd /home/benjamin/Projects/grading_project/build/tests/class_system && $(CMAKE_COMMAND) -P CMakeFiles/test_system.dir/cmake_clean.cmake
.PHONY : tests/class_system/CMakeFiles/test_system.dir/clean

tests/class_system/CMakeFiles/test_system.dir/depend:
	cd /home/benjamin/Projects/grading_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benjamin/Projects/grading_project /home/benjamin/Projects/grading_project/tests/class_system /home/benjamin/Projects/grading_project/build /home/benjamin/Projects/grading_project/build/tests/class_system /home/benjamin/Projects/grading_project/build/tests/class_system/CMakeFiles/test_system.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/class_system/CMakeFiles/test_system.dir/depend

