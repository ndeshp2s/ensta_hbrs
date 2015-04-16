; Auto-generated. Do not edit!


(cl:in-package p2os_msgs-msg)


;//! \htmlinclude AIO.msg.html

(cl:defclass <AIO> (roslisp-msg-protocol:ros-message)
  ((voltages_count
    :reader voltages_count
    :initarg :voltages_count
    :type cl:fixnum
    :initform 0)
   (voltages
    :reader voltages
    :initarg :voltages
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AIO (<AIO>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AIO>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AIO)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name p2os_msgs-msg:<AIO> is deprecated: use p2os_msgs-msg:AIO instead.")))

(cl:ensure-generic-function 'voltages_count-val :lambda-list '(m))
(cl:defmethod voltages_count-val ((m <AIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:voltages_count-val is deprecated.  Use p2os_msgs-msg:voltages_count instead.")
  (voltages_count m))

(cl:ensure-generic-function 'voltages-val :lambda-list '(m))
(cl:defmethod voltages-val ((m <AIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader p2os_msgs-msg:voltages-val is deprecated.  Use p2os_msgs-msg:voltages instead.")
  (voltages m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AIO>) ostream)
  "Serializes a message object of type '<AIO>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltages_count)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'voltages))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'voltages))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AIO>) istream)
  "Deserializes a message object of type '<AIO>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltages_count)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'voltages) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'voltages)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AIO>)))
  "Returns string type for a message object of type '<AIO>"
  "p2os_msgs/AIO")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AIO)))
  "Returns string type for a message object of type 'AIO"
  "p2os_msgs/AIO")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AIO>)))
  "Returns md5sum for a message object of type '<AIO>"
  "80e4ca5770a3db29064af246946ff4fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AIO)))
  "Returns md5sum for a message object of type 'AIO"
  "80e4ca5770a3db29064af246946ff4fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AIO>)))
  "Returns full string definition for message of type '<AIO>"
  (cl:format cl:nil "uint8 voltages_count~%float32[] voltages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AIO)))
  "Returns full string definition for message of type 'AIO"
  (cl:format cl:nil "uint8 voltages_count~%float32[] voltages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AIO>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'voltages) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AIO>))
  "Converts a ROS message object to a list"
  (cl:list 'AIO
    (cl:cons ':voltages_count (voltages_count msg))
    (cl:cons ':voltages (voltages msg))
))
