# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/kadir/matlab_work/FormationControl/gazebo_components/programs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kadir/matlab_work/FormationControl/gazebo_components/programs/build

# Include any dependencies generated for this target.
include CMakeFiles/publisher_formation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/publisher_formation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/publisher_formation.dir/flags.make

CMakeFiles/publisher_formation.dir/publisher_formation.cc.o: CMakeFiles/publisher_formation.dir/flags.make
CMakeFiles/publisher_formation.dir/publisher_formation.cc.o: ../publisher_formation.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kadir/matlab_work/FormationControl/gazebo_components/programs/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/publisher_formation.dir/publisher_formation.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/publisher_formation.dir/publisher_formation.cc.o -c /home/kadir/matlab_work/FormationControl/gazebo_components/programs/publisher_formation.cc

CMakeFiles/publisher_formation.dir/publisher_formation.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/publisher_formation.dir/publisher_formation.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kadir/matlab_work/FormationControl/gazebo_components/programs/publisher_formation.cc > CMakeFiles/publisher_formation.dir/publisher_formation.cc.i

CMakeFiles/publisher_formation.dir/publisher_formation.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/publisher_formation.dir/publisher_formation.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kadir/matlab_work/FormationControl/gazebo_components/programs/publisher_formation.cc -o CMakeFiles/publisher_formation.dir/publisher_formation.cc.s

CMakeFiles/publisher_formation.dir/publisher_formation.cc.o.requires:
.PHONY : CMakeFiles/publisher_formation.dir/publisher_formation.cc.o.requires

CMakeFiles/publisher_formation.dir/publisher_formation.cc.o.provides: CMakeFiles/publisher_formation.dir/publisher_formation.cc.o.requires
	$(MAKE) -f CMakeFiles/publisher_formation.dir/build.make CMakeFiles/publisher_formation.dir/publisher_formation.cc.o.provides.build
.PHONY : CMakeFiles/publisher_formation.dir/publisher_formation.cc.o.provides

CMakeFiles/publisher_formation.dir/publisher_formation.cc.o.provides.build: CMakeFiles/publisher_formation.dir/publisher_formation.cc.o

# Object files for target publisher_formation
publisher_formation_OBJECTS = \
"CMakeFiles/publisher_formation.dir/publisher_formation.cc.o"

# External object files for target publisher_formation
publisher_formation_EXTERNAL_OBJECTS =

publisher_formation: CMakeFiles/publisher_formation.dir/publisher_formation.cc.o
publisher_formation: CMakeFiles/publisher_formation.dir/build.make
publisher_formation: /usr/lib/x86_64-linux-gnu/libboost_system.so
publisher_formation: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
publisher_formation: /usr/lib/x86_64-linux-gnu/libboost_regex.so
publisher_formation: /usr/lib/x86_64-linux-gnu/libprotobuf.so
publisher_formation: CMakeFiles/publisher_formation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable publisher_formation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/publisher_formation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/publisher_formation.dir/build: publisher_formation
.PHONY : CMakeFiles/publisher_formation.dir/build

CMakeFiles/publisher_formation.dir/requires: CMakeFiles/publisher_formation.dir/publisher_formation.cc.o.requires
.PHONY : CMakeFiles/publisher_formation.dir/requires

CMakeFiles/publisher_formation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/publisher_formation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/publisher_formation.dir/clean

CMakeFiles/publisher_formation.dir/depend:
	cd /home/kadir/matlab_work/FormationControl/gazebo_components/programs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kadir/matlab_work/FormationControl/gazebo_components/programs /home/kadir/matlab_work/FormationControl/gazebo_components/programs /home/kadir/matlab_work/FormationControl/gazebo_components/programs/build /home/kadir/matlab_work/FormationControl/gazebo_components/programs/build /home/kadir/matlab_work/FormationControl/gazebo_components/programs/build/CMakeFiles/publisher_formation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/publisher_formation.dir/depend

