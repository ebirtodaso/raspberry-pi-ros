;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::GetTemperature)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'GetTemperature (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::GETTEMPERATURE")
  (make-package "SENSEHAT_ROS::GETTEMPERATURE"))
(unless (find-package "SENSEHAT_ROS::GETTEMPERATUREREQUEST")
  (make-package "SENSEHAT_ROS::GETTEMPERATUREREQUEST"))
(unless (find-package "SENSEHAT_ROS::GETTEMPERATURERESPONSE")
  (make-package "SENSEHAT_ROS::GETTEMPERATURERESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::GetTemperatureRequest
  :super ros::object
  :slots ())

(defmethod sensehat_ros::GetTemperatureRequest
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

(defclass sensehat_ros::GetTemperatureResponse
  :super ros::object
  :slots (_temperature ))

(defmethod sensehat_ros::GetTemperatureResponse
  (:init
   (&key
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _temperature (float __temperature))
   self)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; float64 _temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sensehat_ros::GetTemperature
  :super ros::object
  :slots ())

(setf (get sensehat_ros::GetTemperature :md5sum-) "3d36f909fc0be819c991c4abdee75a2b")
(setf (get sensehat_ros::GetTemperature :datatype-) "sensehat_ros/GetTemperature")
(setf (get sensehat_ros::GetTemperature :request) sensehat_ros::GetTemperatureRequest)
(setf (get sensehat_ros::GetTemperature :response) sensehat_ros::GetTemperatureResponse)

(defmethod sensehat_ros::GetTemperatureRequest
  (:response () (instance sensehat_ros::GetTemperatureResponse :init)))

(setf (get sensehat_ros::GetTemperatureRequest :md5sum-) "3d36f909fc0be819c991c4abdee75a2b")
(setf (get sensehat_ros::GetTemperatureRequest :datatype-) "sensehat_ros/GetTemperatureRequest")
(setf (get sensehat_ros::GetTemperatureRequest :definition-)
      "# gets the current temperature in degrees Celsius from the humidity sensor
---
float64 temperature
")

(setf (get sensehat_ros::GetTemperatureResponse :md5sum-) "3d36f909fc0be819c991c4abdee75a2b")
(setf (get sensehat_ros::GetTemperatureResponse :datatype-) "sensehat_ros/GetTemperatureResponse")
(setf (get sensehat_ros::GetTemperatureResponse :definition-)
      "# gets the current temperature in degrees Celsius from the humidity sensor
---
float64 temperature
")



(provide :sensehat_ros/GetTemperature "3d36f909fc0be819c991c4abdee75a2b")


