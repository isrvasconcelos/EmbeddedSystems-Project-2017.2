# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build

# Utility rule file for offsets_h.

# Include the progress variables for this target.
include zephyr/CMakeFiles/offsets_h.dir/progress.make

zephyr/CMakeFiles/offsets_h: zephyr/include/generated/offsets.h


zephyr/include/generated/offsets.h: zephyr/liboffsets.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating include/generated/offsets.h"
	cd /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr && /usr/bin/python3 /home/israel/zephyr/scripts/gen_offset_header.py -i /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj -o /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr/include/generated/offsets.h

offsets_h: zephyr/CMakeFiles/offsets_h
offsets_h: zephyr/include/generated/offsets.h
offsets_h: zephyr/CMakeFiles/offsets_h.dir/build.make

.PHONY : offsets_h

# Rule to build all files generated by this target.
zephyr/CMakeFiles/offsets_h.dir/build: offsets_h

.PHONY : zephyr/CMakeFiles/offsets_h.dir/build

zephyr/CMakeFiles/offsets_h.dir/clean:
	cd /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr && $(CMAKE_COMMAND) -P CMakeFiles/offsets_h.dir/cmake_clean.cmake
.PHONY : zephyr/CMakeFiles/offsets_h.dir/clean

zephyr/CMakeFiles/offsets_h.dir/depend:
	cd /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto /home/israel/zephyr /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr/CMakeFiles/offsets_h.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : zephyr/CMakeFiles/offsets_h.dir/depend

