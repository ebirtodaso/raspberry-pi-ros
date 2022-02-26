;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::GetHumidity)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'GetHumidity (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::GETHUMIDITY")
  (make-package "SENSEHAT_ROS::GETHUMIDITY"))
(unless (find-package "SENSEHAT_ROS::GETHUMIDITYREQUEST")
  (make-package "SENSEHAT_ROS::GETHUMIDITYREQUEST"))
(unless (find-package "SENSEHAT_ROS::GETHUMIDITYRESPONSE")
  (make-package "SENSEHAT_ROS::GETHUMIDITYRESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::GetHumidityRequest
  :super ros::object
  :slots ())

(defmethod sensehat_ros::GetHumidityRequest
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

(defclass sensehat_ros::GetHumidityResponse
  :super ros::object
  :slots (_humidity ))

(defmethod sensehat_ros::GetHumidityResponse
  (:init
   (&key
    ((:humidity __humidity) 0.0)
    )
   (send-super :init)
   (setq _humidity (float __humidity))
   self)
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:serialization-length
   ()
   (+
    ;; float64 _humidity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _humidity
       (sys::poke _humidity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _humidity
     (setq _humidity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sensehat_ros::GetHumidity
  :super ros::object
  :slots ())

(setf (get sensehat_ros::GetHumidity :md5sum-) "c8a984e8229c8179cd55100369522f34")
(setf (get sensehat_ros::GetHumidity :datatype-) "sensehat_ros/GetHumidity")
(setf (get sensehat_ros::GetHumidity :request) sensehat_ros::GetHumidityRequest)
(setf (get sensehat_ros::GetHumidity :response) sensehat_ros::GetHumidityResponse)

(defmethod sensehat_ros::GetHumidityRequest
  (:response () (instance sensehat_ros::GetHumidityResponse :init)))

(setf (get sensehat_ros::GetHumidityRequest :md5sum-) "c8a984e8229c8179cd55100369522f34")
(setf (get sensehat_ros::GetHumidityRequest :datatype-) "sensehat_ros/GetHumidityRequest")
(setf (get sensehat_ros::GetHumidityRequest :definition-)
      "# gets the percentage of relative humidity from the humidity sensor
---
float64 humidity
")

(setf (get sensehat_ros::GetHumidityResponse :md5sum-) "c8a984e8229c8179cd55100369522f34")
(setf (get sensehat_ros::GetHumidityResponse :datatype-) "sensehat_ros/GetHumidityResponse")
(setf (get sensehat_ros::GetHumidityResponse :definition-)
      "# gets the percentage of relative humidity from the humidity sensor
---
float64 humidity
")



(provide :sensehat_ros/GetHumidity "c8a984e8229c8179cd55100369522f34")


