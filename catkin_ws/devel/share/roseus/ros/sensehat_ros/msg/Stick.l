;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::Stick)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'Stick (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::STICK")
  (make-package "SENSEHAT_ROS::STICK"))

(in-package "ROS")
;;//! \htmlinclude Stick.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensehat_ros::Stick
  :super ros::object
  :slots (_header _direction _action ))

(defmethod sensehat_ros::Stick
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:direction __direction) "")
    ((:action __action) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _direction (string __direction))
   (setq _action (string __action))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _direction
    4 (length _direction)
    ;; string _action
    4 (length _action)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensehat_ros::Stick :md5sum-) "7518ab70ca2e75fc897434e945b29029")
(setf (get sensehat_ros::Stick :datatype-) "sensehat_ros/Stick")
(setf (get sensehat_ros::Stick :definition-)
      "# Describes the Stick event triggered on the Sense HAT device
Header header
# The direction the joystick was moved (\"up\", \"down\", \"left\", \"right\", \"middle\")
string direction
# The action that occurred (\"pressed\", \"released\", \"held\")
string action
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :sensehat_ros/Stick "7518ab70ca2e75fc897434e945b29029")


