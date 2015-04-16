
(cl:in-package :asdf)

(defsystem "semantic_knowledgebase-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "GeometricProperties" :depends-on ("_package_GeometricProperties"))
    (:file "_package_GeometricProperties" :depends-on ("_package"))
    (:file "SemanticProperties" :depends-on ("_package_SemanticProperties"))
    (:file "_package_SemanticProperties" :depends-on ("_package"))
    (:file "BoundingBox" :depends-on ("_package_BoundingBox"))
    (:file "_package_BoundingBox" :depends-on ("_package"))
    (:file "ObjectList" :depends-on ("_package_ObjectList"))
    (:file "_package_ObjectList" :depends-on ("_package"))
    (:file "ObjectInstance" :depends-on ("_package_ObjectInstance"))
    (:file "_package_ObjectInstance" :depends-on ("_package"))
  ))