; Auto-generated. Do not edit!


(cl:in-package p2os_msgs-msg)


;//! \htmlinclude GripState.msg.html

(cl:defclass <GripState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (dir
    :reader dir
    :initarg :dir
    :type cl:integer
    :initform 0)
   (inner_beam
    :reader inner_beam
    :initarg :inner_beam
    :type cl:boolean
    :initform cl:nil)
   (outer_beam
    :reader outer_beam
    :initarg :outer_beam
    :type cl:boolean
    :initform cl:nil)
   (left_contact
    :reader left_contact
    :initarg :left_contact
    :type cl:boolean
    :initform cl:nil)
   (right_contact
    :reader right_contact
    :initarg :right_contact
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GripState (<GripState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p2os_msgs-msg:<GripState> is deprecated: use p2os_msgs-msg:GripState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GripState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:state-val is deprecated.  Use p2os_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <GripState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:dir-val is deprecated.  Use p2os_msgs-msg:dir instead.")
  (dir m))

(cl:ensure-generic-function 'inner_beam-val :lambda-list '(m))
(cl:defmethod inner_beam-val ((m <GripState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:inner_beam-val is deprecated.  Use p2os_msgs-msg:inner_beam instead.")
  (inner_beam m))

(cl:ensure-generic-function 'outer_beam-val :lambda-list '(m))
(cl:defmethod outer_beam-val ((m <GripState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:outer_beam-val is deprecated.  Use p2os_msgs-msg:outer_beam instead.")
  (outer_beam m))

(cl:ensure-generic-function 'left_contact-val :lambda-list '(m))
(cl:defmethod left_contact-val ((m <GripState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:left_contact-val is deprecated.  Use p2os_msgs-msg:left_contact instead.")
  (left_contact m))

(cl:ensure-generic-function 'right_contact-val :lambda-list '(m))
(cl:defmethod right_contact-val ((m <GripState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:right_contact-val is deprecated.  Use p2os_msgs-msg:right_contact instead.")
  (right_contact m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripState>) ostream)
  "Serializes a message object of type '<GripState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'state)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'dir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inner_beam) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'outer_beam) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_contact) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_contact) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripState>) istream)
  "Deserializes a message object of type '<GripState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'inner_beam) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'outer_beam) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_contact) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_contact) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripState>)))
  "Returns string type for a message object of type '<GripState>"
  "p2os_msgs/GripState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripState)))
  "Returns string type for a message object of type 'GripState"
  "p2os_msgs/GripState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripState>)))
  "Returns md5sum for a message object of type '<GripState>"
  "370eb3507be0ed1043be50a3da3a07c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripState)))
  "Returns md5sum for a message object of type 'GripState"
  "370eb3507be0ed1043be50a3da3a07c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripState>)))
  "Returns full string definition for message of type '<GripState>"
  (cl:format cl:nil "# direction -1 is inward, +1 is outward, 0 is stationary~%uint32 state~%int32 dir~%bool inner_beam~%bool outer_beam~%bool left_contact~%bool right_contact~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripState)))
  "Returns full string definition for message of type 'GripState"
  (cl:format cl:nil "# direction -1 is inward, +1 is outward, 0 is stationary~%uint32 state~%int32 dir~%bool inner_beam~%bool outer_beam~%bool left_contact~%bool right_contact~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripState>))
  (cl:+ 0
     4
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripState>))
  "Converts a ROS message object to a list"
  (cl:list 'GripState
    (cl:cons ':state (state msg))
    (cl:cons ':dir (dir msg))
    (cl:cons ':inner_beam (inner_beam msg))
    (cl:cons ':outer_beam (outer_beam msg))
    (cl:cons ':left_contact (left_contact msg))
    (cl:cons ':right_contact (right_contact msg))
))
