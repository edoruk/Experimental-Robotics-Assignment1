; Auto-generated. Do not edit!


(cl:in-package custom_messages-msg)


;//! \htmlinclude Play.msg.html

(cl:defclass <Play> (roslisp-msg-protocol:ros-message)
  ((play_pose_x
    :reader play_pose_x
    :initarg :play_pose_x
    :type cl:float
    :initform 0.0)
   (play_pose_y
    :reader play_pose_y
    :initarg :play_pose_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Play (<Play>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Play>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Play)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_messages-msg:<Play> is deprecated: use custom_messages-msg:Play instead.")))

(cl:ensure-generic-function 'play_pose_x-val :lambda-list '(m))
(cl:defmethod play_pose_x-val ((m <Play>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_messages-msg:play_pose_x-val is deprecated.  Use custom_messages-msg:play_pose_x instead.")
  (play_pose_x m))

(cl:ensure-generic-function 'play_pose_y-val :lambda-list '(m))
(cl:defmethod play_pose_y-val ((m <Play>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_messages-msg:play_pose_y-val is deprecated.  Use custom_messages-msg:play_pose_y instead.")
  (play_pose_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Play>) ostream)
  "Serializes a message object of type '<Play>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'play_pose_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'play_pose_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Play>) istream)
  "Deserializes a message object of type '<Play>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'play_pose_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'play_pose_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Play>)))
  "Returns string type for a message object of type '<Play>"
  "custom_messages/Play")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Play)))
  "Returns string type for a message object of type 'Play"
  "custom_messages/Play")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Play>)))
  "Returns md5sum for a message object of type '<Play>"
  "4c60304461db9a9373cfa924ea61bbd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Play)))
  "Returns md5sum for a message object of type 'Play"
  "4c60304461db9a9373cfa924ea61bbd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Play>)))
  "Returns full string definition for message of type '<Play>"
  (cl:format cl:nil "float32 play_pose_x~%float32 play_pose_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Play)))
  "Returns full string definition for message of type 'Play"
  (cl:format cl:nil "float32 play_pose_x~%float32 play_pose_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Play>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Play>))
  "Converts a ROS message object to a list"
  (cl:list 'Play
    (cl:cons ':play_pose_x (play_pose_x msg))
    (cl:cons ':play_pose_y (play_pose_y msg))
))
