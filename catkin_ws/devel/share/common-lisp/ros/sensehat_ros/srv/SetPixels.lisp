; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude SetPixels-request.msg.html

(cl:defclass <SetPixels-request> (roslisp-msg-protocol:ros-message)
  ((pixels_red
    :reader pixels_red
    :initarg :pixels_red
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 64 :element-type 'cl:fixnum :initial-element 0))
   (pixels_green
    :reader pixels_green
    :initarg :pixels_green
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 64 :element-type 'cl:fixnum :initial-element 0))
   (pixels_blue
    :reader pixels_blue
    :initarg :pixels_blue
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 64 :element-type 'cl:fixnum :initial-element 0))
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetPixels-request (<SetPixels-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPixels-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPixels-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<SetPixels-request> is deprecated: use sensehat_ros-srv:SetPixels-request instead.")))

(cl:ensure-generic-function 'pixels_red-val :lambda-list '(m))
(cl:defmethod pixels_red-val ((m <SetPixels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:pixels_red-val is deprecated.  Use sensehat_ros-srv:pixels_red instead.")
  (pixels_red m))

(cl:ensure-generic-function 'pixels_green-val :lambda-list '(m))
(cl:defmethod pixels_green-val ((m <SetPixels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:pixels_green-val is deprecated.  Use sensehat_ros-srv:pixels_green instead.")
  (pixels_green m))

(cl:ensure-generic-function 'pixels_blue-val :lambda-list '(m))
(cl:defmethod pixels_blue-val ((m <SetPixels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:pixels_blue-val is deprecated.  Use sensehat_ros-srv:pixels_blue instead.")
  (pixels_blue m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SetPixels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:duration-val is deprecated.  Use sensehat_ros-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPixels-request>) ostream)
  "Serializes a message object of type '<SetPixels-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'pixels_red))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'pixels_green))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'pixels_blue))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPixels-request>) istream)
  "Deserializes a message object of type '<SetPixels-request>"
  (cl:setf (cl:slot-value msg 'pixels_red) (cl:make-array 64))
  (cl:let ((vals (cl:slot-value msg 'pixels_red)))
    (cl:dotimes (i 64)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  (cl:setf (cl:slot-value msg 'pixels_green) (cl:make-array 64))
  (cl:let ((vals (cl:slot-value msg 'pixels_green)))
    (cl:dotimes (i 64)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  (cl:setf (cl:slot-value msg 'pixels_blue) (cl:make-array 64))
  (cl:let ((vals (cl:slot-value msg 'pixels_blue)))
    (cl:dotimes (i 64)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPixels-request>)))
  "Returns string type for a service object of type '<SetPixels-request>"
  "sensehat_ros/SetPixelsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPixels-request)))
  "Returns string type for a service object of type 'SetPixels-request"
  "sensehat_ros/SetPixelsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPixels-request>)))
  "Returns md5sum for a message object of type '<SetPixels-request>"
  "b50ba911a4776c69c8ff57eb35b1d884")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPixels-request)))
  "Returns md5sum for a message object of type 'SetPixels-request"
  "b50ba911a4776c69c8ff57eb35b1d884")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPixels-request>)))
  "Returns full string definition for message of type '<SetPixels-request>"
  (cl:format cl:nil "# sets each of the 64 LED matrix pixels to a specific RGB color and waits for the specified amount of seconds~%int16[64] pixels_red~%int16[64] pixels_green~%int16[64] pixels_blue~%float64 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPixels-request)))
  "Returns full string definition for message of type 'SetPixels-request"
  (cl:format cl:nil "# sets each of the 64 LED matrix pixels to a specific RGB color and waits for the specified amount of seconds~%int16[64] pixels_red~%int16[64] pixels_green~%int16[64] pixels_blue~%float64 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPixels-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pixels_red) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pixels_green) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pixels_blue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPixels-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPixels-request
    (cl:cons ':pixels_red (pixels_red msg))
    (cl:cons ':pixels_green (pixels_green msg))
    (cl:cons ':pixels_blue (pixels_blue msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude SetPixels-response.msg.html

(cl:defclass <SetPixels-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetPixels-response (<SetPixels-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPixels-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPixels-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<SetPixels-response> is deprecated: use sensehat_ros-srv:SetPixels-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPixels-response>) ostream)
  "Serializes a message object of type '<SetPixels-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPixels-response>) istream)
  "Deserializes a message object of type '<SetPixels-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPixels-response>)))
  "Returns string type for a service object of type '<SetPixels-response>"
  "sensehat_ros/SetPixelsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPixels-response)))
  "Returns string type for a service object of type 'SetPixels-response"
  "sensehat_ros/SetPixelsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPixels-response>)))
  "Returns md5sum for a message object of type '<SetPixels-response>"
  "b50ba911a4776c69c8ff57eb35b1d884")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPixels-response)))
  "Returns md5sum for a message object of type 'SetPixels-response"
  "b50ba911a4776c69c8ff57eb35b1d884")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPixels-response>)))
  "Returns full string definition for message of type '<SetPixels-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPixels-response)))
  "Returns full string definition for message of type 'SetPixels-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPixels-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPixels-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPixels-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPixels)))
  'SetPixels-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPixels)))
  'SetPixels-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPixels)))
  "Returns string type for a service object of type '<SetPixels>"
  "sensehat_ros/SetPixels")