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

# Include any dependencies generated for this target.
include CMakeFiles/FlowSensor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FlowSensor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FlowSensor.dir/flags.make

CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj: CMakeFiles/FlowSensor.dir/flags.make
CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj: CMakeFiles/FlowSensor.dir/includes_CXX.rsp
CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj: ../src/FlowSensorTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Zero_System\Documents\Arduino\FlowSensor\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj"
	C:\Users\Zero_System\.platformio\packages\toolchain-atmelavr\bin\avr-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\FlowSensor.dir\src\FlowSensorTest.cpp.obj -c C:\Users\Zero_System\Documents\Arduino\FlowSensor\src\FlowSensorTest.cpp

CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.i"
	C:\Users\Zero_System\.platformio\packages\toolchain-atmelavr\bin\avr-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Zero_System\Documents\Arduino\FlowSensor\src\FlowSensorTest.cpp > CMakeFiles\FlowSensor.dir\src\FlowSensorTest.cpp.i

CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.s"
	C:\Users\Zero_System\.platformio\packages\toolchain-atmelavr\bin\avr-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Zero_System\Documents\Arduino\FlowSensor\src\FlowSensorTest.cpp -o CMakeFiles\FlowSensor.dir\src\FlowSensorTest.cpp.s

CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj.requires:

.PHONY : CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj.requires

CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj.provides: CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj.requires
	$(MAKE) -f CMakeFiles\FlowSensor.dir\build.make CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj.provides.build
.PHONY : CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj.provides

CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj.provides.build: CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj


CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj: CMakeFiles/FlowSensor.dir/flags.make
CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj: CMakeFiles/FlowSensor.dir/includes_CXX.rsp
CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj: ../lib/FlowSensor/FlowSensor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Zero_System\Documents\Arduino\FlowSensor\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj"
	C:\Users\Zero_System\.platformio\packages\toolchain-atmelavr\bin\avr-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\FlowSensor.dir\lib\FlowSensor\FlowSensor.cpp.obj -c C:\Users\Zero_System\Documents\Arduino\FlowSensor\lib\FlowSensor\FlowSensor.cpp

CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.i"
	C:\Users\Zero_System\.platformio\packages\toolchain-atmelavr\bin\avr-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Zero_System\Documents\Arduino\FlowSensor\lib\FlowSensor\FlowSensor.cpp > CMakeFiles\FlowSensor.dir\lib\FlowSensor\FlowSensor.cpp.i

CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.s"
	C:\Users\Zero_System\.platformio\packages\toolchain-atmelavr\bin\avr-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Zero_System\Documents\Arduino\FlowSensor\lib\FlowSensor\FlowSensor.cpp -o CMakeFiles\FlowSensor.dir\lib\FlowSensor\FlowSensor.cpp.s

CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj.requires:

.PHONY : CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj.requires

CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj.provides: CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj.requires
	$(MAKE) -f CMakeFiles\FlowSensor.dir\build.make CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj.provides.build
.PHONY : CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj.provides

CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj.provides.build: CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj


# Object files for target FlowSensor
FlowSensor_OBJECTS = \
"CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj" \
"CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj"

# External object files for target FlowSensor
FlowSensor_EXTERNAL_OBJECTS =

FlowSensor.exe: CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj
FlowSensor.exe: CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj
FlowSensor.exe: CMakeFiles/FlowSensor.dir/build.make
FlowSensor.exe: CMakeFiles/FlowSensor.dir/linklibs.rsp
FlowSensor.exe: CMakeFiles/FlowSensor.dir/objects1.rsp
FlowSensor.exe: CMakeFiles/FlowSensor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Zero_System\Documents\Arduino\FlowSensor\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable FlowSensor.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\FlowSensor.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FlowSensor.dir/build: FlowSensor.exe

.PHONY : CMakeFiles/FlowSensor.dir/build

CMakeFiles/FlowSensor.dir/requires: CMakeFiles/FlowSensor.dir/src/FlowSensorTest.cpp.obj.requires
CMakeFiles/FlowSensor.dir/requires: CMakeFiles/FlowSensor.dir/lib/FlowSensor/FlowSensor.cpp.obj.requires

.PHONY : CMakeFiles/FlowSensor.dir/requires

CMakeFiles/FlowSensor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\FlowSensor.dir\cmake_clean.cmake
.PHONY : CMakeFiles/FlowSensor.dir/clean

CMakeFiles/FlowSensor.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Zero_System\Documents\Arduino\FlowSensor C:\Users\Zero_System\Documents\Arduino\FlowSensor C:\Users\Zero_System\Documents\Arduino\FlowSensor\cmake-build-debug C:\Users\Zero_System\Documents\Arduino\FlowSensor\cmake-build-debug C:\Users\Zero_System\Documents\Arduino\FlowSensor\cmake-build-debug\CMakeFiles\FlowSensor.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FlowSensor.dir/depend

