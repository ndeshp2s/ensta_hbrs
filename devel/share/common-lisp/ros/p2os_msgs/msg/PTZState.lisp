; Auto-generated. Do not edit!


(cl:in-package p2os_msgs-msg)


;//! \htmlinclude PTZState.msg.html

(cl:defclass <PTZState> (roslisp-msg-protocol:ros-message)
  ((pan
    :reader pan
    :initarg :pan
    :type cl:integer
    :initform 0)
   (tilt
    :reader tilt
    :initarg :tilt
    :type cl:integer
    :initform 0)
   (zoom
    :reader zoom
    :initarg :zoom
    :type cl:integer
    :initform 0)
   (relative
    :reader relative
    :initarg :relative
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PTZState (<PTZState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PTZState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PTZState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p2os_msgs-msg:<PTZState> is deprecated: use p2os_msgs-msg:PTZState instead.")))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <PTZState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:pan-val is deprecated.  Use p2os_msgs-msg:pan instead.")
  (pan m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <PTZState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:tilt-val is deprecated.  Use p2os_msgs-msg:tilt instead.")
  (tilt m))

(cl:ensure-generic-function 'zoom-val :lambda-list '(m))
(cl:defmethod zoom-val ((m <PTZState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:zoom-val is deprecated.  Use p2os_msgs-msg:zoom instead.")
  (zoom m))

(cl:ensure-generic-function 'relative-val :lambda-list '(m))
(cl:defmethod relative-val ((m <PTZState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:relative-val is deprecated.  Use p2os_msgs-msg:relative instead.")
  (relative m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PTZState>) ostream)
  "Serializes a message object of type '<PTZState>"
  (cl:let* ((signed (cl:slot-value msg 'pan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tilt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'zoom)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relative) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PTZState>) istream)
  "Deserializes a message object of type '<PTZState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pan) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tilt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zoom) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'relative) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PTZState>)))
  "Returns string type for a message object of type '<PTZState>"
  "p2os_msgs/PTZState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PTZState)))
  "Returns string type for a message object of type 'PTZState"
  "p2os_msgs/PTZState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PTZState>)))
  "Returns md5sum for a message object of type '<PTZState>"
  "1f71ce2a42b32376ea869eb051358045")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PTZState)))
  "Returns md5sum for a message object of type 'PTZState"
  "1f71ce2a42b32376ea869eb051358045")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PTZState>)))
  "Returns full string definition for message of type '<PTZState>"
  (cl:format cl:nil "int32 pan~%int32 tilt~%int32 zoom~%bool relative~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PTZState)))
  "Returns full string definition for message of type 'PTZState"
  (cl:format cl:nil "int32 pan~%int32 tilt~%int32 zoom~%bool relative~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PTZState>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PTZState>))
  "Converts a ROS message object to a list"
  (cl:list 'PTZState
    (cl:cons ':pan (pan msg))
    (cl:cons ':tilt (tilt msg))
    (cl:cons ':zoom (zoom msg))
    (cl:cons ':relative (relative msg))
))
