;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::EmulateStick)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'EmulateStick (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::EMULATESTICK")
  (make-package "SENSEHAT_ROS::EMULATESTICK"))
(unless (find-package "SENSEHAT_ROS::EMULATESTICKREQUEST")
  (make-package "SENSEHAT_ROS::EMULATESTICKREQUEST"))
(unless (find-package "SENSEHAT_ROS::EMULATESTICKRESPONSE")
  (make-package "SENSEHAT_ROS::EMULATESTICKRESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::EmulateStickRequest
  :super ros::object
  :slots (_direction _action ))

(defmethod sensehat_ros::EmulateStickRequest
  (:init
   (&key
    ((:direction __direction) "")
    ((:action __action) "")
    )
   (send-super :init)
   (setq _direction (string __direction))
   (setq _action (string __action))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; string _direction
    4 (length _direction)
    ;; string _action
    4 (length _action)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sensehat_ros::EmulateStickResponse
  :super ros::object
  :slots ())

(defmethod sensehat_ros::EmulateStickResponse
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

(defclass sensehat_ros::EmulateStick
  :super ros::object
  :slots ())

(setf (get sensehat_ros::EmulateStick :md5sum-) "ea0fd98be9330a0f4043bbdfe1d139c9")
(setf (get sensehat_ros::EmulateStick :datatype-) "sensehat_ros/EmulateStick")
(setf (get sensehat_ros::EmulateStick :request) sensehat_ros::EmulateStickRequest)
(setf (get sensehat_ros::EmulateStick :response) sensehat_ros::EmulateStickResponse)

(defmethod sensehat_ros::EmulateStickRequest
  (:response () (instance sensehat_ros::EmulateStickResponse :init)))

(setf (get sensehat_ros::EmulateStickRequest :md5sum-) "ea0fd98be9330a0f4043bbdfe1d139c9")
(setf (get sensehat_ros::EmulateStickRequest :datatype-) "sensehat_ros/EmulateStickRequest")
(setf (get sensehat_ros::EmulateStickRequest :definition-)
      "# remotely triggers a stick event without interacting with the Stick device
string direction
string action
---
")

(setf (get sensehat_ros::EmulateStickResponse :md5sum-) "ea0fd98be9330a0f4043bbdfe1d139c9")
(setf (get sensehat_ros::EmulateStickResponse :datatype-) "sensehat_ros/EmulateStickResponse")
(setf (get sensehat_ros::EmulateStickResponse :definition-)
      "# remotely triggers a stick event without interacting with the Stick device
string direction
string action
---
")



(provide :sensehat_ros/EmulateStick "ea0fd98be9330a0f4043bbdfe1d139c9")


