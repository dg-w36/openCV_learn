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
CMAKE_SOURCE_DIR = /home/dgw36/Documents/openCV_learn/5_ColorReduce

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dgw36/Documents/openCV_learn/5_ColorReduce

# Include any dependencies generated for this target.
include CMakeFiles/color_reduce.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/color_reduce.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/color_reduce.dir/flags.make

CMakeFiles/color_reduce.dir/color_reduce.cpp.o: CMakeFiles/color_reduce.dir/flags.make
CMakeFiles/color_reduce.dir/color_reduce.cpp.o: color_reduce.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dgw36/Documents/openCV_learn/5_ColorReduce/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/color_reduce.dir/color_reduce.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/color_reduce.dir/color_reduce.cpp.o -c /home/dgw36/Documents/openCV_learn/5_ColorReduce/color_reduce.cpp

CMakeFiles/color_reduce.dir/color_reduce.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_reduce.dir/color_reduce.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dgw36/Documents/openCV_learn/5_ColorReduce/color_reduce.cpp > CMakeFiles/color_reduce.dir/color_reduce.cpp.i

CMakeFiles/color_reduce.dir/color_reduce.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_reduce.dir/color_reduce.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dgw36/Documents/openCV_learn/5_ColorReduce/color_reduce.cpp -o CMakeFiles/color_reduce.dir/color_reduce.cpp.s

CMakeFiles/color_reduce.dir/color_reduce.cpp.o.requires:
.PHONY : CMakeFiles/color_reduce.dir/color_reduce.cpp.o.requires

CMakeFiles/color_reduce.dir/color_reduce.cpp.o.provides: CMakeFiles/color_reduce.dir/color_reduce.cpp.o.requires
	$(MAKE) -f CMakeFiles/color_reduce.dir/build.make CMakeFiles/color_reduce.dir/color_reduce.cpp.o.provides.build
.PHONY : CMakeFiles/color_reduce.dir/color_reduce.cpp.o.provides

CMakeFiles/color_reduce.dir/color_reduce.cpp.o.provides.build: CMakeFiles/color_reduce.dir/color_reduce.cpp.o

# Object files for target color_reduce
color_reduce_OBJECTS = \
"CMakeFiles/color_reduce.dir/color_reduce.cpp.o"

# External object files for target color_reduce
color_reduce_EXTERNAL_OBJECTS =

color_reduce: CMakeFiles/color_reduce.dir/color_reduce.cpp.o
color_reduce: CMakeFiles/color_reduce.dir/build.make
color_reduce: /usr/local/lib/libopencv_videostab.so.3.0.0
color_reduce: /usr/local/lib/libopencv_videoio.so.3.0.0
color_reduce: /usr/local/lib/libopencv_video.so.3.0.0
color_reduce: /usr/local/lib/libopencv_ts.a
color_reduce: /usr/local/lib/libopencv_superres.so.3.0.0
color_reduce: /usr/local/lib/libopencv_stitching.so.3.0.0
color_reduce: /usr/local/lib/libopencv_shape.so.3.0.0
color_reduce: /usr/local/lib/libopencv_photo.so.3.0.0
color_reduce: /usr/local/lib/libopencv_objdetect.so.3.0.0
color_reduce: /usr/local/lib/libopencv_ml.so.3.0.0
color_reduce: /usr/local/lib/libopencv_imgproc.so.3.0.0
color_reduce: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
color_reduce: /usr/local/lib/libopencv_highgui.so.3.0.0
color_reduce: /usr/local/lib/libopencv_hal.a
color_reduce: /usr/local/lib/libopencv_flann.so.3.0.0
color_reduce: /usr/local/lib/libopencv_features2d.so.3.0.0
color_reduce: /usr/local/lib/libopencv_core.so.3.0.0
color_reduce: /usr/local/lib/libopencv_calib3d.so.3.0.0
color_reduce: /usr/local/lib/libopencv_features2d.so.3.0.0
color_reduce: /usr/local/lib/libopencv_ml.so.3.0.0
color_reduce: /usr/local/lib/libopencv_highgui.so.3.0.0
color_reduce: /usr/local/lib/libopencv_videoio.so.3.0.0
color_reduce: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
color_reduce: /usr/local/lib/libopencv_flann.so.3.0.0
color_reduce: /usr/local/lib/libopencv_video.so.3.0.0
color_reduce: /usr/local/lib/libopencv_imgproc.so.3.0.0
color_reduce: /usr/local/lib/libopencv_core.so.3.0.0
color_reduce: /usr/local/lib/libopencv_hal.a
color_reduce: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
color_reduce: CMakeFiles/color_reduce.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable color_reduce"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/color_reduce.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/color_reduce.dir/build: color_reduce
.PHONY : CMakeFiles/color_reduce.dir/build

CMakeFiles/color_reduce.dir/requires: CMakeFiles/color_reduce.dir/color_reduce.cpp.o.requires
.PHONY : CMakeFiles/color_reduce.dir/requires

CMakeFiles/color_reduce.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/color_reduce.dir/cmake_clean.cmake
.PHONY : CMakeFiles/color_reduce.dir/clean

CMakeFiles/color_reduce.dir/depend:
	cd /home/dgw36/Documents/openCV_learn/5_ColorReduce && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dgw36/Documents/openCV_learn/5_ColorReduce /home/dgw36/Documents/openCV_learn/5_ColorReduce /home/dgw36/Documents/openCV_learn/5_ColorReduce /home/dgw36/Documents/openCV_learn/5_ColorReduce /home/dgw36/Documents/openCV_learn/5_ColorReduce/CMakeFiles/color_reduce.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/color_reduce.dir/depend
