# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.10

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.1\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.1\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Zero_System\Documents\Arduino\FlowSensor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Zero_System\Documents\Arduino\FlowSensor\cmake-build-debug

# Utility rule file for PLATFORMIO_PROGRAM.

# Include the progress variables for this target.
include CMakeFiles/PLATFORMIO_PROGRAM.dir/progress.make

CMakeFiles/PLATFORMIO_PROGRAM:
	cd /d C:\Users\Zero_System\Documents\Arduino\FlowSensor && C:\Python27\Scripts\platformio.exe -f -c clion run --target program

PLATFORMIO_PROGRAM: CMakeFiles/PLATFORMIO_PROGRAM
PLATFORMIO_PROGRAM: CMakeFiles/PLATFORMIO_PROGRAM.dir/build.make

.PHONY : PLATFORMIO_PROGRAM

# Rule to build all files generated by this target.
CMakeFiles/PLATFORMIO_PROGRAM.dir/build: PLATFORMIO_PROGRAM

.PHONY : CMakeFiles/PLATFORMIO_PROGRAM.dir/build

CMakeFiles/PLATFORMIO_PROGRAM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\PLATFORMIO_PROGRAM.dir\cmake_clean.cmake
.PHONY : CMakeFiles/PLATFORMIO_PROGRAM.dir/clean

CMakeFiles/PLATFORMIO_PROGRAM.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Zero_System\Documents\Arduino\FlowSensor C:\Users\Zero_System\Documents\Arduino\FlowSensor C:\Users\Zero_System\Documents\Arduino\FlowSensor\cmake-build-debug C:\Users\Zero_System\Documents\Arduino\FlowSensor\cmake-build-debug C:\Users\Zero_System\Documents\Arduino\FlowSensor\cmake-build-debug\CMakeFiles\PLATFORMIO_PROGRAM.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PLATFORMIO_PROGRAM.dir/depend

