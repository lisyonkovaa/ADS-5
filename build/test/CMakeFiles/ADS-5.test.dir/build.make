# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /workspaces/ADS-5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/ADS-5/build

# Include any dependencies generated for this target.
include test/CMakeFiles/ADS-5.test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/ADS-5.test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/ADS-5.test.dir/flags.make

test/CMakeFiles/ADS-5.test.dir/AllTests.cpp.o: test/CMakeFiles/ADS-5.test.dir/flags.make
test/CMakeFiles/ADS-5.test.dir/AllTests.cpp.o: ../test/AllTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/ADS-5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/ADS-5.test.dir/AllTests.cpp.o"
	cd /workspaces/ADS-5/build/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ADS-5.test.dir/AllTests.cpp.o -c /workspaces/ADS-5/test/AllTests.cpp

test/CMakeFiles/ADS-5.test.dir/AllTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ADS-5.test.dir/AllTests.cpp.i"
	cd /workspaces/ADS-5/build/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/ADS-5/test/AllTests.cpp > CMakeFiles/ADS-5.test.dir/AllTests.cpp.i

test/CMakeFiles/ADS-5.test.dir/AllTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ADS-5.test.dir/AllTests.cpp.s"
	cd /workspaces/ADS-5/build/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/ADS-5/test/AllTests.cpp -o CMakeFiles/ADS-5.test.dir/AllTests.cpp.s

test/CMakeFiles/ADS-5.test.dir/tests.cpp.o: test/CMakeFiles/ADS-5.test.dir/flags.make
test/CMakeFiles/ADS-5.test.dir/tests.cpp.o: ../test/tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/ADS-5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/ADS-5.test.dir/tests.cpp.o"
	cd /workspaces/ADS-5/build/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ADS-5.test.dir/tests.cpp.o -c /workspaces/ADS-5/test/tests.cpp

test/CMakeFiles/ADS-5.test.dir/tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ADS-5.test.dir/tests.cpp.i"
	cd /workspaces/ADS-5/build/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/ADS-5/test/tests.cpp > CMakeFiles/ADS-5.test.dir/tests.cpp.i

test/CMakeFiles/ADS-5.test.dir/tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ADS-5.test.dir/tests.cpp.s"
	cd /workspaces/ADS-5/build/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/ADS-5/test/tests.cpp -o CMakeFiles/ADS-5.test.dir/tests.cpp.s

# Object files for target ADS-5.test
ADS__5_test_OBJECTS = \
"CMakeFiles/ADS-5.test.dir/AllTests.cpp.o" \
"CMakeFiles/ADS-5.test.dir/tests.cpp.o"

# External object files for target ADS-5.test
ADS__5_test_EXTERNAL_OBJECTS =

test/ADS-5.test: test/CMakeFiles/ADS-5.test.dir/AllTests.cpp.o
test/ADS-5.test: test/CMakeFiles/ADS-5.test.dir/tests.cpp.o
test/ADS-5.test: test/CMakeFiles/ADS-5.test.dir/build.make
test/ADS-5.test: src/libADS-5.so
test/ADS-5.test: test/CMakeFiles/ADS-5.test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/ADS-5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ADS-5.test"
	cd /workspaces/ADS-5/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ADS-5.test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/ADS-5.test.dir/build: test/ADS-5.test

.PHONY : test/CMakeFiles/ADS-5.test.dir/build

test/CMakeFiles/ADS-5.test.dir/clean:
	cd /workspaces/ADS-5/build/test && $(CMAKE_COMMAND) -P CMakeFiles/ADS-5.test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/ADS-5.test.dir/clean

test/CMakeFiles/ADS-5.test.dir/depend:
	cd /workspaces/ADS-5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/ADS-5 /workspaces/ADS-5/test /workspaces/ADS-5/build /workspaces/ADS-5/build/test /workspaces/ADS-5/build/test/CMakeFiles/ADS-5.test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/ADS-5.test.dir/depend

