; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude GetIMU-request.msg.html

(cl:defclass <GetIMU-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass GetIMU-request (<GetIMU-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIMU-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIMU-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetIMU-request> is deprecated: use sensehat_ros-srv:GetIMU-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GetIMU-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:mode-val is deprecated.  Use sensehat_ros-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIMU-request>) ostream)
  "Serializes a message object of type '<GetIMU-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIMU-request>) istream)
  "Deserializes a message object of type '<GetIMU-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIMU-request>)))
  "Returns string type for a service object of type '<GetIMU-request>"
  "sensehat_ros/GetIMURequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIMU-request)))
  "Returns string type for a service object of type 'GetIMU-request"
  "sensehat_ros/GetIMURequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIMU-request>)))
  "Returns md5sum for a message object of type '<GetIMU-request>"
  "fa30723e781c08a11913d9b01e09b1ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIMU-request)))
  "Returns md5sum for a message object of type 'GetIMU-request"
  "fa30723e781c08a11913d9b01e09b1ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIMU-request>)))
  "Returns full string definition for message of type '<GetIMU-request>"
  (cl:format cl:nil "# queries Sense HAT IMU sensor. Warning: not allowed when imu_publishing=True due to potential set_imu_config interference~%string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIMU-request)))
  "Returns full string definition for message of type 'GetIMU-request"
  (cl:format cl:nil "# queries Sense HAT IMU sensor. Warning: not allowed when imu_publishing=True due to potential set_imu_config interference~%string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIMU-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIMU-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIMU-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude GetIMU-response.msg.html

(cl:defclass <GetIMU-response> (roslisp-msg-protocol:ros-message)
  ((imu
    :reader imu
    :initarg :imu
    :type sensehat_ros-msg:IMU
    :initform (cl:make-instance 'sensehat_ros-msg:IMU)))
)

(cl:defclass GetIMU-response (<GetIMU-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIMU-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIMU-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetIMU-response> is deprecated: use sensehat_ros-srv:GetIMU-response instead.")))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <GetIMU-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:imu-val is deprecated.  Use sensehat_ros-srv:imu instead.")
  (imu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIMU-response>) ostream)
  "Serializes a message object of type '<GetIMU-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIMU-response>) istream)
  "Deserializes a message object of type '<GetIMU-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIMU-response>)))
  "Returns string type for a service object of type '<GetIMU-response>"
  "sensehat_ros/GetIMUResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIMU-response)))
  "Returns string type for a service object of type 'GetIMU-response"
  "sensehat_ros/GetIMUResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIMU-response>)))
  "Returns md5sum for a message object of type '<GetIMU-response>"
  "fa30723e781c08a11913d9b01e09b1ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIMU-response)))
  "Returns md5sum for a message object of type 'GetIMU-response"
  "fa30723e781c08a11913d9b01e09b1ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIMU-response>)))
  "Returns full string definition for message of type '<GetIMU-response>"
  (cl:format cl:nil "IMU imu~%~%================================================================================~%MSG: sensehat_ros/IMU~%# Hold data extracted from the Sense HAT IMU sensor.~%# Fields x, y and z assume different meaning depending on the selected mode.~%# Modes ending with \"_rpy\" assign (roll, pitch, yaw) values to (x, y, z). ~%Header header~%# Indicates the API function used to extract data from the IMU. Valid values are:~%#   * get_orientation_radians_rpy~%#   * get_orientation_degrees_rpy~%#   * get_compass_raw_xyz~%#   * get_gyroscope_rpy~%#   * get_gyroscope_raw_xyz~%#   * get_accelerometer_rpy~%#   * get_accelerometer_raw_xyzstring mode~%string mode~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIMU-response)))
  "Returns full string definition for message of type 'GetIMU-response"
  (cl:format cl:nil "IMU imu~%~%================================================================================~%MSG: sensehat_ros/IMU~%# Hold data extracted from the Sense HAT IMU sensor.~%# Fields x, y and z assume different meaning depending on the selected mode.~%# Modes ending with \"_rpy\" assign (roll, pitch, yaw) values to (x, y, z). ~%Header header~%# Indicates the API function used to extract data from the IMU. Valid values are:~%#   * get_orientation_radians_rpy~%#   * get_orientation_degrees_rpy~%#   * get_compass_raw_xyz~%#   * get_gyroscope_rpy~%#   * get_gyroscope_raw_xyz~%#   * get_accelerometer_rpy~%#   * get_accelerometer_raw_xyzstring mode~%string mode~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIMU-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIMU-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIMU-response
    (cl:cons ':imu (imu msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIMU)))
  'GetIMU-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIMU)))
  'GetIMU-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIMU)))
  "Returns string type for a service object of type '<GetIMU>"
  "sensehat_ros/GetIMU")