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
CMAKE_SOURCE_DIR = /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture

# Include any dependencies generated for this target.
include CMakeFiles/result.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/result.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/result.dir/flags.make

CMakeFiles/result.dir/photo_capture.cpp.o: CMakeFiles/result.dir/flags.make
CMakeFiles/result.dir/photo_capture.cpp.o: photo_capture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/result.dir/photo_capture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/result.dir/photo_capture.cpp.o -c /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture/photo_capture.cpp

CMakeFiles/result.dir/photo_capture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/result.dir/photo_capture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture/photo_capture.cpp > CMakeFiles/result.dir/photo_capture.cpp.i

CMakeFiles/result.dir/photo_capture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/result.dir/photo_capture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture/photo_capture.cpp -o CMakeFiles/result.dir/photo_capture.cpp.s

CMakeFiles/result.dir/photo_capture.cpp.o.requires:
.PHONY : CMakeFiles/result.dir/photo_capture.cpp.o.requires

CMakeFiles/result.dir/photo_capture.cpp.o.provides: CMakeFiles/result.dir/photo_capture.cpp.o.requires
	$(MAKE) -f CMakeFiles/result.dir/build.make CMakeFiles/result.dir/photo_capture.cpp.o.provides.build
.PHONY : CMakeFiles/result.dir/photo_capture.cpp.o.provides

CMakeFiles/result.dir/photo_capture.cpp.o.provides.build: CMakeFiles/result.dir/photo_capture.cpp.o

# Object files for target result
result_OBJECTS = \
"CMakeFiles/result.dir/photo_capture.cpp.o"

# External object files for target result
result_EXTERNAL_OBJECTS =

result: CMakeFiles/result.dir/photo_capture.cpp.o
result: CMakeFiles/result.dir/build.make
result: /usr/local/lib/libopencv_videostab.so.2.4.9
result: /usr/local/lib/libopencv_video.so.2.4.9
result: /usr/local/lib/libopencv_ts.a
result: /usr/local/lib/libopencv_superres.so.2.4.9
result: /usr/local/lib/libopencv_stitching.so.2.4.9
result: /usr/local/lib/libopencv_photo.so.2.4.9
result: /usr/local/lib/libopencv_ocl.so.2.4.9
result: /usr/local/lib/libopencv_objdetect.so.2.4.9
result: /usr/local/lib/libopencv_nonfree.so.2.4.9
result: /usr/local/lib/libopencv_ml.so.2.4.9
result: /usr/local/lib/libopencv_legacy.so.2.4.9
result: /usr/local/lib/libopencv_imgproc.so.2.4.9
result: /usr/local/lib/libopencv_highgui.so.2.4.9
result: /usr/local/lib/libopencv_gpu.so.2.4.9
result: /usr/local/lib/libopencv_flann.so.2.4.9
result: /usr/local/lib/libopencv_features2d.so.2.4.9
result: /usr/local/lib/libopencv_core.so.2.4.9
result: /usr/local/lib/libopencv_contrib.so.2.4.9
result: /usr/local/lib/libopencv_calib3d.so.2.4.9
result: /usr/lib/x86_64-linux-gnu/libGLU.so
result: /usr/lib/x86_64-linux-gnu/libGL.so
result: /usr/lib/x86_64-linux-gnu/libSM.so
result: /usr/lib/x86_64-linux-gnu/libICE.so
result: /usr/lib/x86_64-linux-gnu/libX11.so
result: /usr/lib/x86_64-linux-gnu/libXext.so
result: /usr/local/lib/libopencv_nonfree.so.2.4.9
result: /usr/local/lib/libopencv_ocl.so.2.4.9
result: /usr/local/lib/libopencv_gpu.so.2.4.9
result: /usr/local/lib/libopencv_photo.so.2.4.9
result: /usr/local/lib/libopencv_objdetect.so.2.4.9
result: /usr/local/lib/libopencv_legacy.so.2.4.9
result: /usr/local/lib/libopencv_video.so.2.4.9
result: /usr/local/lib/libopencv_ml.so.2.4.9
result: /usr/local/lib/libopencv_calib3d.so.2.4.9
result: /usr/local/lib/libopencv_features2d.so.2.4.9
result: /usr/local/lib/libopencv_highgui.so.2.4.9
result: /usr/local/lib/libopencv_imgproc.so.2.4.9
result: /usr/local/lib/libopencv_flann.so.2.4.9
result: /usr/local/lib/libopencv_core.so.2.4.9
result: CMakeFiles/result.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable result"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/result.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/result.dir/build: result
.PHONY : CMakeFiles/result.dir/build

CMakeFiles/result.dir/requires: CMakeFiles/result.dir/photo_capture.cpp.o.requires
.PHONY : CMakeFiles/result.dir/requires

CMakeFiles/result.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/result.dir/cmake_clean.cmake
.PHONY : CMakeFiles/result.dir/clean

CMakeFiles/result.dir/depend:
	cd /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture /media/psf/Dropbox/bci/x/ar/facial_recog/photo_capture/CMakeFiles/result.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/result.dir/depend
