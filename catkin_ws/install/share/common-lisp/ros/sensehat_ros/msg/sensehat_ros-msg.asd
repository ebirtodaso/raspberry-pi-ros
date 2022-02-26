
(cl:in-package :asdf)

(defsystem "sensehat_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Environmental" :depends-on ("_package_Environmental"))
    (:file "_package_Environmental" :depends-on ("_package"))
    (:file "IMU" :depends-on ("_package_IMU"))
    (:file "_package_IMU" :depends-on ("_package"))
    (:file "Stick" :depends-on ("_package_Stick"))
    (:file "_package_Stick" :depends-on ("_package"))
  ))