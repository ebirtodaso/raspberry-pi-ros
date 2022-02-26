;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::Clear)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'Clear (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::CLEAR")
  (make-package "SENSEHAT_ROS::CLEAR"))
(unless (find-package "SENSEHAT_ROS::CLEARREQUEST")
  (make-package "SENSEHAT_ROS::CLEARREQUEST"))
(unless (find-package "SENSEHAT_ROS::CLEARRESPONSE")
  (make-package "SENSEHAT_ROS::CLEARRESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::ClearRequest
  :super ros::object
  :slots (_colour _duration ))

(defmethod sensehat_ros::ClearRequest
  (:init
   (&key
    ((:colour __colour) (make-array 3 :initial-element 0 :element-type :integer))
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _colour __colour)
   (setq _duration (float __duration))
   self)
  (:colour
   (&optional __colour)
   (if __colour (setq _colour __colour)) _colour)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int16[3] _colour
    (* 2    3)
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[3] _colour
     (dotimes (i 3)
       (write-word (elt _colour i) s)
       )
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[3] _colour
   (dotimes (i (length _colour))
     (setf (elt _colour i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sensehat_ros::ClearResponse
  :super ros::object
  :slots ())

(defmethod sensehat_ros::ClearResponse
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

(defclass sensehat_ros::Clear
  :super ros::object
  :slots ())

(setf (get sensehat_ros::Clear :md5sum-) "d1af828257b651791f41f5836fa55cda")
(setf (get sensehat_ros::Clear :datatype-) "sensehat_ros/Clear")
(setf (get sensehat_ros::Clear :request) sensehat_ros::ClearRequest)
(setf (get sensehat_ros::Clear :response) sensehat_ros::ClearResponse)

(defmethod sensehat_ros::ClearRequest
  (:response () (instance sensehat_ros::ClearResponse :init)))

(setf (get sensehat_ros::ClearRequest :md5sum-) "d1af828257b651791f41f5836fa55cda")
(setf (get sensehat_ros::ClearRequest :datatype-) "sensehat_ros/ClearRequest")
(setf (get sensehat_ros::ClearRequest :definition-)
      "# sets all of the 64 LED matrix pixels to the specified RGB color and waits for the specified amount of seconds
int16[3] colour
float64 duration
---
")

(setf (get sensehat_ros::ClearResponse :md5sum-) "d1af828257b651791f41f5836fa55cda")
(setf (get sensehat_ros::ClearResponse :datatype-) "sensehat_ros/ClearResponse")
(setf (get sensehat_ros::ClearResponse :definition-)
      "# sets all of the 64 LED matrix pixels to the specified RGB color and waits for the specified amount of seconds
int16[3] colour
float64 duration
---
")



(provide :sensehat_ros/Clear "d1af828257b651791f41f5836fa55cda")


