; Auto-generated. Do not edit!


(cl:in-package semantic_knowledgebase-msg)


;//! \htmlinclude GeometricProperties.msg.html

(cl:defclass <GeometricProperties> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (bounding_box
    :reader bounding_box
    :initarg :bounding_box
    :type semantic_knowledgebase-msg:BoundingBox
    :initform (cl:make-instance 'semantic_knowledgebase-msg:BoundingBox)))
)

(cl:defclass GeometricProperties (<GeometricProperties>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeometricProperties>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeometricProperties)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name semantic_knowledgebase-msg:<GeometricProperties> is deprecated: use semantic_knowledgebase-msg:GeometricProperties instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GeometricProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantic_knowledgebase-msg:pose-val is deprecated.  Use semantic_knowledgebase-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'bounding_box-val :lambda-list '(m))
(cl:defmethod bounding_box-val ((m <GeometricProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantic_knowledgebase-msg:bounding_box-val is deprecated.  Use semantic_knowledgebase-msg:bounding_box instead.")
  (bounding_box m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeometricProperties>) ostream)
  "Serializes a message object of type '<GeometricProperties>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeometricProperties>) istream)
  "Deserializes a message object of type '<GeometricProperties>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeometricProperties>)))
  "Returns string type for a message object of type '<GeometricProperties>"
  "semantic_knowledgebase/GeometricProperties")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeometricProperties)))
  "Returns string type for a message object of type 'GeometricProperties"
  "semantic_knowledgebase/GeometricProperties")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeometricProperties>)))
  "Returns md5sum for a message object of type '<GeometricProperties>"
  "cbdc6669616d25728b1b59368c6443e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeometricProperties)))
  "Returns md5sum for a message object of type 'GeometricProperties"
  "cbdc6669616d25728b1b59368c6443e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeometricProperties>)))
  "Returns full string definition for message of type '<GeometricProperties>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%BoundingBox bounding_box~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: semantic_knowledgebase/BoundingBox~%geometry_msgs/Vector3[] vertices~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeometricProperties)))
  "Returns full string definition for message of type 'GeometricProperties"
  (cl:format cl:nil "geometry_msgs/Pose pose~%BoundingBox bounding_box~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: semantic_knowledgebase/BoundingBox~%geometry_msgs/Vector3[] vertices~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeometricProperties>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeometricProperties>))
  "Converts a ROS message object to a list"
  (cl:list 'GeometricProperties
    (cl:cons ':pose (pose msg))
    (cl:cons ':bounding_box (bounding_box msg))
))
