
(cl:in-package :asdf)

(defsystem "semantic_knowledgebase-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :semantic_knowledgebase-msg
)
  :components ((:file "_package")
    (:file "KBService" :depends-on ("_package_KBService"))
    (:file "_package_KBService" :depends-on ("_package"))
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
  ))