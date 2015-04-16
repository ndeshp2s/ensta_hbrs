; Auto-generated. Do not edit!


(cl:in-package p2os_msgs-msg)


;//! \htmlinclude TCMState.msg.html

(cl:defclass <TCMState> (roslisp-msg-protocol:ros-message)
  ((tcm_power
    :reader tcm_power
    :initarg :tcm_power
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TCMState (<TCMState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TCMState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TCMState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p2os_msgs-msg:<TCMState> is deprecated: use p2os_msgs-msg:TCMState instead.")))

(cl:ensure-generic-function 'tcm_power-val :lambda-list '(m))
(cl:defmethod tcm_power-val ((m <TCMState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:tcm_power-val is deprecated.  Use p2os_msgs-msg:tcm_power instead.")
  (tcm_power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TCMState>) ostream)
  "Serializes a message object of type '<TCMState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tcm_power) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TCMState>) istream)
  "Deserializes a message object of type '<TCMState>"
    (cl:setf (cl:slot-value msg 'tcm_power) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TCMState>)))
  "Returns string type for a message object of type '<TCMState>"
  "p2os_msgs/TCMState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TCMState)))
  "Returns string type for a message object of type 'TCMState"
  "p2os_msgs/TCMState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TCMState>)))
  "Returns md5sum for a message object of type '<TCMState>"
  "c2bc91397a05d27a5eff6dafb47db890")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TCMState)))
  "Returns md5sum for a message object of type 'TCMState"
  "c2bc91397a05d27a5eff6dafb47db890")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TCMState>)))
  "Returns full string definition for message of type '<TCMState>"
  (cl:format cl:nil "bool tcm_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TCMState)))
  "Returns full string definition for message of type 'TCMState"
  (cl:format cl:nil "bool tcm_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TCMState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TCMState>))
  "Converts a ROS message object to a list"
  (cl:list 'TCMState
    (cl:cons ':tcm_power (tcm_power msg))
))
