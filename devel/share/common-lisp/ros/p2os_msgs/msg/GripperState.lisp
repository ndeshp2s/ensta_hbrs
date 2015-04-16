; Auto-generated. Do not edit!


(cl:in-package p2os_msgs-msg)


;//! \htmlinclude GripperState.msg.html

(cl:defclass <GripperState> (roslisp-msg-protocol:ros-message)
  ((grip
    :reader grip
    :initarg :grip
    :type p2os_msgs-msg:GripState
    :initform (cl:make-instance 'p2os_msgs-msg:GripState))
   (lift
    :reader lift
    :initarg :lift
    :type p2os_msgs-msg:LiftState
    :initform (cl:make-instance 'p2os_msgs-msg:LiftState)))
)

(cl:defclass GripperState (<GripperState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p2os_msgs-msg:<GripperState> is deprecated: use p2os_msgs-msg:GripperState instead.")))

(cl:ensure-generic-function 'grip-val :lambda-list '(m))
(cl:defmethod grip-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:grip-val is deprecated.  Use p2os_msgs-msg:grip instead.")
  (grip m))

(cl:ensure-generic-function 'lift-val :lambda-list '(m))
(cl:defmethod lift-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:lift-val is deprecated.  Use p2os_msgs-msg:lift instead.")
  (lift m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperState>) ostream)
  "Serializes a message object of type '<GripperState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grip) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lift) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperState>) istream)
  "Deserializes a message object of type '<GripperState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grip) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lift) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperState>)))
  "Returns string type for a message object of type '<GripperState>"
  "p2os_msgs/GripperState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperState)))
  "Returns string type for a message object of type 'GripperState"
  "p2os_msgs/GripperState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperState>)))
  "Returns md5sum for a message object of type '<GripperState>"
  "300b38b2a4173deb725df02fa70fc70b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperState)))
  "Returns md5sum for a message object of type 'GripperState"
  "300b38b2a4173deb725df02fa70fc70b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperState>)))
  "Returns full string definition for message of type '<GripperState>"
  (cl:format cl:nil "GripState grip~%LiftState lift~%~%================================================================================~%MSG: p2os_msgs/GripState~%# direction -1 is inward, +1 is outward, 0 is stationary~%uint32 state~%int32 dir~%bool inner_beam~%bool outer_beam~%bool left_contact~%bool right_contact~%~%================================================================================~%MSG: p2os_msgs/LiftState~%# direction -1 is downard, +1 is upward, 0 is stationary~%int32 state~%int32 dir~%float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperState)))
  "Returns full string definition for message of type 'GripperState"
  (cl:format cl:nil "GripState grip~%LiftState lift~%~%================================================================================~%MSG: p2os_msgs/GripState~%# direction -1 is inward, +1 is outward, 0 is stationary~%uint32 state~%int32 dir~%bool inner_beam~%bool outer_beam~%bool left_contact~%bool right_contact~%~%================================================================================~%MSG: p2os_msgs/LiftState~%# direction -1 is downard, +1 is upward, 0 is stationary~%int32 state~%int32 dir~%float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grip))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lift))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperState>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperState
    (cl:cons ':grip (grip msg))
    (cl:cons ':lift (lift msg))
))
