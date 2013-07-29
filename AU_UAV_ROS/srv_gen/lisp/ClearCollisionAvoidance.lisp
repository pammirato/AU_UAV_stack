; Auto-generated. Do not edit!


(cl:in-package AU_UAV_ROS-srv)


;//! \htmlinclude ClearCollisionAvoidance-request.msg.html

(cl:defclass <ClearCollisionAvoidance-request> (roslisp-msg-protocol:ros-message)
  ((hello
    :reader hello
    :initarg :hello
    :type cl:string
    :initform ""))
)

(cl:defclass ClearCollisionAvoidance-request (<ClearCollisionAvoidance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearCollisionAvoidance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearCollisionAvoidance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<ClearCollisionAvoidance-request> is deprecated: use AU_UAV_ROS-srv:ClearCollisionAvoidance-request instead.")))

(cl:ensure-generic-function 'hello-val :lambda-list '(m))
(cl:defmethod hello-val ((m <ClearCollisionAvoidance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:hello-val is deprecated.  Use AU_UAV_ROS-srv:hello instead.")
  (hello m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearCollisionAvoidance-request>) ostream)
  "Serializes a message object of type '<ClearCollisionAvoidance-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hello))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hello))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearCollisionAvoidance-request>) istream)
  "Deserializes a message object of type '<ClearCollisionAvoidance-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hello) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hello) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearCollisionAvoidance-request>)))
  "Returns string type for a service object of type '<ClearCollisionAvoidance-request>"
  "AU_UAV_ROS/ClearCollisionAvoidanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearCollisionAvoidance-request)))
  "Returns string type for a service object of type 'ClearCollisionAvoidance-request"
  "AU_UAV_ROS/ClearCollisionAvoidanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearCollisionAvoidance-request>)))
  "Returns md5sum for a message object of type '<ClearCollisionAvoidance-request>"
  "3d4ba6c1e7182cfa297a43c7395e613d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearCollisionAvoidance-request)))
  "Returns md5sum for a message object of type 'ClearCollisionAvoidance-request"
  "3d4ba6c1e7182cfa297a43c7395e613d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearCollisionAvoidance-request>)))
  "Returns full string definition for message of type '<ClearCollisionAvoidance-request>"
  (cl:format cl:nil "string hello~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearCollisionAvoidance-request)))
  "Returns full string definition for message of type 'ClearCollisionAvoidance-request"
  (cl:format cl:nil "string hello~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearCollisionAvoidance-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'hello))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearCollisionAvoidance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearCollisionAvoidance-request
    (cl:cons ':hello (hello msg))
))
;//! \htmlinclude ClearCollisionAvoidance-response.msg.html

(cl:defclass <ClearCollisionAvoidance-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass ClearCollisionAvoidance-response (<ClearCollisionAvoidance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearCollisionAvoidance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearCollisionAvoidance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<ClearCollisionAvoidance-response> is deprecated: use AU_UAV_ROS-srv:ClearCollisionAvoidance-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ClearCollisionAvoidance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:error-val is deprecated.  Use AU_UAV_ROS-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearCollisionAvoidance-response>) ostream)
  "Serializes a message object of type '<ClearCollisionAvoidance-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearCollisionAvoidance-response>) istream)
  "Deserializes a message object of type '<ClearCollisionAvoidance-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearCollisionAvoidance-response>)))
  "Returns string type for a service object of type '<ClearCollisionAvoidance-response>"
  "AU_UAV_ROS/ClearCollisionAvoidanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearCollisionAvoidance-response)))
  "Returns string type for a service object of type 'ClearCollisionAvoidance-response"
  "AU_UAV_ROS/ClearCollisionAvoidanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearCollisionAvoidance-response>)))
  "Returns md5sum for a message object of type '<ClearCollisionAvoidance-response>"
  "3d4ba6c1e7182cfa297a43c7395e613d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearCollisionAvoidance-response)))
  "Returns md5sum for a message object of type 'ClearCollisionAvoidance-response"
  "3d4ba6c1e7182cfa297a43c7395e613d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearCollisionAvoidance-response>)))
  "Returns full string definition for message of type '<ClearCollisionAvoidance-response>"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearCollisionAvoidance-response)))
  "Returns full string definition for message of type 'ClearCollisionAvoidance-response"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearCollisionAvoidance-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearCollisionAvoidance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearCollisionAvoidance-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearCollisionAvoidance)))
  'ClearCollisionAvoidance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearCollisionAvoidance)))
  'ClearCollisionAvoidance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearCollisionAvoidance)))
  "Returns string type for a service object of type '<ClearCollisionAvoidance>"
  "AU_UAV_ROS/ClearCollisionAvoidance")