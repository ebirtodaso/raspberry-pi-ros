; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude GetEnvironmental-request.msg.html

(cl:defclass <GetEnvironmental-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetEnvironmental-request (<GetEnvironmental-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEnvironmental-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEnvironmental-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetEnvironmental-request> is deprecated: use sensehat_ros-srv:GetEnvironmental-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEnvironmental-request>) ostream)
  "Serializes a message object of type '<GetEnvironmental-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEnvironmental-request>) istream)
  "Deserializes a message object of type '<GetEnvironmental-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEnvironmental-request>)))
  "Returns string type for a service object of type '<GetEnvironmental-request>"
  "sensehat_ros/GetEnvironmentalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvironmental-request)))
  "Returns string type for a service object of type 'GetEnvironmental-request"
  "sensehat_ros/GetEnvironmentalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEnvironmental-request>)))
  "Returns md5sum for a message object of type '<GetEnvironmental-request>"
  "59eda83d9763a27d7339a28eb5d390bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEnvironmental-request)))
  "Returns md5sum for a message object of type 'GetEnvironmental-request"
  "59eda83d9763a27d7339a28eb5d390bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEnvironmental-request>)))
  "Returns full string definition for message of type '<GetEnvironmental-request>"
  (cl:format cl:nil "# gets the current humidity and temperature from the humidity sensor and temperature and pressure from the pressure sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEnvironmental-request)))
  "Returns full string definition for message of type 'GetEnvironmental-request"
  (cl:format cl:nil "# gets the current humidity and temperature from the humidity sensor and temperature and pressure from the pressure sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEnvironmental-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEnvironmental-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEnvironmental-request
))
;//! \htmlinclude GetEnvironmental-response.msg.html

(cl:defclass <GetEnvironmental-response> (roslisp-msg-protocol:ros-message)
  ((environmental
    :reader environmental
    :initarg :environmental
    :type sensehat_ros-msg:Environmental
    :initform (cl:make-instance 'sensehat_ros-msg:Environmental)))
)

(cl:defclass GetEnvironmental-response (<GetEnvironmental-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEnvironmental-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEnvironmental-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetEnvironmental-response> is deprecated: use sensehat_ros-srv:GetEnvironmental-response instead.")))

(cl:ensure-generic-function 'environmental-val :lambda-list '(m))
(cl:defmethod environmental-val ((m <GetEnvironmental-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:environmental-val is deprecated.  Use sensehat_ros-srv:environmental instead.")
  (environmental m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEnvironmental-response>) ostream)
  "Serializes a message object of type '<GetEnvironmental-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'environmental) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEnvironmental-response>) istream)
  "Deserializes a message object of type '<GetEnvironmental-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'environmental) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEnvironmental-response>)))
  "Returns string type for a service object of type '<GetEnvironmental-response>"
  "sensehat_ros/GetEnvironmentalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvironmental-response)))
  "Returns string type for a service object of type 'GetEnvironmental-response"
  "sensehat_ros/GetEnvironmentalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEnvironmental-response>)))
  "Returns md5sum for a message object of type '<GetEnvironmental-response>"
  "59eda83d9763a27d7339a28eb5d390bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEnvironmental-response)))
  "Returns md5sum for a message object of type 'GetEnvironmental-response"
  "59eda83d9763a27d7339a28eb5d390bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEnvironmental-response>)))
  "Returns full string definition for message of type '<GetEnvironmental-response>"
  (cl:format cl:nil "Environmental environmental~%~%================================================================================~%MSG: sensehat_ros/Environmental~%# Hold data extracted from Sense HAT environmental sensors (humidity and pressure)~%Header header~%# Percentage of relative humidity ~%float64 humidity~%# Temperature in degrees Celsius from the humidity sensor~%float64 temperature_from_humidity~%# Temperature in degrees Celsius from the pressure sensor~%float64 temperature_from_pressure~%# Pressure in Millibars~%float64 pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEnvironmental-response)))
  "Returns full string definition for message of type 'GetEnvironmental-response"
  (cl:format cl:nil "Environmental environmental~%~%================================================================================~%MSG: sensehat_ros/Environmental~%# Hold data extracted from Sense HAT environmental sensors (humidity and pressure)~%Header header~%# Percentage of relative humidity ~%float64 humidity~%# Temperature in degrees Celsius from the humidity sensor~%float64 temperature_from_humidity~%# Temperature in degrees Celsius from the pressure sensor~%float64 temperature_from_pressure~%# Pressure in Millibars~%float64 pressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEnvironmental-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'environmental))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEnvironmental-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEnvironmental-response
    (cl:cons ':environmental (environmental msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEnvironmental)))
  'GetEnvironmental-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEnvironmental)))
  'GetEnvironmental-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvironmental)))
  "Returns string type for a service object of type '<GetEnvironmental>"
  "sensehat_ros/GetEnvironmental")