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
CMAKE_SOURCE_DIR = /home/monia/bullet-2.82-r2704

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/monia/bullet-2.82-r2704/build

# Include any dependencies generated for this target.
include Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/depend.make

# Include the progress variables for this target.
include Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/progress.make

# Include the compile flags for this target's objects.
include Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/flags.make

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/flags.make
Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o: ../Demos/FractureDemo/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/monia/bullet-2.82-r2704/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppFractureDemo.dir/main.o -c /home/monia/bullet-2.82-r2704/Demos/FractureDemo/main.cpp

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppFractureDemo.dir/main.i"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/monia/bullet-2.82-r2704/Demos/FractureDemo/main.cpp > CMakeFiles/AppFractureDemo.dir/main.i

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppFractureDemo.dir/main.s"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/monia/bullet-2.82-r2704/Demos/FractureDemo/main.cpp -o CMakeFiles/AppFractureDemo.dir/main.s

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o.requires:
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o.requires

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o.provides: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o.requires
	$(MAKE) -f Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/build.make Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o.provides.build
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o.provides

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o.provides.build: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/flags.make
Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o: ../Demos/FractureDemo/FractureDemo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/monia/bullet-2.82-r2704/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppFractureDemo.dir/FractureDemo.o -c /home/monia/bullet-2.82-r2704/Demos/FractureDemo/FractureDemo.cpp

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppFractureDemo.dir/FractureDemo.i"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/monia/bullet-2.82-r2704/Demos/FractureDemo/FractureDemo.cpp > CMakeFiles/AppFractureDemo.dir/FractureDemo.i

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppFractureDemo.dir/FractureDemo.s"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/monia/bullet-2.82-r2704/Demos/FractureDemo/FractureDemo.cpp -o CMakeFiles/AppFractureDemo.dir/FractureDemo.s

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o.requires:
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o.requires

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o.provides: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o.requires
	$(MAKE) -f Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/build.make Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o.provides.build
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o.provides

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o.provides.build: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/flags.make
Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o: ../Demos/FractureDemo/btFractureBody.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/monia/bullet-2.82-r2704/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppFractureDemo.dir/btFractureBody.o -c /home/monia/bullet-2.82-r2704/Demos/FractureDemo/btFractureBody.cpp

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppFractureDemo.dir/btFractureBody.i"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/monia/bullet-2.82-r2704/Demos/FractureDemo/btFractureBody.cpp > CMakeFiles/AppFractureDemo.dir/btFractureBody.i

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppFractureDemo.dir/btFractureBody.s"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/monia/bullet-2.82-r2704/Demos/FractureDemo/btFractureBody.cpp -o CMakeFiles/AppFractureDemo.dir/btFractureBody.s

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o.requires:
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o.requires

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o.provides: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o.requires
	$(MAKE) -f Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/build.make Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o.provides.build
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o.provides

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o.provides.build: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/flags.make
Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o: ../Demos/FractureDemo/btFractureDynamicsWorld.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/monia/bullet-2.82-r2704/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o -c /home/monia/bullet-2.82-r2704/Demos/FractureDemo/btFractureDynamicsWorld.cpp

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.i"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/monia/bullet-2.82-r2704/Demos/FractureDemo/btFractureDynamicsWorld.cpp > CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.i

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.s"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/monia/bullet-2.82-r2704/Demos/FractureDemo/btFractureDynamicsWorld.cpp -o CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.s

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o.requires:
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o.requires

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o.provides: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o.requires
	$(MAKE) -f Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/build.make Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o.provides.build
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o.provides

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o.provides.build: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o

# Object files for target AppFractureDemo
AppFractureDemo_OBJECTS = \
"CMakeFiles/AppFractureDemo.dir/main.o" \
"CMakeFiles/AppFractureDemo.dir/FractureDemo.o" \
"CMakeFiles/AppFractureDemo.dir/btFractureBody.o" \
"CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o"

# External object files for target AppFractureDemo
AppFractureDemo_EXTERNAL_OBJECTS =

Demos/FractureDemo/AppFractureDemo: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o
Demos/FractureDemo/AppFractureDemo: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o
Demos/FractureDemo/AppFractureDemo: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o
Demos/FractureDemo/AppFractureDemo: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o
Demos/FractureDemo/AppFractureDemo: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/build.make
Demos/FractureDemo/AppFractureDemo: Demos/OpenGL/libOpenGLSupport.a
Demos/FractureDemo/AppFractureDemo: src/BulletDynamics/libBulletDynamics.a
Demos/FractureDemo/AppFractureDemo: src/BulletCollision/libBulletCollision.a
Demos/FractureDemo/AppFractureDemo: src/LinearMath/libLinearMath.a
Demos/FractureDemo/AppFractureDemo: /usr/lib/x86_64-linux-gnu/libglut.so
Demos/FractureDemo/AppFractureDemo: /usr/lib/x86_64-linux-gnu/libGL.so
Demos/FractureDemo/AppFractureDemo: /usr/lib/x86_64-linux-gnu/libGLU.so
Demos/FractureDemo/AppFractureDemo: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable AppFractureDemo"
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AppFractureDemo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/build: Demos/FractureDemo/AppFractureDemo
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/build

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/requires: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/main.o.requires
Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/requires: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/FractureDemo.o.requires
Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/requires: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureBody.o.requires
Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/requires: Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/btFractureDynamicsWorld.o.requires
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/requires

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/clean:
	cd /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo && $(CMAKE_COMMAND) -P CMakeFiles/AppFractureDemo.dir/cmake_clean.cmake
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/clean

Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/depend:
	cd /home/monia/bullet-2.82-r2704/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/monia/bullet-2.82-r2704 /home/monia/bullet-2.82-r2704/Demos/FractureDemo /home/monia/bullet-2.82-r2704/build /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo /home/monia/bullet-2.82-r2704/build/Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Demos/FractureDemo/CMakeFiles/AppFractureDemo.dir/depend

