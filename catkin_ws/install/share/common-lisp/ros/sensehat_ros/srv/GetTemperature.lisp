; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude GetTemperature-request.msg.html

(cl:defclass <GetTemperature-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTemperature-request (<GetTemperature-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTemperature-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTemperature-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetTemperature-request> is deprecated: use sensehat_ros-srv:GetTemperature-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTemperature-request>) ostream)
  "Serializes a message object of type '<GetTemperature-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTemperature-request>) istream)
  "Deserializes a message object of type '<GetTemperature-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTemperature-request>)))
  "Returns string type for a service object of type '<GetTemperature-request>"
  "sensehat_ros/GetTemperatureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTemperature-request)))
  "Returns string type for a service object of type 'GetTemperature-request"
  "sensehat_ros/GetTemperatureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTemperature-request>)))
  "Returns md5sum for a message object of type '<GetTemperature-request>"
  "3d36f909fc0be819c991c4abdee75a2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTemperature-request)))
  "Returns md5sum for a message object of type 'GetTemperature-request"
  "3d36f909fc0be819c991c4abdee75a2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTemperature-request>)))
  "Returns full string definition for message of type '<GetTemperature-request>"
  (cl:format cl:nil "# gets the current temperature in degrees Celsius from the humidity sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTemperature-request)))
  "Returns full string definition for message of type 'GetTemperature-request"
  (cl:format cl:nil "# gets the current temperature in degrees Celsius from the humidity sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTemperature-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTemperature-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTemperature-request
))
;//! \htmlinclude GetTemperature-response.msg.html

(cl:defclass <GetTemperature-response> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetTemperature-response (<GetTemperature-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTemperature-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTemperature-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetTemperature-response> is deprecated: use sensehat_ros-srv:GetTemperature-response instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <GetTemperature-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:temperature-val is deprecated.  Use sensehat_ros-srv:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTemperature-response>) ostream)
  "Serializes a message object of type '<GetTemperature-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTemperature-response>) istream)
  "Deserializes a message object of type '<GetTemperature-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTemperature-response>)))
  "Returns string type for a service object of type '<GetTemperature-response>"
  "sensehat_ros/GetTemperatureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTemperature-response)))
  "Returns string type for a service object of type 'GetTemperature-response"
  "sensehat_ros/GetTemperatureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTemperature-response>)))
  "Returns md5sum for a message object of type '<GetTemperature-response>"
  "3d36f909fc0be819c991c4abdee75a2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTemperature-response)))
  "Returns md5sum for a message object of type 'GetTemperature-response"
  "3d36f909fc0be819c991c4abdee75a2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTemperature-response>)))
  "Returns full string definition for message of type '<GetTemperature-response>"
  (cl:format cl:nil "float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTemperature-response)))
  "Returns full string definition for message of type 'GetTemperature-response"
  (cl:format cl:nil "float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTemperature-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTemperature-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTemperature-response
    (cl:cons ':temperature (temperature msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTemperature)))
  'GetTemperature-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTemperature)))
  'GetTemperature-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTemperature)))
  "Returns string type for a service object of type '<GetTemperature>"
  "sensehat_ros/GetTemperature")