;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::ShowMessage)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'ShowMessage (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::SHOWMESSAGE")
  (make-package "SENSEHAT_ROS::SHOWMESSAGE"))
(unless (find-package "SENSEHAT_ROS::SHOWMESSAGEREQUEST")
  (make-package "SENSEHAT_ROS::SHOWMESSAGEREQUEST"))
(unless (find-package "SENSEHAT_ROS::SHOWMESSAGERESPONSE")
  (make-package "SENSEHAT_ROS::SHOWMESSAGERESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::ShowMessageRequest
  :super ros::object
  :slots (_text _scroll_speed _text_colour _back_colour ))

(defmethod sensehat_ros::ShowMessageRequest
  (:init
   (&key
    ((:text __text) "")
    ((:scroll_speed __scroll_speed) 0.0)
    ((:text_colour __text_colour) (make-array 3 :initial-element 0 :element-type :integer))
    ((:back_colour __back_colour) (make-array 3 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _scroll_speed (float __scroll_speed))
   (setq _text_colour __text_colour)
   (setq _back_colour __back_colour)
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:scroll_speed
   (&optional __scroll_speed)
   (if __scroll_speed (setq _scroll_speed __scroll_speed)) _scroll_speed)
  (:text_colour
   (&optional __text_colour)
   (if __text_colour (setq _text_colour __text_colour)) _text_colour)
  (:back_colour
   (&optional __back_colour)
   (if __back_colour (setq _back_colour __back_colour)) _back_colour)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; float64 _scroll_speed
    8
    ;; int16[3] _text_colour
    (* 2    3)
    ;; int16[3] _back_colour
    (* 2    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; float64 _scroll_speed
       (sys::poke _scroll_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16[3] _text_colour
     (dotimes (i 3)
       (write-word (elt _text_colour i) s)
       )
     ;; int16[3] _back_colour
     (dotimes (i 3)
       (write-word (elt _back_colour i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _scroll_speed
     (setq _scroll_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16[3] _text_colour
   (dotimes (i (length _text_colour))
     (setf (elt _text_colour i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; int16[3] _back_colour
   (dotimes (i (length _back_colour))
     (setf (elt _back_colour i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(defclass sensehat_ros::ShowMessageResponse
  :super ros::object
  :slots ())

(defmethod sensehat_ros::ShowMessageResponse
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

(defclass sensehat_ros::ShowMessage
  :super ros::object
  :slots ())

(setf (get sensehat_ros::ShowMessage :md5sum-) "4db536e63c8164b2d79316cbb359b0f0")
(setf (get sensehat_ros::ShowMessage :datatype-) "sensehat_ros/ShowMessage")
(setf (get sensehat_ros::ShowMessage :request) sensehat_ros::ShowMessageRequest)
(setf (get sensehat_ros::ShowMessage :response) sensehat_ros::ShowMessageResponse)

(defmethod sensehat_ros::ShowMessageRequest
  (:response () (instance sensehat_ros::ShowMessageResponse :init)))

(setf (get sensehat_ros::ShowMessageRequest :md5sum-) "4db536e63c8164b2d79316cbb359b0f0")
(setf (get sensehat_ros::ShowMessageRequest :datatype-) "sensehat_ros/ShowMessageRequest")
(setf (get sensehat_ros::ShowMessageRequest :definition-)
      "# scrolls a text message from right to left across the LED matrix and at the specified speed, in the specified colour and background colour
string text
float64 scroll_speed
int16[3] text_colour
int16[3] back_colour
---
")

(setf (get sensehat_ros::ShowMessageResponse :md5sum-) "4db536e63c8164b2d79316cbb359b0f0")
(setf (get sensehat_ros::ShowMessageResponse :datatype-) "sensehat_ros/ShowMessageResponse")
(setf (get sensehat_ros::ShowMessageResponse :definition-)
      "# scrolls a text message from right to left across the LED matrix and at the specified speed, in the specified colour and background colour
string text
float64 scroll_speed
int16[3] text_colour
int16[3] back_colour
---
")



(provide :sensehat_ros/ShowMessage "4db536e63c8164b2d79316cbb359b0f0")


