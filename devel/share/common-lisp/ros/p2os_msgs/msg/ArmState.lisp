; Auto-generated. Do not edit!


(cl:in-package p2os_msgs-msg)


;//! \htmlinclude ArmState.msg.html

(cl:defclass <ArmState> (roslisp-msg-protocol:ros-message)
  ((arm_power
    :reader arm_power
    :initarg :arm_power
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ArmState (<ArmState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p2os_msgs-msg:<ArmState> is deprecated: use p2os_msgs-msg:ArmState instead.")))

(cl:ensure-generic-function 'arm_power-val :lambda-list '(m))
(cl:defmethod arm_power-val ((m <ArmState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:arm_power-val is deprecated.  Use p2os_msgs-msg:arm_power instead.")
  (arm_power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmState>) ostream)
  "Serializes a message object of type '<ArmState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'arm_power) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmState>) istream)
  "Deserializes a message object of type '<ArmState>"
    (cl:setf (cl:slot-value msg 'arm_power) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmState>)))
  "Returns string type for a message object of type '<ArmState>"
  "p2os_msgs/ArmState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmState)))
  "Returns string type for a message object of type 'ArmState"
  "p2os_msgs/ArmState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmState>)))
  "Returns md5sum for a message object of type '<ArmState>"
  "f78f2c49a110ba43464d5c16d2a19027")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmState)))
  "Returns md5sum for a message object of type 'ArmState"
  "f78f2c49a110ba43464d5c16d2a19027")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmState>)))
  "Returns full string definition for message of type '<ArmState>"
  (cl:format cl:nil "bool arm_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmState)))
  "Returns full string definition for message of type 'ArmState"
  (cl:format cl:nil "bool arm_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmState>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmState
    (cl:cons ':arm_power (arm_power msg))
))
