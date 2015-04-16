; Auto-generated. Do not edit!


(cl:in-package semantic_knowledgebase-msg)


;//! \htmlinclude SemanticProperties.msg.html

(cl:defclass <SemanticProperties> (roslisp-msg-protocol:ros-message)
  ((category
    :reader category
    :initarg :category
    :type cl:string
    :initform "")
   (sub_category
    :reader sub_category
    :initarg :sub_category
    :type cl:string
    :initform ""))
)

(cl:defclass SemanticProperties (<SemanticProperties>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticProperties>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticProperties)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name semantic_knowledgebase-msg:<SemanticProperties> is deprecated: use semantic_knowledgebase-msg:SemanticProperties instead.")))

(cl:ensure-generic-function 'category-val :lambda-list '(m))
(cl:defmethod category-val ((m <SemanticProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantic_knowledgebase-msg:category-val is deprecated.  Use semantic_knowledgebase-msg:category instead.")
  (category m))

(cl:ensure-generic-function 'sub_category-val :lambda-list '(m))
(cl:defmethod sub_category-val ((m <SemanticProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantic_knowledgebase-msg:sub_category-val is deprecated.  Use semantic_knowledgebase-msg:sub_category instead.")
  (sub_category m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticProperties>) ostream)
  "Serializes a message object of type '<SemanticProperties>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'category))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'category))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sub_category))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sub_category))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticProperties>) istream)
  "Deserializes a message object of type '<SemanticProperties>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'category) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'category) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sub_category) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sub_category) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticProperties>)))
  "Returns string type for a message object of type '<SemanticProperties>"
  "semantic_knowledgebase/SemanticProperties")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticProperties)))
  "Returns string type for a message object of type 'SemanticProperties"
  "semantic_knowledgebase/SemanticProperties")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticProperties>)))
  "Returns md5sum for a message object of type '<SemanticProperties>"
  "0fc139786388051e07c74d6aac4191b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticProperties)))
  "Returns md5sum for a message object of type 'SemanticProperties"
  "0fc139786388051e07c74d6aac4191b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticProperties>)))
  "Returns full string definition for message of type '<SemanticProperties>"
  (cl:format cl:nil "string category~%string sub_category~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticProperties)))
  "Returns full string definition for message of type 'SemanticProperties"
  (cl:format cl:nil "string category~%string sub_category~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticProperties>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'category))
     4 (cl:length (cl:slot-value msg 'sub_category))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticProperties>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticProperties
    (cl:cons ':category (category msg))
    (cl:cons ':sub_category (sub_category msg))
))
