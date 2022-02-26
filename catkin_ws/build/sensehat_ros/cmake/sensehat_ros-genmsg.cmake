# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sensehat_ros: 3 messages, 12 services")

set(MSG_I_FLAGS "-Isensehat_ros:/home/pebble/test/catkin_ws/src/sensehat_ros/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sensehat_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv" "sensehat_ros/IMU:std_msgs/Header"
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv" ""
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv" ""
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv" ""
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv" ""
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv" ""
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv" "sensehat_ros/Environmental:std_msgs/Header"
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv" ""
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv" ""
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv" ""
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv" ""
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv" NAME_WE)
add_custom_target(_sensehat_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensehat_ros" "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_msg_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_msg_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)

### Generating Services
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv"
  "${MSG_I_FLAGS}"
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv"
  "${MSG_I_FLAGS}"
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_cpp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
)

### Generating Module File
_generate_module_cpp(sensehat_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sensehat_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sensehat_ros_generate_messages sensehat_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_cpp _sensehat_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensehat_ros_gencpp)
add_dependencies(sensehat_ros_gencpp sensehat_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensehat_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_msg_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_msg_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)

### Generating Services
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv"
  "${MSG_I_FLAGS}"
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv"
  "${MSG_I_FLAGS}"
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)
_generate_srv_eus(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
)

### Generating Module File
_generate_module_eus(sensehat_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sensehat_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sensehat_ros_generate_messages sensehat_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_eus _sensehat_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensehat_ros_geneus)
add_dependencies(sensehat_ros_geneus sensehat_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensehat_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_msg_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_msg_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)

### Generating Services
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv"
  "${MSG_I_FLAGS}"
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv"
  "${MSG_I_FLAGS}"
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)
_generate_srv_lisp(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
)

### Generating Module File
_generate_module_lisp(sensehat_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sensehat_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sensehat_ros_generate_messages sensehat_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_lisp _sensehat_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensehat_ros_genlisp)
add_dependencies(sensehat_ros_genlisp sensehat_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensehat_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_msg_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_msg_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)

### Generating Services
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv"
  "${MSG_I_FLAGS}"
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv"
  "${MSG_I_FLAGS}"
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)
_generate_srv_nodejs(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
)

### Generating Module File
_generate_module_nodejs(sensehat_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sensehat_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sensehat_ros_generate_messages sensehat_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_nodejs _sensehat_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensehat_ros_gennodejs)
add_dependencies(sensehat_ros_gennodejs sensehat_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensehat_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_msg_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_msg_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)

### Generating Services
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv"
  "${MSG_I_FLAGS}"
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv"
  "${MSG_I_FLAGS}"
  "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)
_generate_srv_py(sensehat_ros
  "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
)

### Generating Module File
_generate_module_py(sensehat_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sensehat_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sensehat_ros_generate_messages sensehat_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetIMU.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SwitchLowLight.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowMessage.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetPressure.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetHumidity.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/SetPixels.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Environmental.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetEnvironmental.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/IMU.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/Clear.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/ShowLetter.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/EmulateStick.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetCompass.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/msg/Stick.msg" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pebble/test/catkin_ws/src/sensehat_ros/srv/GetTemperature.srv" NAME_WE)
add_dependencies(sensehat_ros_generate_messages_py _sensehat_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensehat_ros_genpy)
add_dependencies(sensehat_ros_genpy sensehat_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensehat_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensehat_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sensehat_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensehat_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sensehat_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensehat_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sensehat_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensehat_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sensehat_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensehat_ros/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sensehat_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
