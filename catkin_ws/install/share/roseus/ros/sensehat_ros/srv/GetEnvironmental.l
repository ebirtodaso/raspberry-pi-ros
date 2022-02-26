;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::GetEnvironmental)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'GetEnvironmental (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::GETENVIRONMENTAL")
  (make-package "SENSEHAT_ROS::GETENVIRONMENTAL"))
(unless (find-package "SENSEHAT_ROS::GETENVIRONMENTALREQUEST")
  (make-package "SENSEHAT_ROS::GETENVIRONMENTALREQUEST"))
(unless (find-package "SENSEHAT_ROS::GETENVIRONMENTALRESPONSE")
  (make-package "SENSEHAT_ROS::GETENVIRONMENTALRESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::GetEnvironmentalRequest
  :super ros::object
  :slots ())

(defmethod sensehat_ros::GetEnvironmentalRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sensehat_ros::GetEnvironmentalResponse
  :super ros::object
  :slots (_environmental ))

(defmethod sensehat_ros::GetEnvironmentalResponse
  (:init
   (&key
    ((:environmental __environmental) (instance sensehat_ros::Environmental :init))
    )
   (send-super :init)
   (setq _environmental __environmental)
   self)
  (:environmental
   (&rest __environmental)
   (if (keywordp (car __environmental))
       (send* _environmental __environmental)
     (progn
       (if __environmental (setq _environmental (car __environmental)))
       _environmental)))
  (:serialization-length
   ()
   (+
    ;; sensehat_ros/Environmental _environmental
    (send _environmental :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensehat_ros/Environmental _environmental
       (send _environmental :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensehat_ros/Environmental _environmental
     (send _environmental :deserialize buf ptr-) (incf ptr- (send _environmental :serialization-length))
   ;;
   self)
  )

(defclass sensehat_ros::GetEnvironmental
  :super ros::object
  :slots ())

(setf (get sensehat_ros::GetEnvironmental :md5sum-) "59eda83d9763a27d7339a28eb5d390bf")
(setf (get sensehat_ros::GetEnvironmental :datatype-) "sensehat_ros/GetEnvironmental")
(setf (get sensehat_ros::GetEnvironmental :request) sensehat_ros::GetEnvironmentalRequest)
(setf (get sensehat_ros::GetEnvironmental :response) sensehat_ros::GetEnvironmentalResponse)

(defmethod sensehat_ros::GetEnvironmentalRequest
  (:response () (instance sensehat_ros::GetEnvironmentalResponse :init)))

(setf (get sensehat_ros::GetEnvironmentalRequest :md5sum-) "59eda83d9763a27d7339a28eb5d390bf")
(setf (get sensehat_ros::GetEnvironmentalRequest :datatype-) "sensehat_ros/GetEnvironmentalRequest")
(setf (get sensehat_ros::GetEnvironmentalRequest :definition-)
      "# gets the current humidity and temperature from the humidity sensor and temperature and pressure from the pressure sensor
---
Environmental environmental

================================================================================
MSG: sensehat_ros/Environmental
# Hold data extracted from Sense HAT environmental sensors (humidity and pressure)
Header header
# Percentage of relative humidity 
float64 humidity
# Temperature in degrees Celsius from the humidity sensor
float64 temperature_from_humidity
# Temperature in degrees Celsius from the pressure sensor
float64 temperature_from_pressure
# Pressure in Millibars
float64 pressure

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

(setf (get sensehat_ros::GetEnvironmentalResponse :md5sum-) "59eda83d9763a27d7339a28eb5d390bf")
(setf (get sensehat_ros::GetEnvironmentalResponse :datatype-) "sensehat_ros/GetEnvironmentalResponse")
(setf (get sensehat_ros::GetEnvironmentalResponse :definition-)
      "# gets the current humidity and temperature from the humidity sensor and temperature and pressure from the pressure sensor
---
Environmental environmental

================================================================================
MSG: sensehat_ros/Environmental
# Hold data extracted from Sense HAT environmental sensors (humidity and pressure)
Header header
# Percentage of relative humidity 
float64 humidity
# Temperature in degrees Celsius from the humidity sensor
float64 temperature_from_humidity
# Temperature in degrees Celsius from the pressure sensor
float64 temperature_from_pressure
# Pressure in Millibars
float64 pressure

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



(provide :sensehat_ros/GetEnvironmental "59eda83d9763a27d7339a28eb5d390bf")


