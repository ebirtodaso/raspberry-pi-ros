;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::GetCompass)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'GetCompass (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::GETCOMPASS")
  (make-package "SENSEHAT_ROS::GETCOMPASS"))
(unless (find-package "SENSEHAT_ROS::GETCOMPASSREQUEST")
  (make-package "SENSEHAT_ROS::GETCOMPASSREQUEST"))
(unless (find-package "SENSEHAT_ROS::GETCOMPASSRESPONSE")
  (make-package "SENSEHAT_ROS::GETCOMPASSRESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::GetCompassRequest
  :super ros::object
  :slots ())

(defmethod sensehat_ros::GetCompassRequest
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

(defclass sensehat_ros::GetCompassResponse
  :super ros::object
  :slots (_compass ))

(defmethod sensehat_ros::GetCompassResponse
  (:init
   (&key
    ((:compass __compass) 0.0)
    )
   (send-super :init)
   (setq _compass (float __compass))
   self)
  (:compass
   (&optional __compass)
   (if __compass (setq _compass __compass)) _compass)
  (:serialization-length
   ()
   (+
    ;; float64 _compass
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _compass
       (sys::poke _compass (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _compass
     (setq _compass (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sensehat_ros::GetCompass
  :super ros::object
  :slots ())

(setf (get sensehat_ros::GetCompass :md5sum-) "3c9cf463517905dca2521bd4ad9d8bf6")
(setf (get sensehat_ros::GetCompass :datatype-) "sensehat_ros/GetCompass")
(setf (get sensehat_ros::GetCompass :request) sensehat_ros::GetCompassRequest)
(setf (get sensehat_ros::GetCompass :response) sensehat_ros::GetCompassResponse)

(defmethod sensehat_ros::GetCompassRequest
  (:response () (instance sensehat_ros::GetCompassResponse :init)))

(setf (get sensehat_ros::GetCompassRequest :md5sum-) "3c9cf463517905dca2521bd4ad9d8bf6")
(setf (get sensehat_ros::GetCompassRequest :datatype-) "sensehat_ros/GetCompassRequest")
(setf (get sensehat_ros::GetCompassRequest :definition-)
      "# gets the direction of North from the magnetometer in degrees. Warning: not allowed when imu_publishing=True due to potential set_imu_config interference
---
float64 compass
")

(setf (get sensehat_ros::GetCompassResponse :md5sum-) "3c9cf463517905dca2521bd4ad9d8bf6")
(setf (get sensehat_ros::GetCompassResponse :datatype-) "sensehat_ros/GetCompassResponse")
(setf (get sensehat_ros::GetCompassResponse :definition-)
      "# gets the direction of North from the magnetometer in degrees. Warning: not allowed when imu_publishing=True due to potential set_imu_config interference
---
float64 compass
")



(provide :sensehat_ros/GetCompass "3c9cf463517905dca2521bd4ad9d8bf6")


