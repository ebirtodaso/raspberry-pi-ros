; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude GetPressure-request.msg.html

(cl:defclass <GetPressure-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPressure-request (<GetPressure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPressure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPressure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetPressure-request> is deprecated: use sensehat_ros-srv:GetPressure-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPressure-request>) ostream)
  "Serializes a message object of type '<GetPressure-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPressure-request>) istream)
  "Deserializes a message object of type '<GetPressure-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPressure-request>)))
  "Returns string type for a service object of type '<GetPressure-request>"
  "sensehat_ros/GetPressureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPressure-request)))
  "Returns string type for a service object of type 'GetPressure-request"
  "sensehat_ros/GetPressureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPressure-request>)))
  "Returns md5sum for a message object of type '<GetPressure-request>"
  "96df4beb6a408783cb39b2bac74b5b16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPressure-request)))
  "Returns md5sum for a message object of type 'GetPressure-request"
  "96df4beb6a408783cb39b2bac74b5b16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPressure-request>)))
  "Returns full string definition for message of type '<GetPressure-request>"
  (cl:format cl:nil "# gets the current pressure in Millibars from the pressure sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPressure-request)))
  "Returns full string definition for message of type 'GetPressure-request"
  (cl:format cl:nil "# gets the current pressure in Millibars from the pressure sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPressure-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPressure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPressure-request
))
;//! \htmlinclude GetPressure-response.msg.html

(cl:defclass <GetPressure-response> (roslisp-msg-protocol:ros-message)
  ((pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetPressure-response (<GetPressure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPressure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPressure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetPressure-response> is deprecated: use sensehat_ros-srv:GetPressure-response instead.")))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <GetPressure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:pressure-val is deprecated.  Use sensehat_ros-srv:pressure instead.")
  (pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPressure-response>) ostream)
  "Serializes a message object of type '<GetPressure-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPressure-response>) istream)
  "Deserializes a message object of type '<GetPressure-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPressure-response>)))
  "Returns string type for a service object of type '<GetPressure-response>"
  "sensehat_ros/GetPressureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPressure-response)))
  "Returns string type for a service object of type 'GetPressure-response"
  "sensehat_ros/GetPressureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPressure-response>)))
  "Returns md5sum for a message object of type '<GetPressure-response>"
  "96df4beb6a408783cb39b2bac74b5b16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPressure-response)))
  "Returns md5sum for a message object of type 'GetPressure-response"
  "96df4beb6a408783cb39b2bac74b5b16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPressure-response>)))
  "Returns full string definition for message of type '<GetPressure-response>"
  (cl:format cl:nil "float64 pressure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPressure-response)))
  "Returns full string definition for message of type 'GetPressure-response"
  (cl:format cl:nil "float64 pressure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPressure-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPressure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPressure-response
    (cl:cons ':pressure (pressure msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPressure)))
  'GetPressure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPressure)))
  'GetPressure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPressure)))
  "Returns string type for a service object of type '<GetPressure>"
  "sensehat_ros/GetPressure")