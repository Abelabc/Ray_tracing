# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2023.2.2\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2023.2.2\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\Ray_tracing\Ray_tracing\cpp1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cpp1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cpp1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cpp1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpp1.dir/flags.make

CMakeFiles/cpp1.dir/box.cpp.obj: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/box.cpp.obj: F:/Ray_tracing/Ray_tracing/cpp1/box.cpp
CMakeFiles/cpp1.dir/box.cpp.obj: CMakeFiles/cpp1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpp1.dir/box.cpp.obj"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp1.dir/box.cpp.obj -MF CMakeFiles\cpp1.dir\box.cpp.obj.d -o CMakeFiles\cpp1.dir\box.cpp.obj -c F:\Ray_tracing\Ray_tracing\cpp1\box.cpp

CMakeFiles/cpp1.dir/box.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/box.cpp.i"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Ray_tracing\Ray_tracing\cpp1\box.cpp > CMakeFiles\cpp1.dir\box.cpp.i

CMakeFiles/cpp1.dir/box.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/box.cpp.s"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Ray_tracing\Ray_tracing\cpp1\box.cpp -o CMakeFiles\cpp1.dir\box.cpp.s

CMakeFiles/cpp1.dir/bvh.cpp.obj: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/bvh.cpp.obj: F:/Ray_tracing/Ray_tracing/cpp1/bvh.cpp
CMakeFiles/cpp1.dir/bvh.cpp.obj: CMakeFiles/cpp1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cpp1.dir/bvh.cpp.obj"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp1.dir/bvh.cpp.obj -MF CMakeFiles\cpp1.dir\bvh.cpp.obj.d -o CMakeFiles\cpp1.dir\bvh.cpp.obj -c F:\Ray_tracing\Ray_tracing\cpp1\bvh.cpp

CMakeFiles/cpp1.dir/bvh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/bvh.cpp.i"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Ray_tracing\Ray_tracing\cpp1\bvh.cpp > CMakeFiles\cpp1.dir\bvh.cpp.i

CMakeFiles/cpp1.dir/bvh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/bvh.cpp.s"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Ray_tracing\Ray_tracing\cpp1\bvh.cpp -o CMakeFiles\cpp1.dir\bvh.cpp.s

CMakeFiles/cpp1.dir/hittable.cpp.obj: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/hittable.cpp.obj: F:/Ray_tracing/Ray_tracing/cpp1/hittable.cpp
CMakeFiles/cpp1.dir/hittable.cpp.obj: CMakeFiles/cpp1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cpp1.dir/hittable.cpp.obj"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp1.dir/hittable.cpp.obj -MF CMakeFiles\cpp1.dir\hittable.cpp.obj.d -o CMakeFiles\cpp1.dir\hittable.cpp.obj -c F:\Ray_tracing\Ray_tracing\cpp1\hittable.cpp

CMakeFiles/cpp1.dir/hittable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/hittable.cpp.i"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Ray_tracing\Ray_tracing\cpp1\hittable.cpp > CMakeFiles\cpp1.dir\hittable.cpp.i

CMakeFiles/cpp1.dir/hittable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/hittable.cpp.s"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Ray_tracing\Ray_tracing\cpp1\hittable.cpp -o CMakeFiles\cpp1.dir\hittable.cpp.s

CMakeFiles/cpp1.dir/hittable_list.cpp.obj: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/hittable_list.cpp.obj: F:/Ray_tracing/Ray_tracing/cpp1/hittable_list.cpp
CMakeFiles/cpp1.dir/hittable_list.cpp.obj: CMakeFiles/cpp1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cpp1.dir/hittable_list.cpp.obj"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp1.dir/hittable_list.cpp.obj -MF CMakeFiles\cpp1.dir\hittable_list.cpp.obj.d -o CMakeFiles\cpp1.dir\hittable_list.cpp.obj -c F:\Ray_tracing\Ray_tracing\cpp1\hittable_list.cpp

CMakeFiles/cpp1.dir/hittable_list.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/hittable_list.cpp.i"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Ray_tracing\Ray_tracing\cpp1\hittable_list.cpp > CMakeFiles\cpp1.dir\hittable_list.cpp.i

CMakeFiles/cpp1.dir/hittable_list.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/hittable_list.cpp.s"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Ray_tracing\Ray_tracing\cpp1\hittable_list.cpp -o CMakeFiles\cpp1.dir\hittable_list.cpp.s

CMakeFiles/cpp1.dir/main.cpp.obj: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/main.cpp.obj: F:/Ray_tracing/Ray_tracing/cpp1/main.cpp
CMakeFiles/cpp1.dir/main.cpp.obj: CMakeFiles/cpp1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/cpp1.dir/main.cpp.obj"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp1.dir/main.cpp.obj -MF CMakeFiles\cpp1.dir\main.cpp.obj.d -o CMakeFiles\cpp1.dir\main.cpp.obj -c F:\Ray_tracing\Ray_tracing\cpp1\main.cpp

CMakeFiles/cpp1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/main.cpp.i"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Ray_tracing\Ray_tracing\cpp1\main.cpp > CMakeFiles\cpp1.dir\main.cpp.i

CMakeFiles/cpp1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/main.cpp.s"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Ray_tracing\Ray_tracing\cpp1\main.cpp -o CMakeFiles\cpp1.dir\main.cpp.s

CMakeFiles/cpp1.dir/moving_sphere.cpp.obj: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/moving_sphere.cpp.obj: F:/Ray_tracing/Ray_tracing/cpp1/moving_sphere.cpp
CMakeFiles/cpp1.dir/moving_sphere.cpp.obj: CMakeFiles/cpp1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/cpp1.dir/moving_sphere.cpp.obj"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp1.dir/moving_sphere.cpp.obj -MF CMakeFiles\cpp1.dir\moving_sphere.cpp.obj.d -o CMakeFiles\cpp1.dir\moving_sphere.cpp.obj -c F:\Ray_tracing\Ray_tracing\cpp1\moving_sphere.cpp

CMakeFiles/cpp1.dir/moving_sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/moving_sphere.cpp.i"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Ray_tracing\Ray_tracing\cpp1\moving_sphere.cpp > CMakeFiles\cpp1.dir\moving_sphere.cpp.i

CMakeFiles/cpp1.dir/moving_sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/moving_sphere.cpp.s"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Ray_tracing\Ray_tracing\cpp1\moving_sphere.cpp -o CMakeFiles\cpp1.dir\moving_sphere.cpp.s

CMakeFiles/cpp1.dir/perlin.cpp.obj: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/perlin.cpp.obj: F:/Ray_tracing/Ray_tracing/cpp1/perlin.cpp
CMakeFiles/cpp1.dir/perlin.cpp.obj: CMakeFiles/cpp1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/cpp1.dir/perlin.cpp.obj"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp1.dir/perlin.cpp.obj -MF CMakeFiles\cpp1.dir\perlin.cpp.obj.d -o CMakeFiles\cpp1.dir\perlin.cpp.obj -c F:\Ray_tracing\Ray_tracing\cpp1\perlin.cpp

CMakeFiles/cpp1.dir/perlin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/perlin.cpp.i"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Ray_tracing\Ray_tracing\cpp1\perlin.cpp > CMakeFiles\cpp1.dir\perlin.cpp.i

CMakeFiles/cpp1.dir/perlin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/perlin.cpp.s"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Ray_tracing\Ray_tracing\cpp1\perlin.cpp -o CMakeFiles\cpp1.dir\perlin.cpp.s

CMakeFiles/cpp1.dir/rotate_y.cpp.obj: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/rotate_y.cpp.obj: F:/Ray_tracing/Ray_tracing/cpp1/rotate_y.cpp
CMakeFiles/cpp1.dir/rotate_y.cpp.obj: CMakeFiles/cpp1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/cpp1.dir/rotate_y.cpp.obj"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp1.dir/rotate_y.cpp.obj -MF CMakeFiles\cpp1.dir\rotate_y.cpp.obj.d -o CMakeFiles\cpp1.dir\rotate_y.cpp.obj -c F:\Ray_tracing\Ray_tracing\cpp1\rotate_y.cpp

CMakeFiles/cpp1.dir/rotate_y.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/rotate_y.cpp.i"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Ray_tracing\Ray_tracing\cpp1\rotate_y.cpp > CMakeFiles\cpp1.dir\rotate_y.cpp.i

CMakeFiles/cpp1.dir/rotate_y.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/rotate_y.cpp.s"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Ray_tracing\Ray_tracing\cpp1\rotate_y.cpp -o CMakeFiles\cpp1.dir\rotate_y.cpp.s

CMakeFiles/cpp1.dir/sphere.cpp.obj: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/sphere.cpp.obj: F:/Ray_tracing/Ray_tracing/cpp1/sphere.cpp
CMakeFiles/cpp1.dir/sphere.cpp.obj: CMakeFiles/cpp1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/cpp1.dir/sphere.cpp.obj"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp1.dir/sphere.cpp.obj -MF CMakeFiles\cpp1.dir\sphere.cpp.obj.d -o CMakeFiles\cpp1.dir\sphere.cpp.obj -c F:\Ray_tracing\Ray_tracing\cpp1\sphere.cpp

CMakeFiles/cpp1.dir/sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/sphere.cpp.i"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Ray_tracing\Ray_tracing\cpp1\sphere.cpp > CMakeFiles\cpp1.dir\sphere.cpp.i

CMakeFiles/cpp1.dir/sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/sphere.cpp.s"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Ray_tracing\Ray_tracing\cpp1\sphere.cpp -o CMakeFiles\cpp1.dir\sphere.cpp.s

CMakeFiles/cpp1.dir/translate.cpp.obj: CMakeFiles/cpp1.dir/flags.make
CMakeFiles/cpp1.dir/translate.cpp.obj: F:/Ray_tracing/Ray_tracing/cpp1/translate.cpp
CMakeFiles/cpp1.dir/translate.cpp.obj: CMakeFiles/cpp1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/cpp1.dir/translate.cpp.obj"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp1.dir/translate.cpp.obj -MF CMakeFiles\cpp1.dir\translate.cpp.obj.d -o CMakeFiles\cpp1.dir\translate.cpp.obj -c F:\Ray_tracing\Ray_tracing\cpp1\translate.cpp

CMakeFiles/cpp1.dir/translate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp1.dir/translate.cpp.i"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Ray_tracing\Ray_tracing\cpp1\translate.cpp > CMakeFiles\cpp1.dir\translate.cpp.i

CMakeFiles/cpp1.dir/translate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp1.dir/translate.cpp.s"
	D:\mingw64\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Ray_tracing\Ray_tracing\cpp1\translate.cpp -o CMakeFiles\cpp1.dir\translate.cpp.s

# Object files for target cpp1
cpp1_OBJECTS = \
"CMakeFiles/cpp1.dir/box.cpp.obj" \
"CMakeFiles/cpp1.dir/bvh.cpp.obj" \
"CMakeFiles/cpp1.dir/hittable.cpp.obj" \
"CMakeFiles/cpp1.dir/hittable_list.cpp.obj" \
"CMakeFiles/cpp1.dir/main.cpp.obj" \
"CMakeFiles/cpp1.dir/moving_sphere.cpp.obj" \
"CMakeFiles/cpp1.dir/perlin.cpp.obj" \
"CMakeFiles/cpp1.dir/rotate_y.cpp.obj" \
"CMakeFiles/cpp1.dir/sphere.cpp.obj" \
"CMakeFiles/cpp1.dir/translate.cpp.obj"

# External object files for target cpp1
cpp1_EXTERNAL_OBJECTS =

cpp1.exe: CMakeFiles/cpp1.dir/box.cpp.obj
cpp1.exe: CMakeFiles/cpp1.dir/bvh.cpp.obj
cpp1.exe: CMakeFiles/cpp1.dir/hittable.cpp.obj
cpp1.exe: CMakeFiles/cpp1.dir/hittable_list.cpp.obj
cpp1.exe: CMakeFiles/cpp1.dir/main.cpp.obj
cpp1.exe: CMakeFiles/cpp1.dir/moving_sphere.cpp.obj
cpp1.exe: CMakeFiles/cpp1.dir/perlin.cpp.obj
cpp1.exe: CMakeFiles/cpp1.dir/rotate_y.cpp.obj
cpp1.exe: CMakeFiles/cpp1.dir/sphere.cpp.obj
cpp1.exe: CMakeFiles/cpp1.dir/translate.cpp.obj
cpp1.exe: CMakeFiles/cpp1.dir/build.make
cpp1.exe: CMakeFiles/cpp1.dir/linkLibs.rsp
cpp1.exe: CMakeFiles/cpp1.dir/objects1.rsp
cpp1.exe: CMakeFiles/cpp1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable cpp1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cpp1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpp1.dir/build: cpp1.exe
.PHONY : CMakeFiles/cpp1.dir/build

CMakeFiles/cpp1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cpp1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cpp1.dir/clean

CMakeFiles/cpp1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\Ray_tracing\Ray_tracing\cpp1 F:\Ray_tracing\Ray_tracing\cpp1 F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug F:\Ray_tracing\Ray_tracing\cpp1\cmake-build-debug\CMakeFiles\cpp1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpp1.dir/depend
