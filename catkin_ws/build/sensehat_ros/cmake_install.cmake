# Install script for directory: /home/pebble/test/catkin_ws/src/sensehat_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/pebble/test/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensehat_ros/msg" TYPE FILE FILES
    "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensehat_ros/srv" TYPE FILE FILES
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv"
    "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensehat_ros/cmake" TYPE FILE FILES "/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/installspace/sensehat_ros-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/pebble/test/catkin_ws/devel/include/sensehat_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/pebble/test/catkin_ws/devel/share/roseus/ros/sensehat_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/pebble/test/catkin_ws/devel/share/common-lisp/ros/sensehat_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/pebble/test/catkin_ws/devel/share/gennodejs/ros/sensehat_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/pebble/test/catkin_ws/devel/lib/python2.7/dist-packages/sensehat_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/pebble/test/catkin_ws/devel/lib/python2.7/dist-packages/sensehat_ros" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/pebble/test/catkin_ws/devel/lib/python2.7/dist-packages/sensehat_ros" FILES_MATCHING REGEX "/home/pebble/test/catkin_ws/devel/lib/python2.7/dist-packages/sensehat_ros/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/installspace/sensehat_ros.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensehat_ros/cmake" TYPE FILE FILES "/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/installspace/sensehat_ros-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensehat_ros/cmake" TYPE FILE FILES
    "/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/installspace/sensehat_rosConfig.cmake"
    "/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/installspace/sensehat_rosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensehat_ros" TYPE FILE FILES "/home/pebble/test/catkin_ws/src/sensehat_ros/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sensehat_ros" TYPE PROGRAM FILES "/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/installspace/sensehat_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sensehat_ros" TYPE PROGRAM FILES "/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/installspace/sample_listener")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sensehat_ros" TYPE PROGRAM FILES "/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/installspace/sample_client")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sensehat_ros" TYPE PROGRAM FILES "/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/installspace/test_client")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sensehat_ros" TYPE PROGRAM FILES "/home/pebble/test/catkin_ws/build/sensehat_ros/catkin_generated/installspace/test_listener")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensehat_ros/launch" TYPE DIRECTORY FILES "/home/pebble/test/catkin_ws/src/sensehat_ros/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensehat_ros/config" TYPE DIRECTORY FILES "/home/pebble/test/catkin_ws/src/sensehat_ros/config/")
endif()

