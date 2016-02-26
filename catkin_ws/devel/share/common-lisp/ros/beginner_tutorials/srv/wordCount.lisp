; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude wordCount-request.msg.html

(cl:defclass <wordCount-request> (roslisp-msg-protocol:ros-message)
  ((words
    :reader words
    :initarg :words
    :type cl:string
    :initform ""))
)

(cl:defclass wordCount-request (<wordCount-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wordCount-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wordCount-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<wordCount-request> is deprecated: use beginner_tutorials-srv:wordCount-request instead.")))

(cl:ensure-generic-function 'words-val :lambda-list '(m))
(cl:defmethod words-val ((m <wordCount-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:words-val is deprecated.  Use beginner_tutorials-srv:words instead.")
  (words m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wordCount-request>) ostream)
  "Serializes a message object of type '<wordCount-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'words))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'words))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wordCount-request>) istream)
  "Deserializes a message object of type '<wordCount-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'words) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'words) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wordCount-request>)))
  "Returns string type for a service object of type '<wordCount-request>"
  "beginner_tutorials/wordCountRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wordCount-request)))
  "Returns string type for a service object of type 'wordCount-request"
  "beginner_tutorials/wordCountRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wordCount-request>)))
  "Returns md5sum for a message object of type '<wordCount-request>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wordCount-request)))
  "Returns md5sum for a message object of type 'wordCount-request"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wordCount-request>)))
  "Returns full string definition for message of type '<wordCount-request>"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wordCount-request)))
  "Returns full string definition for message of type 'wordCount-request"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wordCount-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'words))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wordCount-request>))
  "Converts a ROS message object to a list"
  (cl:list 'wordCount-request
    (cl:cons ':words (words msg))
))
;//! \htmlinclude wordCount-response.msg.html

(cl:defclass <wordCount-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass wordCount-response (<wordCount-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wordCount-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wordCount-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<wordCount-response> is deprecated: use beginner_tutorials-srv:wordCount-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <wordCount-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:count-val is deprecated.  Use beginner_tutorials-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wordCount-response>) ostream)
  "Serializes a message object of type '<wordCount-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wordCount-response>) istream)
  "Deserializes a message object of type '<wordCount-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wordCount-response>)))
  "Returns string type for a service object of type '<wordCount-response>"
  "beginner_tutorials/wordCountResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wordCount-response)))
  "Returns string type for a service object of type 'wordCount-response"
  "beginner_tutorials/wordCountResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wordCount-response>)))
  "Returns md5sum for a message object of type '<wordCount-response>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wordCount-response)))
  "Returns md5sum for a message object of type 'wordCount-response"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wordCount-response>)))
  "Returns full string definition for message of type '<wordCount-response>"
  (cl:format cl:nil "uint32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wordCount-response)))
  "Returns full string definition for message of type 'wordCount-response"
  (cl:format cl:nil "uint32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wordCount-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wordCount-response>))
  "Converts a ROS message object to a list"
  (cl:list 'wordCount-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'wordCount)))
  'wordCount-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'wordCount)))
  'wordCount-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wordCount)))
  "Returns string type for a service object of type '<wordCount>"
  "beginner_tutorials/wordCount")