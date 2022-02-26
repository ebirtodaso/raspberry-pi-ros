;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::SwitchLowLight)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'SwitchLowLight (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::SWITCHLOWLIGHT")
  (make-package "SENSEHAT_ROS::SWITCHLOWLIGHT"))
(unless (find-package "SENSEHAT_ROS::SWITCHLOWLIGHTREQUEST")
  (make-package "SENSEHAT_ROS::SWITCHLOWLIGHTREQUEST"))
(unless (find-package "SENSEHAT_ROS::SWITCHLOWLIGHTRESPONSE")
  (make-package "SENSEHAT_ROS::SWITCHLOWLIGHTRESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::SwitchLowLightRequest
  :super ros::object
  :slots ())

(defmethod sensehat_ros::SwitchLowLightRequest
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

(defclass sensehat_ros::SwitchLowLightResponse
  :super ros::object
  :slots (_low_light ))

(defmethod sensehat_ros::SwitchLowLightResponse
  (:init
   (&key
    ((:low_light __low_light) nil)
    )
   (send-super :init)
   (setq _low_light __low_light)
   self)
  (:low_light
   (&optional __low_light)
   (if __low_light (setq _low_light __low_light)) _low_light)
  (:serialization-length
   ()
   (+
    ;; bool _low_light
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _low_light
       (if _low_light (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _low_light
     (setq _low_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sensehat_ros::SwitchLowLight
  :super ros::object
  :slots ())

(setf (get sensehat_ros::SwitchLowLight :md5sum-) "28b22af2b341afecad6c7499580b70d4")
(setf (get sensehat_ros::SwitchLowLight :datatype-) "sensehat_ros/SwitchLowLight")
(setf (get sensehat_ros::SwitchLowLight :request) sensehat_ros::SwitchLowLightRequest)
(setf (get sensehat_ros::SwitchLowLight :response) sensehat_ros::SwitchLowLightResponse)

(defmethod sensehat_ros::SwitchLowLightRequest
  (:response () (instance sensehat_ros::SwitchLowLightResponse :init)))

(setf (get sensehat_ros::SwitchLowLightRequest :md5sum-) "28b22af2b341afecad6c7499580b70d4")
(setf (get sensehat_ros::SwitchLowLightRequest :datatype-) "sensehat_ros/SwitchLowLightRequest")
(setf (get sensehat_ros::SwitchLowLightRequest :definition-)
      "# switches on/off the LED matrix “low light” mode and returns the current state
---
bool low_light
")

(setf (get sensehat_ros::SwitchLowLightResponse :md5sum-) "28b22af2b341afecad6c7499580b70d4")
(setf (get sensehat_ros::SwitchLowLightResponse :datatype-) "sensehat_ros/SwitchLowLightResponse")
(setf (get sensehat_ros::SwitchLowLightResponse :definition-)
      "# switches on/off the LED matrix “low light” mode and returns the current state
---
bool low_light
")



(provide :sensehat_ros/SwitchLowLight "28b22af2b341afecad6c7499580b70d4")


