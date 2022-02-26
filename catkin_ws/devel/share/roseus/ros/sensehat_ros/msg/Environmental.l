;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::Environmental)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'Environmental (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::ENVIRONMENTAL")
  (make-package "SENSEHAT_ROS::ENVIRONMENTAL"))

(in-package "ROS")
;;//! \htmlinclude Environmental.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensehat_ros::Environmental
  :super ros::object
  :slots (_header _humidity _temperature_from_humidity _temperature_from_pressure _pressure ))

(defmethod sensehat_ros::Environmental
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:humidity __humidity) 0.0)
    ((:temperature_from_humidity __temperature_from_humidity) 0.0)
    ((:temperature_from_pressure __temperature_from_pressure) 0.0)
    ((:pressure __pressure) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _humidity (float __humidity))
   (setq _temperature_from_humidity (float __temperature_from_humidity))
   (setq _temperature_from_pressure (float __temperature_from_pressure))
   (setq _pressure (float __pressure))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:temperature_from_humidity
   (&optional __temperature_from_humidity)
   (if __temperature_from_humidity (setq _temperature_from_humidity __temperature_from_humidity)) _temperature_from_humidity)
  (:temperature_from_pressure
   (&optional __temperature_from_pressure)
   (if __temperature_from_pressure (setq _temperature_from_pressure __temperature_from_pressure)) _temperature_from_pressure)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _humidity
    8
    ;; float64 _temperature_from_humidity
    8
    ;; float64 _temperature_from_pressure
    8
    ;; float64 _pressure
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _humidity
       (sys::poke _humidity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _temperature_from_humidity
       (sys::poke _temperature_from_humidity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _temperature_from_pressure
       (sys::poke _temperature_from_pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _humidity
     (setq _humidity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _temperature_from_humidity
     (setq _temperature_from_humidity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _temperature_from_pressure
     (setq _temperature_from_pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pressure
     (setq _pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sensehat_ros::Environmental :md5sum-) "68c3afb26b37144add6301d7bd68f356")
(setf (get sensehat_ros::Environmental :datatype-) "sensehat_ros/Environmental")
(setf (get sensehat_ros::Environmental :definition-)
      "# Hold data extracted from Sense HAT environmental sensors (humidity and pressure)
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



(provide :sensehat_ros/Environmental "68c3afb26b37144add6301d7bd68f356")


