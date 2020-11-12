;; Auto-generated. Do not edit!


(when (boundp 'custom_messages::Play)
  (if (not (find-package "CUSTOM_MESSAGES"))
    (make-package "CUSTOM_MESSAGES"))
  (shadow 'Play (find-package "CUSTOM_MESSAGES")))
(unless (find-package "CUSTOM_MESSAGES::PLAY")
  (make-package "CUSTOM_MESSAGES::PLAY"))

(in-package "ROS")
;;//! \htmlinclude Play.msg.html


(defclass custom_messages::Play
  :super ros::object
  :slots (_play_pose_x _play_pose_y ))

(defmethod custom_messages::Play
  (:init
   (&key
    ((:play_pose_x __play_pose_x) 0.0)
    ((:play_pose_y __play_pose_y) 0.0)
    )
   (send-super :init)
   (setq _play_pose_x (float __play_pose_x))
   (setq _play_pose_y (float __play_pose_y))
   self)
  (:play_pose_x
   (&optional __play_pose_x)
   (if __play_pose_x (setq _play_pose_x __play_pose_x)) _play_pose_x)
  (:play_pose_y
   (&optional __play_pose_y)
   (if __play_pose_y (setq _play_pose_y __play_pose_y)) _play_pose_y)
  (:serialization-length
   ()
   (+
    ;; float32 _play_pose_x
    4
    ;; float32 _play_pose_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _play_pose_x
       (sys::poke _play_pose_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _play_pose_y
       (sys::poke _play_pose_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _play_pose_x
     (setq _play_pose_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _play_pose_y
     (setq _play_pose_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_messages::Play :md5sum-) "4c60304461db9a9373cfa924ea61bbd9")
(setf (get custom_messages::Play :datatype-) "custom_messages/Play")
(setf (get custom_messages::Play :definition-)
      "float32 play_pose_x
float32 play_pose_y

")



(provide :custom_messages/Play "4c60304461db9a9373cfa924ea61bbd9")


