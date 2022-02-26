; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude ShowMessage-request.msg.html

(cl:defclass <ShowMessage-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (scroll_speed
    :reader scroll_speed
    :initarg :scroll_speed
    :type cl:float
    :initform 0.0)
   (text_colour
    :reader text_colour
    :initarg :text_colour
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (back_colour
    :reader back_colour
    :initarg :back_colour
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ShowMessage-request (<ShowMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<ShowMessage-request> is deprecated: use sensehat_ros-srv:ShowMessage-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <ShowMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:text-val is deprecated.  Use sensehat_ros-srv:text instead.")
  (text m))

(cl:ensure-generic-function 'scroll_speed-val :lambda-list '(m))
(cl:defmethod scroll_speed-val ((m <ShowMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:scroll_speed-val is deprecated.  Use sensehat_ros-srv:scroll_speed instead.")
  (scroll_speed m))

(cl:ensure-generic-function 'text_colour-val :lambda-list '(m))
(cl:defmethod text_colour-val ((m <ShowMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:text_colour-val is deprecated.  Use sensehat_ros-srv:text_colour instead.")
  (text_colour m))

(cl:ensure-generic-function 'back_colour-val :lambda-list '(m))
(cl:defmethod back_colour-val ((m <ShowMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:back_colour-val is deprecated.  Use sensehat_ros-srv:back_colour instead.")
  (back_colour m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowMessage-request>) ostream)
  "Serializes a message object of type '<ShowMessage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'scroll_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'text_colour))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'back_colour))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowMessage-request>) istream)
  "Deserializes a message object of type '<ShowMessage-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scroll_speed) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'text_colour) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'text_colour)))
    (cl:dotimes (i 3)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  (cl:setf (cl:slot-value msg 'back_colour) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'back_colour)))
    (cl:dotimes (i 3)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowMessage-request>)))
  "Returns string type for a service object of type '<ShowMessage-request>"
  "sensehat_ros/ShowMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowMessage-request)))
  "Returns string type for a service object of type 'ShowMessage-request"
  "sensehat_ros/ShowMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowMessage-request>)))
  "Returns md5sum for a message object of type '<ShowMessage-request>"
  "4db536e63c8164b2d79316cbb359b0f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowMessage-request)))
  "Returns md5sum for a message object of type 'ShowMessage-request"
  "4db536e63c8164b2d79316cbb359b0f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowMessage-request>)))
  "Returns full string definition for message of type '<ShowMessage-request>"
  (cl:format cl:nil "# scrolls a text message from right to left across the LED matrix and at the specified speed, in the specified colour and background colour~%string text~%float64 scroll_speed~%int16[3] text_colour~%int16[3] back_colour~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowMessage-request)))
  "Returns full string definition for message of type 'ShowMessage-request"
  (cl:format cl:nil "# scrolls a text message from right to left across the LED matrix and at the specified speed, in the specified colour and background colour~%string text~%float64 scroll_speed~%int16[3] text_colour~%int16[3] back_colour~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowMessage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'text_colour) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'back_colour) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowMessage-request
    (cl:cons ':text (text msg))
    (cl:cons ':scroll_speed (scroll_speed msg))
    (cl:cons ':text_colour (text_colour msg))
    (cl:cons ':back_colour (back_colour msg))
))
;//! \htmlinclude ShowMessage-response.msg.html

(cl:defclass <ShowMessage-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ShowMessage-response (<ShowMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<ShowMessage-response> is deprecated: use sensehat_ros-srv:ShowMessage-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowMessage-response>) ostream)
  "Serializes a message object of type '<ShowMessage-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowMessage-response>) istream)
  "Deserializes a message object of type '<ShowMessage-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowMessage-response>)))
  "Returns string type for a service object of type '<ShowMessage-response>"
  "sensehat_ros/ShowMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowMessage-response)))
  "Returns string type for a service object of type 'ShowMessage-response"
  "sensehat_ros/ShowMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowMessage-response>)))
  "Returns md5sum for a message object of type '<ShowMessage-response>"
  "4db536e63c8164b2d79316cbb359b0f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowMessage-response)))
  "Returns md5sum for a message object of type 'ShowMessage-response"
  "4db536e63c8164b2d79316cbb359b0f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowMessage-response>)))
  "Returns full string definition for message of type '<ShowMessage-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowMessage-response)))
  "Returns full string definition for message of type 'ShowMessage-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowMessage-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowMessage-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShowMessage)))
  'ShowMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShowMessage)))
  'ShowMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowMessage)))
  "Returns string type for a service object of type '<ShowMessage>"
  "sensehat_ros/ShowMessage")