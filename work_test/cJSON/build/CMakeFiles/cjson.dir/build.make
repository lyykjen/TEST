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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lvyayun/test/work_test/cJSON

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lvyayun/test/work_test/cJSON/build

# Include any dependencies generated for this target.
include CMakeFiles/cjson.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cjson.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cjson.dir/flags.make

CMakeFiles/cjson.dir/cJSON.c.o: CMakeFiles/cjson.dir/flags.make
CMakeFiles/cjson.dir/cJSON.c.o: ../cJSON.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lvyayun/test/work_test/cJSON/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/cjson.dir/cJSON.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cjson.dir/cJSON.c.o   -c /home/lvyayun/test/work_test/cJSON/cJSON.c

CMakeFiles/cjson.dir/cJSON.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjson.dir/cJSON.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/lvyayun/test/work_test/cJSON/cJSON.c > CMakeFiles/cjson.dir/cJSON.c.i

CMakeFiles/cjson.dir/cJSON.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjson.dir/cJSON.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/lvyayun/test/work_test/cJSON/cJSON.c -o CMakeFiles/cjson.dir/cJSON.c.s

CMakeFiles/cjson.dir/cJSON.c.o.requires:
.PHONY : CMakeFiles/cjson.dir/cJSON.c.o.requires

CMakeFiles/cjson.dir/cJSON.c.o.provides: CMakeFiles/cjson.dir/cJSON.c.o.requires
	$(MAKE) -f CMakeFiles/cjson.dir/build.make CMakeFiles/cjson.dir/cJSON.c.o.provides.build
.PHONY : CMakeFiles/cjson.dir/cJSON.c.o.provides

CMakeFiles/cjson.dir/cJSON.c.o.provides.build: CMakeFiles/cjson.dir/cJSON.c.o

# Object files for target cjson
cjson_OBJECTS = \
"CMakeFiles/cjson.dir/cJSON.c.o"

# External object files for target cjson
cjson_EXTERNAL_OBJECTS =

libcjson.so.1.5.8: CMakeFiles/cjson.dir/cJSON.c.o
libcjson.so.1.5.8: CMakeFiles/cjson.dir/build.make
libcjson.so.1.5.8: CMakeFiles/cjson.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library libcjson.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cjson.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library libcjson.so.1.5.8 libcjson.so.1 libcjson.so

libcjson.so.1: libcjson.so.1.5.8

libcjson.so: libcjson.so.1.5.8

# Rule to build all files generated by this target.
CMakeFiles/cjson.dir/build: libcjson.so
.PHONY : CMakeFiles/cjson.dir/build

CMakeFiles/cjson.dir/requires: CMakeFiles/cjson.dir/cJSON.c.o.requires
.PHONY : CMakeFiles/cjson.dir/requires

CMakeFiles/cjson.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cjson.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cjson.dir/clean

CMakeFiles/cjson.dir/depend:
	cd /home/lvyayun/test/work_test/cJSON/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lvyayun/test/work_test/cJSON /home/lvyayun/test/work_test/cJSON /home/lvyayun/test/work_test/cJSON/build /home/lvyayun/test/work_test/cJSON/build /home/lvyayun/test/work_test/cJSON/build/CMakeFiles/cjson.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cjson.dir/depend

