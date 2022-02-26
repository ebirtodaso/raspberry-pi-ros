; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude GetHumidity-request.msg.html

(cl:defclass <GetHumidity-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetHumidity-request (<GetHumidity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHumidity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHumidity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetHumidity-request> is deprecated: use sensehat_ros-srv:GetHumidity-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHumidity-request>) ostream)
  "Serializes a message object of type '<GetHumidity-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHumidity-request>) istream)
  "Deserializes a message object of type '<GetHumidity-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHumidity-request>)))
  "Returns string type for a service object of type '<GetHumidity-request>"
  "sensehat_ros/GetHumidityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHumidity-request)))
  "Returns string type for a service object of type 'GetHumidity-request"
  "sensehat_ros/GetHumidityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHumidity-request>)))
  "Returns md5sum for a message object of type '<GetHumidity-request>"
  "c8a984e8229c8179cd55100369522f34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHumidity-request)))
  "Returns md5sum for a message object of type 'GetHumidity-request"
  "c8a984e8229c8179cd55100369522f34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHumidity-request>)))
  "Returns full string definition for message of type '<GetHumidity-request>"
  (cl:format cl:nil "# gets the percentage of relative humidity from the humidity sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHumidity-request)))
  "Returns full string definition for message of type 'GetHumidity-request"
  (cl:format cl:nil "# gets the percentage of relative humidity from the humidity sensor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHumidity-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHumidity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHumidity-request
))
;//! \htmlinclude GetHumidity-response.msg.html

(cl:defclass <GetHumidity-response> (roslisp-msg-protocol:ros-message)
  ((humidity
    :reader humidity
    :initarg :humidity
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetHumidity-response (<GetHumidity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHumidity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHumidity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<GetHumidity-response> is deprecated: use sensehat_ros-srv:GetHumidity-response instead.")))

(cl:ensure-generic-function 'humidity-val :lambda-list '(m))
(cl:defmethod humidity-val ((m <GetHumidity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:humidity-val is deprecated.  Use sensehat_ros-srv:humidity instead.")
  (humidity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHumidity-response>) ostream)
  "Serializes a message object of type '<GetHumidity-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHumidity-response>) istream)
  "Deserializes a message object of type '<GetHumidity-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHumidity-response>)))
  "Returns string type for a service object of type '<GetHumidity-response>"
  "sensehat_ros/GetHumidityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHumidity-response)))
  "Returns string type for a service object of type 'GetHumidity-response"
  "sensehat_ros/GetHumidityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHumidity-response>)))
  "Returns md5sum for a message object of type '<GetHumidity-response>"
  "c8a984e8229c8179cd55100369522f34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHumidity-response)))
  "Returns md5sum for a message object of type 'GetHumidity-response"
  "c8a984e8229c8179cd55100369522f34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHumidity-response>)))
  "Returns full string definition for message of type '<GetHumidity-response>"
  (cl:format cl:nil "float64 humidity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHumidity-response)))
  "Returns full string definition for message of type 'GetHumidity-response"
  (cl:format cl:nil "float64 humidity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHumidity-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHumidity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHumidity-response
    (cl:cons ':humidity (humidity msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetHumidity)))
  'GetHumidity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetHumidity)))
  'GetHumidity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHumidity)))
  "Returns string type for a service object of type '<GetHumidity>"
  "sensehat_ros/GetHumidity")