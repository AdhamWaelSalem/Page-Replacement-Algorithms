# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Replacement_Algorithms.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Replacement_Algorithms.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Replacement_Algorithms.dir/flags.make

CMakeFiles/Replacement_Algorithms.dir/main.cpp.obj: CMakeFiles/Replacement_Algorithms.dir/flags.make
CMakeFiles/Replacement_Algorithms.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Replacement_Algorithms.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Replacement_Algorithms.dir\main.cpp.obj -c "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms\main.cpp"

CMakeFiles/Replacement_Algorithms.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Replacement_Algorithms.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms\main.cpp" > CMakeFiles\Replacement_Algorithms.dir\main.cpp.i

CMakeFiles/Replacement_Algorithms.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Replacement_Algorithms.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms\main.cpp" -o CMakeFiles\Replacement_Algorithms.dir\main.cpp.s

# Object files for target Replacement_Algorithms
Replacement_Algorithms_OBJECTS = \
"CMakeFiles/Replacement_Algorithms.dir/main.cpp.obj"

# External object files for target Replacement_Algorithms
Replacement_Algorithms_EXTERNAL_OBJECTS =

Replacement_Algorithms.exe: CMakeFiles/Replacement_Algorithms.dir/main.cpp.obj
Replacement_Algorithms.exe: CMakeFiles/Replacement_Algorithms.dir/build.make
Replacement_Algorithms.exe: CMakeFiles/Replacement_Algorithms.dir/linklibs.rsp
Replacement_Algorithms.exe: CMakeFiles/Replacement_Algorithms.dir/objects1.rsp
Replacement_Algorithms.exe: CMakeFiles/Replacement_Algorithms.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Replacement_Algorithms.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Replacement_Algorithms.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Replacement_Algorithms.dir/build: Replacement_Algorithms.exe

.PHONY : CMakeFiles/Replacement_Algorithms.dir/build

CMakeFiles/Replacement_Algorithms.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Replacement_Algorithms.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Replacement_Algorithms.dir/clean

CMakeFiles/Replacement_Algorithms.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms" "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms" "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms\cmake-build-debug" "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms\cmake-build-debug" "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\Replacement_Algorithms\cmake-build-debug\CMakeFiles\Replacement_Algorithms.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Replacement_Algorithms.dir/depend

