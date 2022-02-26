;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::SetPixels)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'SetPixels (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::SETPIXELS")
  (make-package "SENSEHAT_ROS::SETPIXELS"))
(unless (find-package "SENSEHAT_ROS::SETPIXELSREQUEST")
  (make-package "SENSEHAT_ROS::SETPIXELSREQUEST"))
(unless (find-package "SENSEHAT_ROS::SETPIXELSRESPONSE")
  (make-package "SENSEHAT_ROS::SETPIXELSRESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::SetPixelsRequest
  :super ros::object
  :slots (_pixels_red _pixels_green _pixels_blue _duration ))

(defmethod sensehat_ros::SetPixelsRequest
  (:init
   (&key
    ((:pixels_red __pixels_red) (make-array 64 :initial-element 0 :element-type :integer))
    ((:pixels_green __pixels_green) (make-array 64 :initial-element 0 :element-type :integer))
    ((:pixels_blue __pixels_blue) (make-array 64 :initial-element 0 :element-type :integer))
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _pixels_red __pixels_red)
   (setq _pixels_green __pixels_green)
   (setq _pixels_blue __pixels_blue)
   (setq _duration (float __duration))
   self)
  (:pixels_red
   (&optional __pixels_red)
   (if __pixels_red (setq _pixels_red __pixels_red)) _pixels_red)
  (:pixels_green
   (&optional __pixels_green)
   (if __pixels_green (setq _pixels_green __pixels_green)) _pixels_green)
  (:pixels_blue
   (&optional __pixels_blue)
   (if __pixels_blue (setq _pixels_blue __pixels_blue)) _pixels_blue)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int16[64] _pixels_red
    (* 2    64)
    ;; int16[64] _pixels_green
    (* 2    64)
    ;; int16[64] _pixels_blue
    (* 2    64)
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[64] _pixels_red
     (dotimes (i 64)
       (write-word (elt _pixels_red i) s)
       )
     ;; int16[64] _pixels_green
     (dotimes (i 64)
       (write-word (elt _pixels_green i) s)
       )
     ;; int16[64] _pixels_blue
     (dotimes (i 64)
       (write-word (elt _pixels_blue i) s)
       )
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[64] _pixels_red
   (dotimes (i (length _pixels_red))
     (setf (elt _pixels_red i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; int16[64] _pixels_green
   (dotimes (i (length _pixels_green))
     (setf (elt _pixels_green i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; int16[64] _pixels_blue
   (dotimes (i (length _pixels_blue))
     (setf (elt _pixels_blue i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sensehat_ros::SetPixelsResponse
  :super ros::object
  :slots ())

(defmethod sensehat_ros::SetPixelsResponse
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

(defclass sensehat_ros::SetPixels
  :super ros::object
  :slots ())

(setf (get sensehat_ros::SetPixels :md5sum-) "b50ba911a4776c69c8ff57eb35b1d884")
(setf (get sensehat_ros::SetPixels :datatype-) "sensehat_ros/SetPixels")
(setf (get sensehat_ros::SetPixels :request) sensehat_ros::SetPixelsRequest)
(setf (get sensehat_ros::SetPixels :response) sensehat_ros::SetPixelsResponse)

(defmethod sensehat_ros::SetPixelsRequest
  (:response () (instance sensehat_ros::SetPixelsResponse :init)))

(setf (get sensehat_ros::SetPixelsRequest :md5sum-) "b50ba911a4776c69c8ff57eb35b1d884")
(setf (get sensehat_ros::SetPixelsRequest :datatype-) "sensehat_ros/SetPixelsRequest")
(setf (get sensehat_ros::SetPixelsRequest :definition-)
      "# sets each of the 64 LED matrix pixels to a specific RGB color and waits for the specified amount of seconds
int16[64] pixels_red
int16[64] pixels_green
int16[64] pixels_blue
float64 duration
---
")

(setf (get sensehat_ros::SetPixelsResponse :md5sum-) "b50ba911a4776c69c8ff57eb35b1d884")
(setf (get sensehat_ros::SetPixelsResponse :datatype-) "sensehat_ros/SetPixelsResponse")
(setf (get sensehat_ros::SetPixelsResponse :definition-)
      "# sets each of the 64 LED matrix pixels to a specific RGB color and waits for the specified amount of seconds
int16[64] pixels_red
int16[64] pixels_green
int16[64] pixels_blue
float64 duration
---
")



(provide :sensehat_ros/SetPixels "b50ba911a4776c69c8ff57eb35b1d884")


