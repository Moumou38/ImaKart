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
include Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/depend.make

# Include the progress variables for this target.
include Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/progress.make

# Include the compile flags for this target's objects.
include Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/flags.make

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/flags.make
Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o: ../Demos/CharacterDemo/DynamicCharacterController.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/monia/bullet-2.82-r2704/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o -c /home/monia/bullet-2.82-r2704/Demos/CharacterDemo/DynamicCharacterController.cpp

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.i"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/monia/bullet-2.82-r2704/Demos/CharacterDemo/DynamicCharacterController.cpp > CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.i

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.s"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/monia/bullet-2.82-r2704/Demos/CharacterDemo/DynamicCharacterController.cpp -o CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.s

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o.requires:
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o.requires

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o.provides: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o.requires
	$(MAKE) -f Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/build.make Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o.provides.build
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o.provides

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o.provides.build: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/flags.make
Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o: ../Demos/CharacterDemo/CharacterDemo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/monia/bullet-2.82-r2704/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o -c /home/monia/bullet-2.82-r2704/Demos/CharacterDemo/CharacterDemo.cpp

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppCharacterDemo.dir/CharacterDemo.i"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/monia/bullet-2.82-r2704/Demos/CharacterDemo/CharacterDemo.cpp > CMakeFiles/AppCharacterDemo.dir/CharacterDemo.i

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppCharacterDemo.dir/CharacterDemo.s"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/monia/bullet-2.82-r2704/Demos/CharacterDemo/CharacterDemo.cpp -o CMakeFiles/AppCharacterDemo.dir/CharacterDemo.s

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o.requires:
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o.requires

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o.provides: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o.requires
	$(MAKE) -f Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/build.make Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o.provides.build
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o.provides

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o.provides.build: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/flags.make
Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o: ../Demos/BspDemo/BspConverter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/monia/bullet-2.82-r2704/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o -c /home/monia/bullet-2.82-r2704/Demos/BspDemo/BspConverter.cpp

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.i"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/monia/bullet-2.82-r2704/Demos/BspDemo/BspConverter.cpp > CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.i

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.s"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/monia/bullet-2.82-r2704/Demos/BspDemo/BspConverter.cpp -o CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.s

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o.requires:
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o.requires

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o.provides: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o.requires
	$(MAKE) -f Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/build.make Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o.provides.build
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o.provides

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o.provides.build: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/flags.make
Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o: ../Demos/BspDemo/BspLoader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/monia/bullet-2.82-r2704/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o -c /home/monia/bullet-2.82-r2704/Demos/BspDemo/BspLoader.cpp

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.i"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/monia/bullet-2.82-r2704/Demos/BspDemo/BspLoader.cpp > CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.i

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.s"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/monia/bullet-2.82-r2704/Demos/BspDemo/BspLoader.cpp -o CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.s

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o.requires:
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o.requires

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o.provides: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o.requires
	$(MAKE) -f Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/build.make Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o.provides.build
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o.provides

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o.provides.build: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/flags.make
Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o: ../Demos/CharacterDemo/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/monia/bullet-2.82-r2704/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/AppCharacterDemo.dir/main.o -c /home/monia/bullet-2.82-r2704/Demos/CharacterDemo/main.cpp

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AppCharacterDemo.dir/main.i"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/monia/bullet-2.82-r2704/Demos/CharacterDemo/main.cpp > CMakeFiles/AppCharacterDemo.dir/main.i

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AppCharacterDemo.dir/main.s"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/monia/bullet-2.82-r2704/Demos/CharacterDemo/main.cpp -o CMakeFiles/AppCharacterDemo.dir/main.s

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o.requires:
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o.requires

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o.provides: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o.requires
	$(MAKE) -f Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/build.make Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o.provides.build
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o.provides

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o.provides.build: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o

# Object files for target AppCharacterDemo
AppCharacterDemo_OBJECTS = \
"CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o" \
"CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o" \
"CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o" \
"CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o" \
"CMakeFiles/AppCharacterDemo.dir/main.o"

# External object files for target AppCharacterDemo
AppCharacterDemo_EXTERNAL_OBJECTS =

Demos/CharacterDemo/AppCharacterDemo: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o
Demos/CharacterDemo/AppCharacterDemo: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o
Demos/CharacterDemo/AppCharacterDemo: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o
Demos/CharacterDemo/AppCharacterDemo: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o
Demos/CharacterDemo/AppCharacterDemo: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o
Demos/CharacterDemo/AppCharacterDemo: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/build.make
Demos/CharacterDemo/AppCharacterDemo: Demos/OpenGL/libOpenGLSupport.a
Demos/CharacterDemo/AppCharacterDemo: src/BulletDynamics/libBulletDynamics.a
Demos/CharacterDemo/AppCharacterDemo: src/BulletCollision/libBulletCollision.a
Demos/CharacterDemo/AppCharacterDemo: src/LinearMath/libLinearMath.a
Demos/CharacterDemo/AppCharacterDemo: /usr/lib/x86_64-linux-gnu/libglut.so
Demos/CharacterDemo/AppCharacterDemo: /usr/lib/x86_64-linux-gnu/libGL.so
Demos/CharacterDemo/AppCharacterDemo: /usr/lib/x86_64-linux-gnu/libGLU.so
Demos/CharacterDemo/AppCharacterDemo: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable AppCharacterDemo"
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AppCharacterDemo.dir/link.txt --verbose=$(VERBOSE)
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && /usr/bin/cmake -E copy_if_different /home/monia/bullet-2.82-r2704/BspDemo.bsp /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo

# Rule to build all files generated by this target.
Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/build: Demos/CharacterDemo/AppCharacterDemo
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/build

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/requires: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DynamicCharacterController.o.requires
Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/requires: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/CharacterDemo.o.requires
Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/requires: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspConverter.o.requires
Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/requires: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/__/BspDemo/BspLoader.o.requires
Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/requires: Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/main.o.requires
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/requires

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/clean:
	cd /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo && $(CMAKE_COMMAND) -P CMakeFiles/AppCharacterDemo.dir/cmake_clean.cmake
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/clean

Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/depend:
	cd /home/monia/bullet-2.82-r2704/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/monia/bullet-2.82-r2704 /home/monia/bullet-2.82-r2704/Demos/CharacterDemo /home/monia/bullet-2.82-r2704/build /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo /home/monia/bullet-2.82-r2704/build/Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Demos/CharacterDemo/CMakeFiles/AppCharacterDemo.dir/depend

