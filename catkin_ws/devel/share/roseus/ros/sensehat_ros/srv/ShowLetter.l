;; Auto-generated. Do not edit!


(when (boundp 'sensehat_ros::ShowLetter)
  (if (not (find-package "SENSEHAT_ROS"))
    (make-package "SENSEHAT_ROS"))
  (shadow 'ShowLetter (find-package "SENSEHAT_ROS")))
(unless (find-package "SENSEHAT_ROS::SHOWLETTER")
  (make-package "SENSEHAT_ROS::SHOWLETTER"))
(unless (find-package "SENSEHAT_ROS::SHOWLETTERREQUEST")
  (make-package "SENSEHAT_ROS::SHOWLETTERREQUEST"))
(unless (find-package "SENSEHAT_ROS::SHOWLETTERRESPONSE")
  (make-package "SENSEHAT_ROS::SHOWLETTERRESPONSE"))

(in-package "ROS")





(defclass sensehat_ros::ShowLetterRequest
  :super ros::object
  :slots (_text _text_colour _back_colour _duration ))

(defmethod sensehat_ros::ShowLetterRequest
  (:init
   (&key
    ((:text __text) "")
    ((:text_colour __text_colour) (make-array 3 :initial-element 0 :element-type :integer))
    ((:back_colour __back_colour) (make-array 3 :initial-element 0 :element-type :integer))
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _text_colour __text_colour)
   (setq _back_colour __back_colour)
   (setq _duration (float __duration))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:text_colour
   (&optional __text_colour)
   (if __text_colour (setq _text_colour __text_colour)) _text_colour)
  (:back_colour
   (&optional __back_colour)
   (if __back_colour (setq _back_colour __back_colour)) _back_colour)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; int16[3] _text_colour
    (* 2    3)
    ;; int16[3] _back_colour
    (* 2    3)
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; int16[3] _text_colour
     (dotimes (i 3)
       (write-word (elt _text_colour i) s)
       )
     ;; int16[3] _back_colour
     (dotimes (i 3)
       (write-word (elt _back_colour i) s)
       )
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16[3] _text_colour
   (dotimes (i (length _text_colour))
     (setf (elt _text_colour i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; int16[3] _back_colour
   (dotimes (i (length _back_colour))
     (setf (elt _back_colour i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sensehat_ros::ShowLetterResponse
  :super ros::object
  :slots ())

(defmethod sensehat_ros::ShowLetterResponse
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

(defclass sensehat_ros::ShowLetter
  :super ros::object
  :slots ())

(setf (get sensehat_ros::ShowLetter :md5sum-) "2e9a1baf1bf4e3e4917790796f05c5e4")
(setf (get sensehat_ros::ShowLetter :datatype-) "sensehat_ros/ShowLetter")
(setf (get sensehat_ros::ShowLetter :request) sensehat_ros::ShowLetterRequest)
(setf (get sensehat_ros::ShowLetter :response) sensehat_ros::ShowLetterResponse)

(defmethod sensehat_ros::ShowLetterRequest
  (:response () (instance sensehat_ros::ShowLetterResponse :init)))

(setf (get sensehat_ros::ShowLetterRequest :md5sum-) "2e9a1baf1bf4e3e4917790796f05c5e4")
(setf (get sensehat_ros::ShowLetterRequest :datatype-) "sensehat_ros/ShowLetterRequest")
(setf (get sensehat_ros::ShowLetterRequest :definition-)
      "# shows a letter on the LED matrix and waits for the specified amount of seconds
string text
int16[3] text_colour
int16[3] back_colour
float64 duration
---
")

(setf (get sensehat_ros::ShowLetterResponse :md5sum-) "2e9a1baf1bf4e3e4917790796f05c5e4")
(setf (get sensehat_ros::ShowLetterResponse :datatype-) "sensehat_ros/ShowLetterResponse")
(setf (get sensehat_ros::ShowLetterResponse :definition-)
      "# shows a letter on the LED matrix and waits for the specified amount of seconds
string text
int16[3] text_colour
int16[3] back_colour
float64 duration
---
")



(provide :sensehat_ros/ShowLetter "2e9a1baf1bf4e3e4917790796f05c5e4")


