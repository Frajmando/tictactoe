# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/friman/Documents/github/tictactoe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/friman/Documents/github/tictactoe/build

# Include any dependencies generated for this target.
include CMakeFiles/tictactoe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tictactoe.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tictactoe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tictactoe.dir/flags.make

CMakeFiles/tictactoe.dir/main.cpp.o: CMakeFiles/tictactoe.dir/flags.make
CMakeFiles/tictactoe.dir/main.cpp.o: ../main.cpp
CMakeFiles/tictactoe.dir/main.cpp.o: CMakeFiles/tictactoe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/friman/Documents/github/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tictactoe.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tictactoe.dir/main.cpp.o -MF CMakeFiles/tictactoe.dir/main.cpp.o.d -o CMakeFiles/tictactoe.dir/main.cpp.o -c /home/friman/Documents/github/tictactoe/main.cpp

CMakeFiles/tictactoe.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tictactoe.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/friman/Documents/github/tictactoe/main.cpp > CMakeFiles/tictactoe.dir/main.cpp.i

CMakeFiles/tictactoe.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tictactoe.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/friman/Documents/github/tictactoe/main.cpp -o CMakeFiles/tictactoe.dir/main.cpp.s

CMakeFiles/tictactoe.dir/GUI/window.cpp.o: CMakeFiles/tictactoe.dir/flags.make
CMakeFiles/tictactoe.dir/GUI/window.cpp.o: ../GUI/window.cpp
CMakeFiles/tictactoe.dir/GUI/window.cpp.o: CMakeFiles/tictactoe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/friman/Documents/github/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tictactoe.dir/GUI/window.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tictactoe.dir/GUI/window.cpp.o -MF CMakeFiles/tictactoe.dir/GUI/window.cpp.o.d -o CMakeFiles/tictactoe.dir/GUI/window.cpp.o -c /home/friman/Documents/github/tictactoe/GUI/window.cpp

CMakeFiles/tictactoe.dir/GUI/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tictactoe.dir/GUI/window.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/friman/Documents/github/tictactoe/GUI/window.cpp > CMakeFiles/tictactoe.dir/GUI/window.cpp.i

CMakeFiles/tictactoe.dir/GUI/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tictactoe.dir/GUI/window.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/friman/Documents/github/tictactoe/GUI/window.cpp -o CMakeFiles/tictactoe.dir/GUI/window.cpp.s

CMakeFiles/tictactoe.dir/logic/logic.cpp.o: CMakeFiles/tictactoe.dir/flags.make
CMakeFiles/tictactoe.dir/logic/logic.cpp.o: ../logic/logic.cpp
CMakeFiles/tictactoe.dir/logic/logic.cpp.o: CMakeFiles/tictactoe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/friman/Documents/github/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tictactoe.dir/logic/logic.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tictactoe.dir/logic/logic.cpp.o -MF CMakeFiles/tictactoe.dir/logic/logic.cpp.o.d -o CMakeFiles/tictactoe.dir/logic/logic.cpp.o -c /home/friman/Documents/github/tictactoe/logic/logic.cpp

CMakeFiles/tictactoe.dir/logic/logic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tictactoe.dir/logic/logic.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/friman/Documents/github/tictactoe/logic/logic.cpp > CMakeFiles/tictactoe.dir/logic/logic.cpp.i

CMakeFiles/tictactoe.dir/logic/logic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tictactoe.dir/logic/logic.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/friman/Documents/github/tictactoe/logic/logic.cpp -o CMakeFiles/tictactoe.dir/logic/logic.cpp.s

# Object files for target tictactoe
tictactoe_OBJECTS = \
"CMakeFiles/tictactoe.dir/main.cpp.o" \
"CMakeFiles/tictactoe.dir/GUI/window.cpp.o" \
"CMakeFiles/tictactoe.dir/logic/logic.cpp.o"

# External object files for target tictactoe
tictactoe_EXTERNAL_OBJECTS =

tictactoe: CMakeFiles/tictactoe.dir/main.cpp.o
tictactoe: CMakeFiles/tictactoe.dir/GUI/window.cpp.o
tictactoe: CMakeFiles/tictactoe.dir/logic/logic.cpp.o
tictactoe: CMakeFiles/tictactoe.dir/build.make
tictactoe: /home/friman/Qt/6.7.2/gcc_64/lib/libQt6Widgets.so.6.7.2
tictactoe: /home/friman/Qt/6.7.2/gcc_64/lib/libQt6Gui.so.6.7.2
tictactoe: /home/friman/Qt/6.7.2/gcc_64/lib/libQt6Core.so.6.7.2
tictactoe: /usr/lib/x86_64-linux-gnu/libGLX.so
tictactoe: /usr/lib/x86_64-linux-gnu/libOpenGL.so
tictactoe: CMakeFiles/tictactoe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/friman/Documents/github/tictactoe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable tictactoe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tictactoe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tictactoe.dir/build: tictactoe
.PHONY : CMakeFiles/tictactoe.dir/build

CMakeFiles/tictactoe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tictactoe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tictactoe.dir/clean

CMakeFiles/tictactoe.dir/depend:
	cd /home/friman/Documents/github/tictactoe/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/friman/Documents/github/tictactoe /home/friman/Documents/github/tictactoe /home/friman/Documents/github/tictactoe/build /home/friman/Documents/github/tictactoe/build /home/friman/Documents/github/tictactoe/build/CMakeFiles/tictactoe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tictactoe.dir/depend

