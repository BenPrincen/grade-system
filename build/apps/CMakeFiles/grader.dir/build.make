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
include apps/CMakeFiles/grader.dir/depend.make

# Include the progress variables for this target.
include apps/CMakeFiles/grader.dir/progress.make

# Include the compile flags for this target's objects.
include apps/CMakeFiles/grader.dir/flags.make

apps/CMakeFiles/grader.dir/main.cpp.o: apps/CMakeFiles/grader.dir/flags.make
apps/CMakeFiles/grader.dir/main.cpp.o: ../apps/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benjamin/Projects/grading_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/CMakeFiles/grader.dir/main.cpp.o"
	cd /home/benjamin/Projects/grading_project/build/apps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/grader.dir/main.cpp.o -c /home/benjamin/Projects/grading_project/apps/main.cpp

apps/CMakeFiles/grader.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grader.dir/main.cpp.i"
	cd /home/benjamin/Projects/grading_project/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/benjamin/Projects/grading_project/apps/main.cpp > CMakeFiles/grader.dir/main.cpp.i

apps/CMakeFiles/grader.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grader.dir/main.cpp.s"
	cd /home/benjamin/Projects/grading_project/build/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/benjamin/Projects/grading_project/apps/main.cpp -o CMakeFiles/grader.dir/main.cpp.s

apps/CMakeFiles/grader.dir/main.cpp.o.requires:

.PHONY : apps/CMakeFiles/grader.dir/main.cpp.o.requires

apps/CMakeFiles/grader.dir/main.cpp.o.provides: apps/CMakeFiles/grader.dir/main.cpp.o.requires
	$(MAKE) -f apps/CMakeFiles/grader.dir/build.make apps/CMakeFiles/grader.dir/main.cpp.o.provides.build
.PHONY : apps/CMakeFiles/grader.dir/main.cpp.o.provides

apps/CMakeFiles/grader.dir/main.cpp.o.provides.build: apps/CMakeFiles/grader.dir/main.cpp.o


# Object files for target grader
grader_OBJECTS = \
"CMakeFiles/grader.dir/main.cpp.o"

# External object files for target grader
grader_EXTERNAL_OBJECTS =

apps/grader: apps/CMakeFiles/grader.dir/main.cpp.o
apps/grader: apps/CMakeFiles/grader.dir/build.make
apps/grader: libs/class_system/libclass_system.a
apps/grader: libs/wrappers/libwrappers.a
apps/grader: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
apps/grader: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
apps/grader: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
apps/grader: /usr/lib/x86_64-linux-gnu/libboost_system.so
apps/grader: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
apps/grader: /usr/lib/x86_64-linux-gnu/libboost_regex.so
apps/grader: /usr/local/lib/libprotobuf.so
apps/grader: libs/class_system/libclass_system.a
apps/grader: apps/CMakeFiles/grader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/benjamin/Projects/grading_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable grader"
	cd /home/benjamin/Projects/grading_project/build/apps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/grader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/CMakeFiles/grader.dir/build: apps/grader

.PHONY : apps/CMakeFiles/grader.dir/build

apps/CMakeFiles/grader.dir/requires: apps/CMakeFiles/grader.dir/main.cpp.o.requires

.PHONY : apps/CMakeFiles/grader.dir/requires

apps/CMakeFiles/grader.dir/clean:
	cd /home/benjamin/Projects/grading_project/build/apps && $(CMAKE_COMMAND) -P CMakeFiles/grader.dir/cmake_clean.cmake
.PHONY : apps/CMakeFiles/grader.dir/clean

apps/CMakeFiles/grader.dir/depend:
	cd /home/benjamin/Projects/grading_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benjamin/Projects/grading_project /home/benjamin/Projects/grading_project/apps /home/benjamin/Projects/grading_project/build /home/benjamin/Projects/grading_project/build/apps /home/benjamin/Projects/grading_project/build/apps/CMakeFiles/grader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/CMakeFiles/grader.dir/depend

