; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-msg)


;//! \htmlinclude Environmental.msg.html

(cl:defclass <Environmental> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (humidity
    :reader humidity
    :initarg :humidity
    :type cl:float
    :initform 0.0)
   (temperature_from_humidity
    :reader temperature_from_humidity
    :initarg :temperature_from_humidity
    :type cl:float
    :initform 0.0)
   (temperature_from_pressure
    :reader temperature_from_pressure
    :initarg :temperature_from_pressure
    :type cl:float
    :initform 0.0)
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0))
)

(cl:defclass Environmental (<Environmental>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Environmental>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Environmental)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-msg:<Environmental> is deprecated: use sensehat_ros-msg:Environmental instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Environmental>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-msg:header-val is deprecated.  Use sensehat_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'humidity-val :lambda-list '(m))
(cl:defmethod humidity-val ((m <Environmental>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-msg:humidity-val is deprecated.  Use sensehat_ros-msg:humidity instead.")
  (humidity m))

(cl:ensure-generic-function 'temperature_from_humidity-val :lambda-list '(m))
(cl:defmethod temperature_from_humidity-val ((m <Environmental>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-msg:temperature_from_humidity-val is deprecated.  Use sensehat_ros-msg:temperature_from_humidity instead.")
  (temperature_from_humidity m))

(cl:ensure-generic-function 'temperature_from_pressure-val :lambda-list '(m))
(cl:defmethod temperature_from_pressure-val ((m <Environmental>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-msg:temperature_from_pressure-val is deprecated.  Use sensehat_ros-msg:temperature_from_pressure instead.")
  (temperature_from_pressure m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <Environmental>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-msg:pressure-val is deprecated.  Use sensehat_ros-msg:pressure instead.")
  (pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Environmental>) ostream)
  "Serializes a message object of type '<Environmental>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature_from_humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature_from_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Environmental>) istream)
  "Deserializes a message object of type '<Environmental>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'humidity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_from_humidity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_from_pressure) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Environmental>)))
  "Returns string type for a message object of type '<Environmental>"
  "sensehat_ros/Environmental")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Environmental)))
  "Returns string type for a message object of type 'Environmental"
  "sensehat_ros/Environmental")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Environmental>)))
  "Returns md5sum for a message object of type '<Environmental>"
  "68c3afb26b37144add6301d7bd68f356")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Environmental)))
  "Returns md5sum for a message object of type 'Environmental"
  "68c3afb26b37144add6301d7bd68f356")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Environmental>)))
  "Returns full string definition for message of type '<Environmental>"
  (cl:format cl:nil "# Hold data extracted from Sense HAT environmental sensors (humidity and pressure)~%Header header~%# Percentage of relative humidity ~%float64 humidity~%# Temperature in degrees Celsius from the humidity sensor~%float64 temperature_from_humidity~%# Temperature in degrees Celsius from the pressure sensor~%float64 temperature_from_pressure~%# Pressure in Millibars~%float64 pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Environmental)))
  "Returns full string definition for message of type 'Environmental"
  (cl:format cl:nil "# Hold data extracted from Sense HAT environmental sensors (humidity and pressure)~%Header header~%# Percentage of relative humidity ~%float64 humidity~%# Temperature in degrees Celsius from the humidity sensor~%float64 temperature_from_humidity~%# Temperature in degrees Celsius from the pressure sensor~%float64 temperature_from_pressure~%# Pressure in Millibars~%float64 pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Environmental>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Environmental>))
  "Converts a ROS message object to a list"
  (cl:list 'Environmental
    (cl:cons ':header (header msg))
    (cl:cons ':humidity (humidity msg))
    (cl:cons ':temperature_from_humidity (temperature_from_humidity msg))
    (cl:cons ':temperature_from_pressure (temperature_from_pressure msg))
    (cl:cons ':pressure (pressure msg))
))
