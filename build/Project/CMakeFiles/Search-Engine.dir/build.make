# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /Users/anastasiapronina/Qt/Tools/CMake/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Users/anastasiapronina/Qt/Tools/CMake/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/anastasiapronina/Desktop/Search-Engine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/anastasiapronina/Desktop/Search-Engine/build

# Include any dependencies generated for this target.
include Project/CMakeFiles/Search-Engine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Project/CMakeFiles/Search-Engine.dir/compiler_depend.make

# Include the progress variables for this target.
include Project/CMakeFiles/Search-Engine.dir/progress.make

# Include the compile flags for this target's objects.
include Project/CMakeFiles/Search-Engine.dir/flags.make

Project/CMakeFiles/Search-Engine.dir/src/main.cpp.o: Project/CMakeFiles/Search-Engine.dir/flags.make
Project/CMakeFiles/Search-Engine.dir/src/main.cpp.o: ../Project/src/main.cpp
Project/CMakeFiles/Search-Engine.dir/src/main.cpp.o: Project/CMakeFiles/Search-Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/anastasiapronina/Desktop/Search-Engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Project/CMakeFiles/Search-Engine.dir/src/main.cpp.o"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Project/CMakeFiles/Search-Engine.dir/src/main.cpp.o -MF CMakeFiles/Search-Engine.dir/src/main.cpp.o.d -o CMakeFiles/Search-Engine.dir/src/main.cpp.o -c /Users/anastasiapronina/Desktop/Search-Engine/Project/src/main.cpp

Project/CMakeFiles/Search-Engine.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Search-Engine.dir/src/main.cpp.i"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/anastasiapronina/Desktop/Search-Engine/Project/src/main.cpp > CMakeFiles/Search-Engine.dir/src/main.cpp.i

Project/CMakeFiles/Search-Engine.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Search-Engine.dir/src/main.cpp.s"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/anastasiapronina/Desktop/Search-Engine/Project/src/main.cpp -o CMakeFiles/Search-Engine.dir/src/main.cpp.s

Project/CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.o: Project/CMakeFiles/Search-Engine.dir/flags.make
Project/CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.o: ../Project/src/ConverterJSON.cpp
Project/CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.o: Project/CMakeFiles/Search-Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/anastasiapronina/Desktop/Search-Engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Project/CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.o"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Project/CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.o -MF CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.o.d -o CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.o -c /Users/anastasiapronina/Desktop/Search-Engine/Project/src/ConverterJSON.cpp

Project/CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.i"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/anastasiapronina/Desktop/Search-Engine/Project/src/ConverterJSON.cpp > CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.i

Project/CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.s"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/anastasiapronina/Desktop/Search-Engine/Project/src/ConverterJSON.cpp -o CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.s

Project/CMakeFiles/Search-Engine.dir/src/Configuration.cpp.o: Project/CMakeFiles/Search-Engine.dir/flags.make
Project/CMakeFiles/Search-Engine.dir/src/Configuration.cpp.o: ../Project/src/Configuration.cpp
Project/CMakeFiles/Search-Engine.dir/src/Configuration.cpp.o: Project/CMakeFiles/Search-Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/anastasiapronina/Desktop/Search-Engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Project/CMakeFiles/Search-Engine.dir/src/Configuration.cpp.o"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Project/CMakeFiles/Search-Engine.dir/src/Configuration.cpp.o -MF CMakeFiles/Search-Engine.dir/src/Configuration.cpp.o.d -o CMakeFiles/Search-Engine.dir/src/Configuration.cpp.o -c /Users/anastasiapronina/Desktop/Search-Engine/Project/src/Configuration.cpp

Project/CMakeFiles/Search-Engine.dir/src/Configuration.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Search-Engine.dir/src/Configuration.cpp.i"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/anastasiapronina/Desktop/Search-Engine/Project/src/Configuration.cpp > CMakeFiles/Search-Engine.dir/src/Configuration.cpp.i

Project/CMakeFiles/Search-Engine.dir/src/Configuration.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Search-Engine.dir/src/Configuration.cpp.s"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/anastasiapronina/Desktop/Search-Engine/Project/src/Configuration.cpp -o CMakeFiles/Search-Engine.dir/src/Configuration.cpp.s

Project/CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.o: Project/CMakeFiles/Search-Engine.dir/flags.make
Project/CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.o: ../Project/src/Exceptions.cpp
Project/CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.o: Project/CMakeFiles/Search-Engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/anastasiapronina/Desktop/Search-Engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Project/CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.o"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Project/CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.o -MF CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.o.d -o CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.o -c /Users/anastasiapronina/Desktop/Search-Engine/Project/src/Exceptions.cpp

Project/CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.i"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/anastasiapronina/Desktop/Search-Engine/Project/src/Exceptions.cpp > CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.i

Project/CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.s"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && /Library/Developer/CommandLineTools/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/anastasiapronina/Desktop/Search-Engine/Project/src/Exceptions.cpp -o CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.s

# Object files for target Search-Engine
Search__Engine_OBJECTS = \
"CMakeFiles/Search-Engine.dir/src/main.cpp.o" \
"CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.o" \
"CMakeFiles/Search-Engine.dir/src/Configuration.cpp.o" \
"CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.o"

# External object files for target Search-Engine
Search__Engine_EXTERNAL_OBJECTS =

Project/Search-Engine: Project/CMakeFiles/Search-Engine.dir/src/main.cpp.o
Project/Search-Engine: Project/CMakeFiles/Search-Engine.dir/src/ConverterJSON.cpp.o
Project/Search-Engine: Project/CMakeFiles/Search-Engine.dir/src/Configuration.cpp.o
Project/Search-Engine: Project/CMakeFiles/Search-Engine.dir/src/Exceptions.cpp.o
Project/Search-Engine: Project/CMakeFiles/Search-Engine.dir/build.make
Project/Search-Engine: Project/CMakeFiles/Search-Engine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/anastasiapronina/Desktop/Search-Engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Search-Engine"
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Search-Engine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Project/CMakeFiles/Search-Engine.dir/build: Project/Search-Engine
.PHONY : Project/CMakeFiles/Search-Engine.dir/build

Project/CMakeFiles/Search-Engine.dir/clean:
	cd /Users/anastasiapronina/Desktop/Search-Engine/build/Project && $(CMAKE_COMMAND) -P CMakeFiles/Search-Engine.dir/cmake_clean.cmake
.PHONY : Project/CMakeFiles/Search-Engine.dir/clean

Project/CMakeFiles/Search-Engine.dir/depend:
	cd /Users/anastasiapronina/Desktop/Search-Engine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/anastasiapronina/Desktop/Search-Engine /Users/anastasiapronina/Desktop/Search-Engine/Project /Users/anastasiapronina/Desktop/Search-Engine/build /Users/anastasiapronina/Desktop/Search-Engine/build/Project /Users/anastasiapronina/Desktop/Search-Engine/build/Project/CMakeFiles/Search-Engine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Project/CMakeFiles/Search-Engine.dir/depend

