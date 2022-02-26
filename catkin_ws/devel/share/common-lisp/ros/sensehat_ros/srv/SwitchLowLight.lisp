; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude SwitchLowLight-request.msg.html

(cl:defclass <SwitchLowLight-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SwitchLowLight-request (<SwitchLowLight-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchLowLight-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchLowLight-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<SwitchLowLight-request> is deprecated: use sensehat_ros-srv:SwitchLowLight-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchLowLight-request>) ostream)
  "Serializes a message object of type '<SwitchLowLight-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchLowLight-request>) istream)
  "Deserializes a message object of type '<SwitchLowLight-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchLowLight-request>)))
  "Returns string type for a service object of type '<SwitchLowLight-request>"
  "sensehat_ros/SwitchLowLightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchLowLight-request)))
  "Returns string type for a service object of type 'SwitchLowLight-request"
  "sensehat_ros/SwitchLowLightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchLowLight-request>)))
  "Returns md5sum for a message object of type '<SwitchLowLight-request>"
  "28b22af2b341afecad6c7499580b70d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchLowLight-request)))
  "Returns md5sum for a message object of type 'SwitchLowLight-request"
  "28b22af2b341afecad6c7499580b70d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchLowLight-request>)))
  "Returns full string definition for message of type '<SwitchLowLight-request>"
  (cl:format cl:nil "# switches on/off the LED matrix “low light” mode and returns the current state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchLowLight-request)))
  "Returns full string definition for message of type 'SwitchLowLight-request"
  (cl:format cl:nil "# switches on/off the LED matrix “low light” mode and returns the current state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchLowLight-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchLowLight-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchLowLight-request
))
;//! \htmlinclude SwitchLowLight-response.msg.html

(cl:defclass <SwitchLowLight-response> (roslisp-msg-protocol:ros-message)
  ((low_light
    :reader low_light
    :initarg :low_light
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SwitchLowLight-response (<SwitchLowLight-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchLowLight-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchLowLight-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<SwitchLowLight-response> is deprecated: use sensehat_ros-srv:SwitchLowLight-response instead.")))

(cl:ensure-generic-function 'low_light-val :lambda-list '(m))
(cl:defmethod low_light-val ((m <SwitchLowLight-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:low_light-val is deprecated.  Use sensehat_ros-srv:low_light instead.")
  (low_light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchLowLight-response>) ostream)
  "Serializes a message object of type '<SwitchLowLight-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'low_light) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchLowLight-response>) istream)
  "Deserializes a message object of type '<SwitchLowLight-response>"
    (cl:setf (cl:slot-value msg 'low_light) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchLowLight-response>)))
  "Returns string type for a service object of type '<SwitchLowLight-response>"
  "sensehat_ros/SwitchLowLightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchLowLight-response)))
  "Returns string type for a service object of type 'SwitchLowLight-response"
  "sensehat_ros/SwitchLowLightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchLowLight-response>)))
  "Returns md5sum for a message object of type '<SwitchLowLight-response>"
  "28b22af2b341afecad6c7499580b70d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchLowLight-response)))
  "Returns md5sum for a message object of type 'SwitchLowLight-response"
  "28b22af2b341afecad6c7499580b70d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchLowLight-response>)))
  "Returns full string definition for message of type '<SwitchLowLight-response>"
  (cl:format cl:nil "bool low_light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchLowLight-response)))
  "Returns full string definition for message of type 'SwitchLowLight-response"
  (cl:format cl:nil "bool low_light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchLowLight-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchLowLight-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchLowLight-response
    (cl:cons ':low_light (low_light msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchLowLight)))
  'SwitchLowLight-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchLowLight)))
  'SwitchLowLight-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchLowLight)))
  "Returns string type for a service object of type '<SwitchLowLight>"
  "sensehat_ros/SwitchLowLight")