;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::GetPressure)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'GetPressure (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::GETPRESSURE")
  (make-package "SENSEHAT_ROS::GETPRESSURE"))
(unless (find-package "SENSEHAT_ROS::GETPRESSUREREQUEST")
  (make-package "SENSEHAT_ROS::GETPRESSUREREQUEST"))
(unless (find-package "SENSEHAT_ROS::GETPRESSURERESPONSE")
  (make-package "SENSEHAT_ROS::GETPRESSURERESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::GetPressureRequest
  :super ros::object
  :slots ())

(defmethod sensehat_ros::GetPressureRequest
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

(defclass sensehat_ros::GetPressureResponse
  :super ros::object
  :slots (_pressure ))

(defmethod sensehat_ros::GetPressureResponse
  (:init
   (&key
    ((:pressure __pressure) 0.0)
    )
   (send-super :init)
   (setq _pressure (float __pressure))
   self)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:serialization-length
   ()
   (+
    ;; float64 _pressure
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pressure
     (setq _pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sensehat_ros::GetPressure
  :super ros::object
  :slots ())

(setf (get sensehat_ros::GetPressure :md5sum-) "96df4beb6a408783cb39b2bac74b5b16")
(setf (get sensehat_ros::GetPressure :datatype-) "sensehat_ros/GetPressure")
(setf (get sensehat_ros::GetPressure :request) sensehat_ros::GetPressureRequest)
(setf (get sensehat_ros::GetPressure :response) sensehat_ros::GetPressureResponse)

(defmethod sensehat_ros::GetPressureRequest
  (:response () (instance sensehat_ros::GetPressureResponse :init)))

(setf (get sensehat_ros::GetPressureRequest :md5sum-) "96df4beb6a408783cb39b2bac74b5b16")
(setf (get sensehat_ros::GetPressureRequest :datatype-) "sensehat_ros/GetPressureRequest")
(setf (get sensehat_ros::GetPressureRequest :definition-)
      "# gets the current pressure in Millibars from the pressure sensor
---
float64 pressure
")

(setf (get sensehat_ros::GetPressureResponse :md5sum-) "96df4beb6a408783cb39b2bac74b5b16")
(setf (get sensehat_ros::GetPressureResponse :datatype-) "sensehat_ros/GetPressureResponse")
(setf (get sensehat_ros::GetPressureResponse :definition-)
      "# gets the current pressure in Millibars from the pressure sensor
---
float64 pressure
")



(provide :sensehat_ros/GetPressure "96df4beb6a408783cb39b2bac74b5b16")


