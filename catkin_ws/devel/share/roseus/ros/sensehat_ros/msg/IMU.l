;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::IMU)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'IMU (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::IMU")
  (make-package "SENSEHAT_ROS::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensehat_ros::IMU
  :super ros::object
  :slots (_header _mode _x _y _z ))

(defmethod sensehat_ros::IMU
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (string __mode))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _mode
    4 (length _mode)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sensehat_ros::IMU :md5sum-) "deca0c93724da430c16a7c16b0d8235d")
(setf (get sensehat_ros::IMU :datatype-) "sensehat_ros/IMU")
(setf (get sensehat_ros::IMU :definition-)
      "# Hold data extracted from the Sense HAT IMU sensor.
# Fields x, y and z assume different meaning depending on the selected mode.
# Modes ending with \"_rpy\" assign (roll, pitch, yaw) values to (x, y, z). 
Header header
# Indicates the API function used to extract data from the IMU. Valid values are:
#   * get_orientation_radians_rpy
#   * get_orientation_degrees_rpy
#   * get_compass_raw_xyz
#   * get_gyroscope_rpy
#   * get_gyroscope_raw_xyz
#   * get_accelerometer_rpy
#   * get_accelerometer_raw_xyzstring mode
string mode
float64 x
float64 y
float64 z
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



(provide :sensehat_ros/IMU "deca0c93724da430c16a7c16b0d8235d")


