;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::GetIMU)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'GetIMU (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::GETIMU")
  (make-package "SENSEHAT_ROS::GETIMU"))
(unless (find-package "SENSEHAT_ROS::GETIMUREQUEST")
  (make-package "SENSEHAT_ROS::GETIMUREQUEST"))
(unless (find-package "SENSEHAT_ROS::GETIMURESPONSE")
  (make-package "SENSEHAT_ROS::GETIMURESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::GetIMURequest
  :super ros::object
  :slots (_mode ))

(defmethod sensehat_ros::GetIMURequest
  (:init
   (&key
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sensehat_ros::GetIMUResponse
  :super ros::object
  :slots (_imu ))

(defmethod sensehat_ros::GetIMUResponse
  (:init
   (&key
    ((:imu __imu) (instance sensehat_ros::IMU :init))
    )
   (send-super :init)
   (setq _imu __imu)
   self)
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:serialization-length
   ()
   (+
    ;; sensehat_ros/IMU _imu
    (send _imu :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensehat_ros/IMU _imu
       (send _imu :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensehat_ros/IMU _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;;
   self)
  )

(defclass sensehat_ros::GetIMU
  :super ros::object
  :slots ())

(setf (get sensehat_ros::GetIMU :md5sum-) "fa30723e781c08a11913d9b01e09b1ad")
(setf (get sensehat_ros::GetIMU :datatype-) "sensehat_ros/GetIMU")
(setf (get sensehat_ros::GetIMU :request) sensehat_ros::GetIMURequest)
(setf (get sensehat_ros::GetIMU :response) sensehat_ros::GetIMUResponse)

(defmethod sensehat_ros::GetIMURequest
  (:response () (instance sensehat_ros::GetIMUResponse :init)))

(setf (get sensehat_ros::GetIMURequest :md5sum-) "fa30723e781c08a11913d9b01e09b1ad")
(setf (get sensehat_ros::GetIMURequest :datatype-) "sensehat_ros/GetIMURequest")
(setf (get sensehat_ros::GetIMURequest :definition-)
      "# queries Sense HAT IMU sensor. Warning: not allowed when imu_publishing=True due to potential set_imu_config interference
string mode
---
IMU imu

================================================================================
MSG: sensehat_ros/IMU
# Hold data extracted from the Sense HAT IMU sensor.
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

(setf (get sensehat_ros::GetIMUResponse :md5sum-) "fa30723e781c08a11913d9b01e09b1ad")
(setf (get sensehat_ros::GetIMUResponse :datatype-) "sensehat_ros/GetIMUResponse")
(setf (get sensehat_ros::GetIMUResponse :definition-)
      "# queries Sense HAT IMU sensor. Warning: not allowed when imu_publishing=True due to potential set_imu_config interference
string mode
---
IMU imu

================================================================================
MSG: sensehat_ros/IMU
# Hold data extracted from the Sense HAT IMU sensor.
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



(provide :sensehat_ros/GetIMU "fa30723e781c08a11913d9b01e09b1ad")


