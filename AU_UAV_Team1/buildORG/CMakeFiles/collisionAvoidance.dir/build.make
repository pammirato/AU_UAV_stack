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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hosea/ros_workspace/AU_UAV_ROS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hosea/ros_workspace/AU_UAV_ROS/build

# Include any dependencies generated for this target.
include CMakeFiles/collisionAvoidance.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/collisionAvoidance.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/collisionAvoidance.dir/flags.make

CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: CMakeFiles/collisionAvoidance.dir/flags.make
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: ../src/collisionAvoidance.cpp
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: ../manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hosea/ros_workspace/AU_UAV_ROS/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o -c /home/hosea/ros_workspace/AU_UAV_ROS/src/collisionAvoidance.cpp

CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/hosea/ros_workspace/AU_UAV_ROS/src/collisionAvoidance.cpp > CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.i

CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/hosea/ros_workspace/AU_UAV_ROS/src/collisionAvoidance.cpp -o CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.s

CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o.requires:
.PHONY : CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o.requires

CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o.provides: CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o.requires
	$(MAKE) -f CMakeFiles/collisionAvoidance.dir/build.make CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o.provides.build
.PHONY : CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o.provides

CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o.provides.build: CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: CMakeFiles/collisionAvoidance.dir/flags.make
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: ../src/AU_UAV_ROS/standardDefs.cpp
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: ../manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hosea/ros_workspace/AU_UAV_ROS/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o -c /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/standardDefs.cpp

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/standardDefs.cpp > CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.i

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/standardDefs.cpp -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.s

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o.requires:
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o.requires

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o.provides: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o.requires
	$(MAKE) -f CMakeFiles/collisionAvoidance.dir/build.make CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o.provides.build
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o.provides

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o.provides.build: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: CMakeFiles/collisionAvoidance.dir/flags.make
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: ../src/AU_UAV_ROS/cobject.cpp
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: ../manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hosea/ros_workspace/AU_UAV_ROS/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o -c /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/cobject.cpp

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/cobject.cpp > CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.i

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/cobject.cpp -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.s

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o.requires:
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o.requires

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o.provides: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o.requires
	$(MAKE) -f CMakeFiles/collisionAvoidance.dir/build.make CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o.provides.build
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o.provides

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o.provides.build: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: CMakeFiles/collisionAvoidance.dir/flags.make
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: ../src/AU_UAV_ROS/force.cpp
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: ../manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hosea/ros_workspace/AU_UAV_ROS/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o -c /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/force.cpp

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/force.cpp > CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.i

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/force.cpp -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.s

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o.requires:
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o.requires

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o.provides: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o.requires
	$(MAKE) -f CMakeFiles/collisionAvoidance.dir/build.make CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o.provides.build
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o.provides

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o.provides.build: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: CMakeFiles/collisionAvoidance.dir/flags.make
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: ../src/AU_UAV_ROS/pobject.cpp
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: ../manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hosea/ros_workspace/AU_UAV_ROS/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o -c /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/pobject.cpp

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/pobject.cpp > CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.i

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/pobject.cpp -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.s

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o.requires:
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o.requires

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o.provides: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o.requires
	$(MAKE) -f CMakeFiles/collisionAvoidance.dir/build.make CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o.provides.build
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o.provides

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o.provides.build: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: CMakeFiles/collisionAvoidance.dir/flags.make
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: ../src/AU_UAV_ROS/standardFuncs.cpp
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: ../manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hosea/ros_workspace/AU_UAV_ROS/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o -c /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/standardFuncs.cpp

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/standardFuncs.cpp > CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.i

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/standardFuncs.cpp -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.s

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o.requires:
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o.requires

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o.provides: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o.requires
	$(MAKE) -f CMakeFiles/collisionAvoidance.dir/build.make CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o.provides.build
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o.provides

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o.provides.build: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: CMakeFiles/collisionAvoidance.dir/flags.make
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: ../src/AU_UAV_ROS/vmath.cpp
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: ../manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hosea/ros_workspace/AU_UAV_ROS/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o -c /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/vmath.cpp

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/vmath.cpp > CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.i

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/vmath.cpp -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.s

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o.requires:
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o.requires

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o.provides: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o.requires
	$(MAKE) -f CMakeFiles/collisionAvoidance.dir/build.make CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o.provides.build
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o.provides

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o.provides.build: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: CMakeFiles/collisionAvoidance.dir/flags.make
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: ../src/AU_UAV_ROS/dubins.cpp
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: ../manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/visualization_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/hosea/ros_workspace/AU_UAV_ROS/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o -c /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/dubins.cpp

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/dubins.cpp > CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.i

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/hosea/ros_workspace/AU_UAV_ROS/src/AU_UAV_ROS/dubins.cpp -o CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.s

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o.requires:
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o.requires

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o.provides: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o.requires
	$(MAKE) -f CMakeFiles/collisionAvoidance.dir/build.make CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o.provides.build
.PHONY : CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o.provides

CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o.provides.build: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o

# Object files for target collisionAvoidance
collisionAvoidance_OBJECTS = \
"CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o" \
"CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o" \
"CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o" \
"CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o" \
"CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o" \
"CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o" \
"CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o" \
"CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o"

# External object files for target collisionAvoidance
collisionAvoidance_EXTERNAL_OBJECTS =

../bin/collisionAvoidance: CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o
../bin/collisionAvoidance: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o
../bin/collisionAvoidance: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o
../bin/collisionAvoidance: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o
../bin/collisionAvoidance: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o
../bin/collisionAvoidance: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o
../bin/collisionAvoidance: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o
../bin/collisionAvoidance: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o
../bin/collisionAvoidance: CMakeFiles/collisionAvoidance.dir/build.make
../bin/collisionAvoidance: CMakeFiles/collisionAvoidance.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/collisionAvoidance"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/collisionAvoidance.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/collisionAvoidance.dir/build: ../bin/collisionAvoidance
.PHONY : CMakeFiles/collisionAvoidance.dir/build

CMakeFiles/collisionAvoidance.dir/requires: CMakeFiles/collisionAvoidance.dir/src/collisionAvoidance.o.requires
CMakeFiles/collisionAvoidance.dir/requires: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardDefs.o.requires
CMakeFiles/collisionAvoidance.dir/requires: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/cobject.o.requires
CMakeFiles/collisionAvoidance.dir/requires: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/force.o.requires
CMakeFiles/collisionAvoidance.dir/requires: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/pobject.o.requires
CMakeFiles/collisionAvoidance.dir/requires: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/standardFuncs.o.requires
CMakeFiles/collisionAvoidance.dir/requires: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/vmath.o.requires
CMakeFiles/collisionAvoidance.dir/requires: CMakeFiles/collisionAvoidance.dir/src/AU_UAV_ROS/dubins.o.requires
.PHONY : CMakeFiles/collisionAvoidance.dir/requires

CMakeFiles/collisionAvoidance.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/collisionAvoidance.dir/cmake_clean.cmake
.PHONY : CMakeFiles/collisionAvoidance.dir/clean

CMakeFiles/collisionAvoidance.dir/depend:
	cd /home/hosea/ros_workspace/AU_UAV_ROS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hosea/ros_workspace/AU_UAV_ROS /home/hosea/ros_workspace/AU_UAV_ROS /home/hosea/ros_workspace/AU_UAV_ROS/build /home/hosea/ros_workspace/AU_UAV_ROS/build /home/hosea/ros_workspace/AU_UAV_ROS/build/CMakeFiles/collisionAvoidance.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/collisionAvoidance.dir/depend

