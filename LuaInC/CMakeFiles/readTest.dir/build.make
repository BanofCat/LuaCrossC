# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/ban/Ban/Learning/Lua/LuaInC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ban/Ban/Learning/Lua/LuaInC

# Include any dependencies generated for this target.
include CMakeFiles/readTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/readTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/readTest.dir/flags.make

CMakeFiles/readTest.dir/readDataTest.cpp.o: CMakeFiles/readTest.dir/flags.make
CMakeFiles/readTest.dir/readDataTest.cpp.o: readDataTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ban/Ban/Learning/Lua/LuaInC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/readTest.dir/readDataTest.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/readTest.dir/readDataTest.cpp.o -c /home/ban/Ban/Learning/Lua/LuaInC/readDataTest.cpp

CMakeFiles/readTest.dir/readDataTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/readTest.dir/readDataTest.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ban/Ban/Learning/Lua/LuaInC/readDataTest.cpp > CMakeFiles/readTest.dir/readDataTest.cpp.i

CMakeFiles/readTest.dir/readDataTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/readTest.dir/readDataTest.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ban/Ban/Learning/Lua/LuaInC/readDataTest.cpp -o CMakeFiles/readTest.dir/readDataTest.cpp.s

CMakeFiles/readTest.dir/readDataTest.cpp.o.requires:

.PHONY : CMakeFiles/readTest.dir/readDataTest.cpp.o.requires

CMakeFiles/readTest.dir/readDataTest.cpp.o.provides: CMakeFiles/readTest.dir/readDataTest.cpp.o.requires
	$(MAKE) -f CMakeFiles/readTest.dir/build.make CMakeFiles/readTest.dir/readDataTest.cpp.o.provides.build
.PHONY : CMakeFiles/readTest.dir/readDataTest.cpp.o.provides

CMakeFiles/readTest.dir/readDataTest.cpp.o.provides.build: CMakeFiles/readTest.dir/readDataTest.cpp.o


# Object files for target readTest
readTest_OBJECTS = \
"CMakeFiles/readTest.dir/readDataTest.cpp.o"

# External object files for target readTest
readTest_EXTERNAL_OBJECTS =

readTest: CMakeFiles/readTest.dir/readDataTest.cpp.o
readTest: CMakeFiles/readTest.dir/build.make
readTest: /usr/lib/x86_64-linux-gnu/liblua5.1.so
readTest: CMakeFiles/readTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ban/Ban/Learning/Lua/LuaInC/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable readTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/readTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/readTest.dir/build: readTest

.PHONY : CMakeFiles/readTest.dir/build

CMakeFiles/readTest.dir/requires: CMakeFiles/readTest.dir/readDataTest.cpp.o.requires

.PHONY : CMakeFiles/readTest.dir/requires

CMakeFiles/readTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/readTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/readTest.dir/clean

CMakeFiles/readTest.dir/depend:
	cd /home/ban/Ban/Learning/Lua/LuaInC && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ban/Ban/Learning/Lua/LuaInC /home/ban/Ban/Learning/Lua/LuaInC /home/ban/Ban/Learning/Lua/LuaInC /home/ban/Ban/Learning/Lua/LuaInC /home/ban/Ban/Learning/Lua/LuaInC/CMakeFiles/readTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/readTest.dir/depend

