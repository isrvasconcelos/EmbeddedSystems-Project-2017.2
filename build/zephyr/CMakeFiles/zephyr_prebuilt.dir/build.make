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

# Include any dependencies generated for this target.
include zephyr/CMakeFiles/zephyr_prebuilt.dir/depend.make

# Include the progress variables for this target.
include zephyr/CMakeFiles/zephyr_prebuilt.dir/progress.make

# Include the compile flags for this target's objects.
include zephyr/CMakeFiles/zephyr_prebuilt.dir/flags.make

zephyr/CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.obj: zephyr/CMakeFiles/zephyr_prebuilt.dir/flags.make
zephyr/CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.obj: /home/israel/zephyr/misc/empty_file.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object zephyr/CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.obj"
	cd /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr && ccache /opt/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/bin/arm-zephyr-eabi/arm-zephyr-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.obj   -c /home/israel/zephyr/misc/empty_file.c

zephyr/CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.i"
	cd /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr && /opt/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/bin/arm-zephyr-eabi/arm-zephyr-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/israel/zephyr/misc/empty_file.c > CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.i

zephyr/CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.s"
	cd /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr && /opt/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/bin/arm-zephyr-eabi/arm-zephyr-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/israel/zephyr/misc/empty_file.c -o CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.s

# Object files for target zephyr_prebuilt
zephyr_prebuilt_OBJECTS = \
"CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.obj"

# External object files for target zephyr_prebuilt
zephyr_prebuilt_EXTERNAL_OBJECTS =

zephyr/zephyr_prebuilt.elf: zephyr/CMakeFiles/zephyr_prebuilt.dir/misc/empty_file.c.obj
zephyr/zephyr_prebuilt.elf: zephyr/CMakeFiles/zephyr_prebuilt.dir/build.make
zephyr/zephyr_prebuilt.elf: zephyr/linker.cmd
zephyr/zephyr_prebuilt.elf: libapp.a
zephyr/zephyr_prebuilt.elf: zephyr/libzephyr.a
zephyr/zephyr_prebuilt.elf: zephyr/subsys/bluetooth/common/libsubsys__bluetooth__common.a
zephyr/zephyr_prebuilt.elf: zephyr/subsys/bluetooth/host/libsubsys__bluetooth__host.a
zephyr/zephyr_prebuilt.elf: zephyr/subsys/bluetooth/controller/libsubsys__bluetooth__controller.a
zephyr/zephyr_prebuilt.elf: zephyr/subsys/net/libsubsys__net.a
zephyr/zephyr_prebuilt.elf: zephyr/kernel/libkernel.a
zephyr/zephyr_prebuilt.elf: zephyr/CMakeFiles/offsets.dir/arch/arm/core/offsets/offsets.c.obj
zephyr/zephyr_prebuilt.elf: zephyr/linker.cmd
zephyr/zephyr_prebuilt.elf: zephyr/CMakeFiles/zephyr_prebuilt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable zephyr_prebuilt.elf"
	cd /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zephyr_prebuilt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
zephyr/CMakeFiles/zephyr_prebuilt.dir/build: zephyr/zephyr_prebuilt.elf

.PHONY : zephyr/CMakeFiles/zephyr_prebuilt.dir/build

zephyr/CMakeFiles/zephyr_prebuilt.dir/clean:
	cd /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr && $(CMAKE_COMMAND) -P CMakeFiles/zephyr_prebuilt.dir/cmake_clean.cmake
.PHONY : zephyr/CMakeFiles/zephyr_prebuilt.dir/clean

zephyr/CMakeFiles/zephyr_prebuilt.dir/depend:
	cd /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto /home/israel/zephyr /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr /home/israel/Dropbox/Ufal/2017.2/SE/06_Projeto/build/zephyr/CMakeFiles/zephyr_prebuilt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : zephyr/CMakeFiles/zephyr_prebuilt.dir/depend

