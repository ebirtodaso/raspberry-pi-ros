; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude Clear-request.msg.html

(cl:defclass <Clear-request> (roslisp-msg-protocol:ros-message)
  ((colour
    :reader colour
    :initarg :colour
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass Clear-request (<Clear-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Clear-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Clear-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<Clear-request> is deprecated: use sensehat_ros-srv:Clear-request instead.")))

(cl:ensure-generic-function 'colour-val :lambda-list '(m))
(cl:defmethod colour-val ((m <Clear-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:colour-val is deprecated.  Use sensehat_ros-srv:colour instead.")
  (colour m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <Clear-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:duration-val is deprecated.  Use sensehat_ros-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Clear-request>) ostream)
  "Serializes a message object of type '<Clear-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'colour))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Clear-request>) istream)
  "Deserializes a message object of type '<Clear-request>"
  (cl:setf (cl:slot-value msg 'colour) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'colour)))
    (cl:dotimes (i 3)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Clear-request>)))
  "Returns string type for a service object of type '<Clear-request>"
  "sensehat_ros/ClearRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Clear-request)))
  "Returns string type for a service object of type 'Clear-request"
  "sensehat_ros/ClearRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Clear-request>)))
  "Returns md5sum for a message object of type '<Clear-request>"
  "d1af828257b651791f41f5836fa55cda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Clear-request)))
  "Returns md5sum for a message object of type 'Clear-request"
  "d1af828257b651791f41f5836fa55cda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Clear-request>)))
  "Returns full string definition for message of type '<Clear-request>"
  (cl:format cl:nil "# sets all of the 64 LED matrix pixels to the specified RGB color and waits for the specified amount of seconds~%int16[3] colour~%float64 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Clear-request)))
  "Returns full string definition for message of type 'Clear-request"
  (cl:format cl:nil "# sets all of the 64 LED matrix pixels to the specified RGB color and waits for the specified amount of seconds~%int16[3] colour~%float64 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Clear-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'colour) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Clear-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Clear-request
    (cl:cons ':colour (colour msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude Clear-response.msg.html

(cl:defclass <Clear-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Clear-response (<Clear-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Clear-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Clear-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<Clear-response> is deprecated: use sensehat_ros-srv:Clear-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Clear-response>) ostream)
  "Serializes a message object of type '<Clear-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Clear-response>) istream)
  "Deserializes a message object of type '<Clear-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Clear-response>)))
  "Returns string type for a service object of type '<Clear-response>"
  "sensehat_ros/ClearResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Clear-response)))
  "Returns string type for a service object of type 'Clear-response"
  "sensehat_ros/ClearResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Clear-response>)))
  "Returns md5sum for a message object of type '<Clear-response>"
  "d1af828257b651791f41f5836fa55cda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Clear-response)))
  "Returns md5sum for a message object of type 'Clear-response"
  "d1af828257b651791f41f5836fa55cda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Clear-response>)))
  "Returns full string definition for message of type '<Clear-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Clear-response)))
  "Returns full string definition for message of type 'Clear-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Clear-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Clear-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Clear-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Clear)))
  'Clear-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Clear)))
  'Clear-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Clear)))
  "Returns string type for a service object of type '<Clear>"
  "sensehat_ros/Clear")