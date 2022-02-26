; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude GetCompass-request.msg.html

(cl:defclass <GetCompass-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCompass-request (<GetCompass-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCompass-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCompass-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetCompass-request> is deprecated: use sensehat_ros-srv:GetCompass-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCompass-request>) ostream)
  "Serializes a message object of type '<GetCompass-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCompass-request>) istream)
  "Deserializes a message object of type '<GetCompass-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCompass-request>)))
  "Returns string type for a service object of type '<GetCompass-request>"
  "sensehat_ros/GetCompassRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCompass-request)))
  "Returns string type for a service object of type 'GetCompass-request"
  "sensehat_ros/GetCompassRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCompass-request>)))
  "Returns md5sum for a message object of type '<GetCompass-request>"
  "3c9cf463517905dca2521bd4ad9d8bf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCompass-request)))
  "Returns md5sum for a message object of type 'GetCompass-request"
  "3c9cf463517905dca2521bd4ad9d8bf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCompass-request>)))
  "Returns full string definition for message of type '<GetCompass-request>"
  (cl:format cl:nil "# gets the direction of North from the magnetometer in degrees. Warning: not allowed when imu_publishing=True due to potential set_imu_config interference~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCompass-request)))
  "Returns full string definition for message of type 'GetCompass-request"
  (cl:format cl:nil "# gets the direction of North from the magnetometer in degrees. Warning: not allowed when imu_publishing=True due to potential set_imu_config interference~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCompass-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCompass-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCompass-request
))
;//! \htmlinclude GetCompass-response.msg.html

(cl:defclass <GetCompass-response> (roslisp-msg-protocol:ros-message)
  ((compass
    :reader compass
    :initarg :compass
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetCompass-response (<GetCompass-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCompass-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCompass-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetCompass-response> is deprecated: use sensehat_ros-srv:GetCompass-response instead.")))

(cl:ensure-generic-function 'compass-val :lambda-list '(m))
(cl:defmethod compass-val ((m <GetCompass-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:compass-val is deprecated.  Use sensehat_ros-srv:compass instead.")
  (compass m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCompass-response>) ostream)
  "Serializes a message object of type '<GetCompass-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'compass))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCompass-response>) istream)
  "Deserializes a message object of type '<GetCompass-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'compass) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCompass-response>)))
  "Returns string type for a service object of type '<GetCompass-response>"
  "sensehat_ros/GetCompassResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCompass-response)))
  "Returns string type for a service object of type 'GetCompass-response"
  "sensehat_ros/GetCompassResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCompass-response>)))
  "Returns md5sum for a message object of type '<GetCompass-response>"
  "3c9cf463517905dca2521bd4ad9d8bf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCompass-response)))
  "Returns md5sum for a message object of type 'GetCompass-response"
  "3c9cf463517905dca2521bd4ad9d8bf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCompass-response>)))
  "Returns full string definition for message of type '<GetCompass-response>"
  (cl:format cl:nil "float64 compass~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCompass-response)))
  "Returns full string definition for message of type 'GetCompass-response"
  (cl:format cl:nil "float64 compass~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCompass-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCompass-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCompass-response
    (cl:cons ':compass (compass msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCompass)))
  'GetCompass-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCompass)))
  'GetCompass-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCompass)))
  "Returns string type for a service object of type '<GetCompass>"
  "sensehat_ros/GetCompass")