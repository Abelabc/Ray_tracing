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
CMAKE_SOURCE_DIR = /mnt/f/Ray_tracing/cpp1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/f/Ray_tracing/cpp1/build3

# Include any dependencies generated for this target.
include CMakeFiles/cpp1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpp1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpp1.dir/flags.make

CMakeFiles/cpp1.dir/main.cpp.o: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/f/Ray_tracing/cpp1/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpp1.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp1.dir/main.cpp.o -c /mnt/f/Ray_tracing/cpp1/main.cpp

CMakeFiles/cpp1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/f/Ray_tracing/cpp1/main.cpp > CMakeFiles/cpp1.dir/main.cpp.i

CMakeFiles/cpp1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/f/Ray_tracing/cpp1/main.cpp -o CMakeFiles/cpp1.dir/main.cpp.s

# Object files for target cpp1
cpp1_OBJECTS = \
"CMakeFiles/cpp1.dir/main.cpp.o"

# External object files for target cpp1
cpp1_EXTERNAL_OBJECTS =

cpp1: CMakeFiles/cpp1.dir/main.cpp.o
cpp1: CMakeFiles/cpp1.dir/build.make
cpp1: CMakeFiles/cpp1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/f/Ray_tracing/cpp1/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpp1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpp1.dir/build: cpp1

.PHONY : CMakeFiles/cpp1.dir/build

CMakeFiles/cpp1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpp1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpp1.dir/clean

CMakeFiles/cpp1.dir/depend:
	cd /mnt/f/Ray_tracing/cpp1/build3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/f/Ray_tracing/cpp1 /mnt/f/Ray_tracing/cpp1 /mnt/f/Ray_tracing/cpp1/build3 /mnt/f/Ray_tracing/cpp1/build3 /mnt/f/Ray_tracing/cpp1/build3/CMakeFiles/cpp1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpp1.dir/depend

