; Auto-generated. Do not edit!


(cl:in-package semantic_knowledgebase-srv)


;//! \htmlinclude KBService-request.msg.html

(cl:defclass <KBService-request> (roslisp-msg-protocol:ros-message)
  ((object_category_request
    :reader object_category_request
    :initarg :object_category_request
    :type cl:string
    :initform ""))
)

(cl:defclass KBService-request (<KBService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KBService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KBService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name semantic_knowledgebase-srv:<KBService-request> is deprecated: use semantic_knowledgebase-srv:KBService-request instead.")))

(cl:ensure-generic-function 'object_category_request-val :lambda-list '(m))
(cl:defmethod object_category_request-val ((m <KBService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantic_knowledgebase-srv:object_category_request-val is deprecated.  Use semantic_knowledgebase-srv:object_category_request instead.")
  (object_category_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KBService-request>) ostream)
  "Serializes a message object of type '<KBService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_category_request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_category_request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KBService-request>) istream)
  "Deserializes a message object of type '<KBService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_category_request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_category_request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KBService-request>)))
  "Returns string type for a service object of type '<KBService-request>"
  "semantic_knowledgebase/KBServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KBService-request)))
  "Returns string type for a service object of type 'KBService-request"
  "semantic_knowledgebase/KBServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KBService-request>)))
  "Returns md5sum for a message object of type '<KBService-request>"
  "46cf32d53ca973a4c06e2a326f3baeb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KBService-request)))
  "Returns md5sum for a message object of type 'KBService-request"
  "46cf32d53ca973a4c06e2a326f3baeb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KBService-request>)))
  "Returns full string definition for message of type '<KBService-request>"
  (cl:format cl:nil "string object_category_request~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KBService-request)))
  "Returns full string definition for message of type 'KBService-request"
  (cl:format cl:nil "string object_category_request~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KBService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_category_request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KBService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'KBService-request
    (cl:cons ':object_category_request (object_category_request msg))
))
;//! \htmlinclude KBService-response.msg.html

(cl:defclass <KBService-response> (roslisp-msg-protocol:ros-message)
  ((object_list
    :reader object_list
    :initarg :object_list
    :type semantic_knowledgebase-msg:ObjectList
    :initform (cl:make-instance 'semantic_knowledgebase-msg:ObjectList)))
)

(cl:defclass KBService-response (<KBService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KBService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KBService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name semantic_knowledgebase-srv:<KBService-response> is deprecated: use semantic_knowledgebase-srv:KBService-response instead.")))

(cl:ensure-generic-function 'object_list-val :lambda-list '(m))
(cl:defmethod object_list-val ((m <KBService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantic_knowledgebase-srv:object_list-val is deprecated.  Use semantic_knowledgebase-srv:object_list instead.")
  (object_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KBService-response>) ostream)
  "Serializes a message object of type '<KBService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_list) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KBService-response>) istream)
  "Deserializes a message object of type '<KBService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_list) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KBService-response>)))
  "Returns string type for a service object of type '<KBService-response>"
  "semantic_knowledgebase/KBServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KBService-response)))
  "Returns string type for a service object of type 'KBService-response"
  "semantic_knowledgebase/KBServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KBService-response>)))
  "Returns md5sum for a message object of type '<KBService-response>"
  "46cf32d53ca973a4c06e2a326f3baeb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KBService-response)))
  "Returns md5sum for a message object of type 'KBService-response"
  "46cf32d53ca973a4c06e2a326f3baeb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KBService-response>)))
  "Returns full string definition for message of type '<KBService-response>"
  (cl:format cl:nil "ObjectList object_list~%~%~%~%================================================================================~%MSG: semantic_knowledgebase/ObjectList~%Object[] objects ~%~%================================================================================~%MSG: semantic_knowledgebase/Object~%~%ObjectInstance  instance~%GeometricProperties geometry~%SemanticProperties semantics~%~%~%~%~%================================================================================~%MSG: semantic_knowledgebase/ObjectInstance~%string name~%~%~%================================================================================~%MSG: semantic_knowledgebase/GeometricProperties~%geometry_msgs/Pose pose~%BoundingBox bounding_box~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: semantic_knowledgebase/BoundingBox~%geometry_msgs/Vector3[] vertices~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: semantic_knowledgebase/SemanticProperties~%string category~%string sub_category~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KBService-response)))
  "Returns full string definition for message of type 'KBService-response"
  (cl:format cl:nil "ObjectList object_list~%~%~%~%================================================================================~%MSG: semantic_knowledgebase/ObjectList~%Object[] objects ~%~%================================================================================~%MSG: semantic_knowledgebase/Object~%~%ObjectInstance  instance~%GeometricProperties geometry~%SemanticProperties semantics~%~%~%~%~%================================================================================~%MSG: semantic_knowledgebase/ObjectInstance~%string name~%~%~%================================================================================~%MSG: semantic_knowledgebase/GeometricProperties~%geometry_msgs/Pose pose~%BoundingBox bounding_box~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: semantic_knowledgebase/BoundingBox~%geometry_msgs/Vector3[] vertices~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: semantic_knowledgebase/SemanticProperties~%string category~%string sub_category~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KBService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_list))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KBService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'KBService-response
    (cl:cons ':object_list (object_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'KBService)))
  'KBService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'KBService)))
  'KBService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KBService)))
  "Returns string type for a service object of type '<KBService>"
  "semantic_knowledgebase/KBService")