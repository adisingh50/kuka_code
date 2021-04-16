;; Auto-generated. Do not edit!


(when (boundp 'kuka::GetDepth)
  (if (not (find-package "KUKA"))
    (make-package "KUKA"))
  (shadow 'GetDepth (find-package "KUKA")))
(unless (find-package "KUKA::GETDEPTH")
  (make-package "KUKA::GETDEPTH"))
(unless (find-package "KUKA::GETDEPTHREQUEST")
  (make-package "KUKA::GETDEPTHREQUEST"))
(unless (find-package "KUKA::GETDEPTHRESPONSE")
  (make-package "KUKA::GETDEPTHRESPONSE"))

(in-package "ROS")





(defclass kuka::GetDepthRequest
  :super ros::object
  :slots (_x _y ))

(defmethod kuka::GetDepthRequest
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass kuka::GetDepthResponse
  :super ros::object
  :slots (_depth ))

(defmethod kuka::GetDepthResponse
  (:init
   (&key
    ((:depth __depth) 0)
    )
   (send-super :init)
   (setq _depth (round __depth))
   self)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:serialization-length
   ()
   (+
    ;; int32 _depth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _depth
       (write-long _depth s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _depth
     (setq _depth (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass kuka::GetDepth
  :super ros::object
  :slots ())

(setf (get kuka::GetDepth :md5sum-) "3e58674313cc0990de93c97c52bc2f8c")
(setf (get kuka::GetDepth :datatype-) "kuka/GetDepth")
(setf (get kuka::GetDepth :request) kuka::GetDepthRequest)
(setf (get kuka::GetDepth :response) kuka::GetDepthResponse)

(defmethod kuka::GetDepthRequest
  (:response () (instance kuka::GetDepthResponse :init)))

(setf (get kuka::GetDepthRequest :md5sum-) "3e58674313cc0990de93c97c52bc2f8c")
(setf (get kuka::GetDepthRequest :datatype-) "kuka/GetDepthRequest")
(setf (get kuka::GetDepthRequest :definition-)
      "int16 x		# image x coordinate
int16 y		# image y coordinate
---
int32 depth	#depth (mm) of object at image coordinates

")

(setf (get kuka::GetDepthResponse :md5sum-) "3e58674313cc0990de93c97c52bc2f8c")
(setf (get kuka::GetDepthResponse :datatype-) "kuka/GetDepthResponse")
(setf (get kuka::GetDepthResponse :definition-)
      "int16 x		# image x coordinate
int16 y		# image y coordinate
---
int32 depth	#depth (mm) of object at image coordinates

")



(provide :kuka/GetDepth "3e58674313cc0990de93c97c52bc2f8c")


