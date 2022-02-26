; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude ShowLetter-request.msg.html

(cl:defclass <ShowLetter-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (text_colour
    :reader text_colour
    :initarg :text_colour
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (back_colour
    :reader back_colour
    :initarg :back_colour
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass ShowLetter-request (<ShowLetter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowLetter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowLetter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<ShowLetter-request> is deprecated: use sensehat_ros-srv:ShowLetter-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <ShowLetter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:text-val is deprecated.  Use sensehat_ros-srv:text instead.")
  (text m))

(cl:ensure-generic-function 'text_colour-val :lambda-list '(m))
(cl:defmethod text_colour-val ((m <ShowLetter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:text_colour-val is deprecated.  Use sensehat_ros-srv:text_colour instead.")
  (text_colour m))

(cl:ensure-generic-function 'back_colour-val :lambda-list '(m))
(cl:defmethod back_colour-val ((m <ShowLetter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:back_colour-val is deprecated.  Use sensehat_ros-srv:back_colour instead.")
  (back_colour m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <ShowLetter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:duration-val is deprecated.  Use sensehat_ros-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowLetter-request>) ostream)
  "Serializes a message object of type '<ShowLetter-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowLetter-request>) istream)
  "Deserializes a message object of type '<ShowLetter-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowLetter-request>)))
  "Returns string type for a service object of type '<ShowLetter-request>"
  "sensehat_ros/ShowLetterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowLetter-request)))
  "Returns string type for a service object of type 'ShowLetter-request"
  "sensehat_ros/ShowLetterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowLetter-request>)))
  "Returns md5sum for a message object of type '<ShowLetter-request>"
  "2e9a1baf1bf4e3e4917790796f05c5e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowLetter-request)))
  "Returns md5sum for a message object of type 'ShowLetter-request"
  "2e9a1baf1bf4e3e4917790796f05c5e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowLetter-request>)))
  "Returns full string definition for message of type '<ShowLetter-request>"
  (cl:format cl:nil "# shows a letter on the LED matrix and waits for the specified amount of seconds~%string text~%int16[3] text_colour~%int16[3] back_colour~%float64 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowLetter-request)))
  "Returns full string definition for message of type 'ShowLetter-request"
  (cl:format cl:nil "# shows a letter on the LED matrix and waits for the specified amount of seconds~%string text~%int16[3] text_colour~%int16[3] back_colour~%float64 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowLetter-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'text_colour) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'back_colour) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowLetter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowLetter-request
    (cl:cons ':text (text msg))
    (cl:cons ':text_colour (text_colour msg))
    (cl:cons ':back_colour (back_colour msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude ShowLetter-response.msg.html

(cl:defclass <ShowLetter-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ShowLetter-response (<ShowLetter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShowLetter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShowLetter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<ShowLetter-response> is deprecated: use sensehat_ros-srv:ShowLetter-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShowLetter-response>) ostream)
  "Serializes a message object of type '<ShowLetter-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShowLetter-response>) istream)
  "Deserializes a message object of type '<ShowLetter-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShowLetter-response>)))
  "Returns string type for a service object of type '<ShowLetter-response>"
  "sensehat_ros/ShowLetterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowLetter-response)))
  "Returns string type for a service object of type 'ShowLetter-response"
  "sensehat_ros/ShowLetterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShowLetter-response>)))
  "Returns md5sum for a message object of type '<ShowLetter-response>"
  "2e9a1baf1bf4e3e4917790796f05c5e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShowLetter-response)))
  "Returns md5sum for a message object of type 'ShowLetter-response"
  "2e9a1baf1bf4e3e4917790796f05c5e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShowLetter-response>)))
  "Returns full string definition for message of type '<ShowLetter-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShowLetter-response)))
  "Returns full string definition for message of type 'ShowLetter-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShowLetter-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShowLetter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShowLetter-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShowLetter)))
  'ShowLetter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShowLetter)))
  'ShowLetter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShowLetter)))
  "Returns string type for a service object of type '<ShowLetter>"
  "sensehat_ros/ShowLetter")