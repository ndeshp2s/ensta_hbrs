; Auto-generated. Do not edit!


(cl:in-package semantic_knowledgebase-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
  ((instance
    :reader instance
    :initarg :instance
    :type semantic_knowledgebase-msg:ObjectInstance
    :initform (cl:make-instance 'semantic_knowledgebase-msg:ObjectInstance))
   (geometry
    :reader geometry
    :initarg :geometry
    :type semantic_knowledgebase-msg:GeometricProperties
    :initform (cl:make-instance 'semantic_knowledgebase-msg:GeometricProperties))
   (semantics
    :reader semantics
    :initarg :semantics
    :type semantic_knowledgebase-msg:SemanticProperties
    :initform (cl:make-instance 'semantic_knowledgebase-msg:SemanticProperties)))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name semantic_knowledgebase-msg:<Object> is deprecated: use semantic_knowledgebase-msg:Object instead.")))

(cl:ensure-generic-function 'instance-val :lambda-list '(m))
(cl:defmethod instance-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantic_knowledgebase-msg:instance-val is deprecated.  Use semantic_knowledgebase-msg:instance instead.")
  (instance m))

(cl:ensure-generic-function 'geometry-val :lambda-list '(m))
(cl:defmethod geometry-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantic_knowledgebase-msg:geometry-val is deprecated.  Use semantic_knowledgebase-msg:geometry instead.")
  (geometry m))

(cl:ensure-generic-function 'semantics-val :lambda-list '(m))
(cl:defmethod semantics-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantic_knowledgebase-msg:semantics-val is deprecated.  Use semantic_knowledgebase-msg:semantics instead.")
  (semantics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'instance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'geometry) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'semantics) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'instance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'geometry) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'semantics) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "semantic_knowledgebase/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "semantic_knowledgebase/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "e201121effcd15acabe85f6a248de10b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "e201121effcd15acabe85f6a248de10b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "~%ObjectInstance  instance~%GeometricProperties geometry~%SemanticProperties semantics~%~%~%~%~%================================================================================~%MSG: semantic_knowledgebase/ObjectInstance~%string name~%~%~%================================================================================~%MSG: semantic_knowledgebase/GeometricProperties~%geometry_msgs/Pose pose~%BoundingBox bounding_box~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: semantic_knowledgebase/BoundingBox~%geometry_msgs/Vector3[] vertices~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: semantic_knowledgebase/SemanticProperties~%string category~%string sub_category~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "~%ObjectInstance  instance~%GeometricProperties geometry~%SemanticProperties semantics~%~%~%~%~%================================================================================~%MSG: semantic_knowledgebase/ObjectInstance~%string name~%~%~%================================================================================~%MSG: semantic_knowledgebase/GeometricProperties~%geometry_msgs/Pose pose~%BoundingBox bounding_box~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: semantic_knowledgebase/BoundingBox~%geometry_msgs/Vector3[] vertices~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: semantic_knowledgebase/SemanticProperties~%string category~%string sub_category~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'instance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'geometry))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'semantics))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':instance (instance msg))
    (cl:cons ':geometry (geometry msg))
    (cl:cons ':semantics (semantics msg))
))
