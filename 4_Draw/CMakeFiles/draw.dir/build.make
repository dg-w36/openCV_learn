# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/dgw36/Documents/openCV_learn/4_Draw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dgw36/Documents/openCV_learn/4_Draw

# Include any dependencies generated for this target.
include CMakeFiles/draw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/draw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/draw.dir/flags.make

CMakeFiles/draw.dir/draw.cpp.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/draw.cpp.o: draw.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dgw36/Documents/openCV_learn/4_Draw/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/draw.dir/draw.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/draw.dir/draw.cpp.o -c /home/dgw36/Documents/openCV_learn/4_Draw/draw.cpp

CMakeFiles/draw.dir/draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw.dir/draw.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dgw36/Documents/openCV_learn/4_Draw/draw.cpp > CMakeFiles/draw.dir/draw.cpp.i

CMakeFiles/draw.dir/draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw.dir/draw.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dgw36/Documents/openCV_learn/4_Draw/draw.cpp -o CMakeFiles/draw.dir/draw.cpp.s

CMakeFiles/draw.dir/draw.cpp.o.requires:
.PHONY : CMakeFiles/draw.dir/draw.cpp.o.requires

CMakeFiles/draw.dir/draw.cpp.o.provides: CMakeFiles/draw.dir/draw.cpp.o.requires
	$(MAKE) -f CMakeFiles/draw.dir/build.make CMakeFiles/draw.dir/draw.cpp.o.provides.build
.PHONY : CMakeFiles/draw.dir/draw.cpp.o.provides

CMakeFiles/draw.dir/draw.cpp.o.provides.build: CMakeFiles/draw.dir/draw.cpp.o

# Object files for target draw
draw_OBJECTS = \
"CMakeFiles/draw.dir/draw.cpp.o"

# External object files for target draw
draw_EXTERNAL_OBJECTS =

draw: CMakeFiles/draw.dir/draw.cpp.o
draw: CMakeFiles/draw.dir/build.make
draw: /usr/local/lib/libopencv_videostab.so.3.0.0
draw: /usr/local/lib/libopencv_videoio.so.3.0.0
draw: /usr/local/lib/libopencv_video.so.3.0.0
draw: /usr/local/lib/libopencv_ts.a
draw: /usr/local/lib/libopencv_superres.so.3.0.0
draw: /usr/local/lib/libopencv_stitching.so.3.0.0
draw: /usr/local/lib/libopencv_shape.so.3.0.0
draw: /usr/local/lib/libopencv_photo.so.3.0.0
draw: /usr/local/lib/libopencv_objdetect.so.3.0.0
draw: /usr/local/lib/libopencv_ml.so.3.0.0
draw: /usr/local/lib/libopencv_imgproc.so.3.0.0
draw: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
draw: /usr/local/lib/libopencv_highgui.so.3.0.0
draw: /usr/local/lib/libopencv_hal.a
draw: /usr/local/lib/libopencv_flann.so.3.0.0
draw: /usr/local/lib/libopencv_features2d.so.3.0.0
draw: /usr/local/lib/libopencv_core.so.3.0.0
draw: /usr/local/lib/libopencv_calib3d.so.3.0.0
draw: /usr/local/lib/libopencv_features2d.so.3.0.0
draw: /usr/local/lib/libopencv_ml.so.3.0.0
draw: /usr/local/lib/libopencv_highgui.so.3.0.0
draw: /usr/local/lib/libopencv_videoio.so.3.0.0
draw: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
draw: /usr/local/lib/libopencv_flann.so.3.0.0
draw: /usr/local/lib/libopencv_video.so.3.0.0
draw: /usr/local/lib/libopencv_imgproc.so.3.0.0
draw: /usr/local/lib/libopencv_core.so.3.0.0
draw: /usr/local/lib/libopencv_hal.a
draw: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
draw: CMakeFiles/draw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable draw"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/draw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/draw.dir/build: draw
.PHONY : CMakeFiles/draw.dir/build

CMakeFiles/draw.dir/requires: CMakeFiles/draw.dir/draw.cpp.o.requires
.PHONY : CMakeFiles/draw.dir/requires

CMakeFiles/draw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/draw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/draw.dir/clean

CMakeFiles/draw.dir/depend:
	cd /home/dgw36/Documents/openCV_learn/4_Draw && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dgw36/Documents/openCV_learn/4_Draw /home/dgw36/Documents/openCV_learn/4_Draw /home/dgw36/Documents/openCV_learn/4_Draw /home/dgw36/Documents/openCV_learn/4_Draw /home/dgw36/Documents/openCV_learn/4_Draw/CMakeFiles/draw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/draw.dir/depend

