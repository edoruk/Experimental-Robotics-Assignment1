; Auto-generated. Do not edit!


(cl:in-package custom_messages-srv)


;//! \htmlinclude play_pose-request.msg.html

(cl:defclass <play_pose-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass play_pose-request (<play_pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <play_pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'play_pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_messages-srv:<play_pose-request> is deprecated: use custom_messages-srv:play_pose-request instead.")))

(cl:ensure-generic-function 'play_pose_x-val :lambda-list '(m))
(cl:defmethod play_pose_x-val ((m <play_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_messages-srv:play_pose_x-val is deprecated.  Use custom_messages-srv:play_pose_x instead.")
  (play_pose_x m))

(cl:ensure-generic-function 'play_pose_y-val :lambda-list '(m))
(cl:defmethod play_pose_y-val ((m <play_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_messages-srv:play_pose_y-val is deprecated.  Use custom_messages-srv:play_pose_y instead.")
  (play_pose_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <play_pose-request>) ostream)
  "Serializes a message object of type '<play_pose-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <play_pose-request>) istream)
  "Deserializes a message object of type '<play_pose-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<play_pose-request>)))
  "Returns string type for a service object of type '<play_pose-request>"
  "custom_messages/play_poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'play_pose-request)))
  "Returns string type for a service object of type 'play_pose-request"
  "custom_messages/play_poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<play_pose-request>)))
  "Returns md5sum for a message object of type '<play_pose-request>"
  "926c357e5c9b841314d3b8b1f58e3abe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'play_pose-request)))
  "Returns md5sum for a message object of type 'play_pose-request"
  "926c357e5c9b841314d3b8b1f58e3abe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<play_pose-request>)))
  "Returns full string definition for message of type '<play_pose-request>"
  (cl:format cl:nil "float32 play_pose_x~%float32 play_pose_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'play_pose-request)))
  "Returns full string definition for message of type 'play_pose-request"
  (cl:format cl:nil "float32 play_pose_x~%float32 play_pose_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <play_pose-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <play_pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'play_pose-request
    (cl:cons ':play_pose_x (play_pose_x msg))
    (cl:cons ':play_pose_y (play_pose_y msg))
))
;//! \htmlinclude play_pose-response.msg.html

(cl:defclass <play_pose-response> (roslisp-msg-protocol:ros-message)
  ((play_res
    :reader play_res
    :initarg :play_res
    :type cl:float
    :initform 0.0))
)

(cl:defclass play_pose-response (<play_pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <play_pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'play_pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_messages-srv:<play_pose-response> is deprecated: use custom_messages-srv:play_pose-response instead.")))

(cl:ensure-generic-function 'play_res-val :lambda-list '(m))
(cl:defmethod play_res-val ((m <play_pose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_messages-srv:play_res-val is deprecated.  Use custom_messages-srv:play_res instead.")
  (play_res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <play_pose-response>) ostream)
  "Serializes a message object of type '<play_pose-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'play_res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <play_pose-response>) istream)
  "Deserializes a message object of type '<play_pose-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'play_res) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<play_pose-response>)))
  "Returns string type for a service object of type '<play_pose-response>"
  "custom_messages/play_poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'play_pose-response)))
  "Returns string type for a service object of type 'play_pose-response"
  "custom_messages/play_poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<play_pose-response>)))
  "Returns md5sum for a message object of type '<play_pose-response>"
  "926c357e5c9b841314d3b8b1f58e3abe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'play_pose-response)))
  "Returns md5sum for a message object of type 'play_pose-response"
  "926c357e5c9b841314d3b8b1f58e3abe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<play_pose-response>)))
  "Returns full string definition for message of type '<play_pose-response>"
  (cl:format cl:nil "float32 play_res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'play_pose-response)))
  "Returns full string definition for message of type 'play_pose-response"
  (cl:format cl:nil "float32 play_res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <play_pose-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <play_pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'play_pose-response
    (cl:cons ':play_res (play_res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'play_pose)))
  'play_pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'play_pose)))
  'play_pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'play_pose)))
  "Returns string type for a service object of type '<play_pose>"
  "custom_messages/play_pose")