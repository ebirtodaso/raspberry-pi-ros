; Auto-generated. Do not edit!


(cl:in-package sensehat_ros-srv)


;//! \htmlinclude EmulateStick-request.msg.html

(cl:defclass <EmulateStick-request> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform ""))
)

(cl:defclass EmulateStick-request (<EmulateStick-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmulateStick-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmulateStick-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<EmulateStick-request> is deprecated: use sensehat_ros-srv:EmulateStick-request instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <EmulateStick-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:direction-val is deprecated.  Use sensehat_ros-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <EmulateStick-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensehat_ros-srv:action-val is deprecated.  Use sensehat_ros-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmulateStick-request>) ostream)
  "Serializes a message object of type '<EmulateStick-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmulateStick-request>) istream)
  "Deserializes a message object of type '<EmulateStick-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmulateStick-request>)))
  "Returns string type for a service object of type '<EmulateStick-request>"
  "sensehat_ros/EmulateStickRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmulateStick-request)))
  "Returns string type for a service object of type 'EmulateStick-request"
  "sensehat_ros/EmulateStickRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmulateStick-request>)))
  "Returns md5sum for a message object of type '<EmulateStick-request>"
  "ea0fd98be9330a0f4043bbdfe1d139c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmulateStick-request)))
  "Returns md5sum for a message object of type 'EmulateStick-request"
  "ea0fd98be9330a0f4043bbdfe1d139c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmulateStick-request>)))
  "Returns full string definition for message of type '<EmulateStick-request>"
  (cl:format cl:nil "# remotely triggers a stick event without interacting with the Stick device~%string direction~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmulateStick-request)))
  "Returns full string definition for message of type 'EmulateStick-request"
  (cl:format cl:nil "# remotely triggers a stick event without interacting with the Stick device~%string direction~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmulateStick-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'direction))
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmulateStick-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmulateStick-request
    (cl:cons ':direction (direction msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude EmulateStick-response.msg.html

(cl:defclass <EmulateStick-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmulateStick-response (<EmulateStick-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmulateStick-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmulateStick-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensehat_ros-srv:<EmulateStick-response> is deprecated: use sensehat_ros-srv:EmulateStick-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmulateStick-response>) ostream)
  "Serializes a message object of type '<EmulateStick-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmulateStick-response>) istream)
  "Deserializes a message object of type '<EmulateStick-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmulateStick-response>)))
  "Returns string type for a service object of type '<EmulateStick-response>"
  "sensehat_ros/EmulateStickResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmulateStick-response)))
  "Returns string type for a service object of type 'EmulateStick-response"
  "sensehat_ros/EmulateStickResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmulateStick-response>)))
  "Returns md5sum for a message object of type '<EmulateStick-response>"
  "ea0fd98be9330a0f4043bbdfe1d139c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmulateStick-response)))
  "Returns md5sum for a message object of type 'EmulateStick-response"
  "ea0fd98be9330a0f4043bbdfe1d139c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmulateStick-response>)))
  "Returns full string definition for message of type '<EmulateStick-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmulateStick-response)))
  "Returns full string definition for message of type 'EmulateStick-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmulateStick-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmulateStick-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmulateStick-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmulateStick)))
  'EmulateStick-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmulateStick)))
  'EmulateStick-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmulateStick)))
  "Returns string type for a service object of type '<EmulateStick>"
  "sensehat_ros/EmulateStick")