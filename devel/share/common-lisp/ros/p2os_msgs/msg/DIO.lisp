; Auto-generated. Do not edit!


(cl:in-package p2os_msgs-msg)


;//! \htmlinclude DIO.msg.html

(cl:defclass <DIO> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (bits
    :reader bits
    :initarg :bits
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DIO (<DIO>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DIO>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DIO)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p2os_msgs-msg:<DIO> is deprecated: use p2os_msgs-msg:DIO instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <DIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:count-val is deprecated.  Use p2os_msgs-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'bits-val :lambda-list '(m))
(cl:defmethod bits-val ((m <DIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:bits-val is deprecated.  Use p2os_msgs-msg:bits instead.")
  (bits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DIO>) ostream)
  "Serializes a message object of type '<DIO>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bits)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DIO>) istream)
  "Deserializes a message object of type '<DIO>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bits)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DIO>)))
  "Returns string type for a message object of type '<DIO>"
  "p2os_msgs/DIO")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DIO)))
  "Returns string type for a message object of type 'DIO"
  "p2os_msgs/DIO")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DIO>)))
  "Returns md5sum for a message object of type '<DIO>"
  "d375575ab5b2233ab16927780da5f856")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DIO)))
  "Returns md5sum for a message object of type 'DIO"
  "d375575ab5b2233ab16927780da5f856")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DIO>)))
  "Returns full string definition for message of type '<DIO>"
  (cl:format cl:nil "uint32 count~%uint16 bits~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DIO)))
  "Returns full string definition for message of type 'DIO"
  (cl:format cl:nil "uint32 count~%uint16 bits~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DIO>))
  (cl:+ 0
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DIO>))
  "Converts a ROS message object to a list"
  (cl:list 'DIO
    (cl:cons ':count (count msg))
    (cl:cons ':bits (bits msg))
))
