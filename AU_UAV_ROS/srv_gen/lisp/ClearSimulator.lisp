; Auto-generated. Do not edit!


(cl:in-package AU_UAV_ROS-srv)


;//! \htmlinclude ClearSimulator-request.msg.html

(cl:defclass <ClearSimulator-request> (roslisp-msg-protocol:ros-message)
  ((hello
    :reader hello
    :initarg :hello
    :type cl:string
    :initform ""))
)

(cl:defclass ClearSimulator-request (<ClearSimulator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearSimulator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearSimulator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<ClearSimulator-request> is deprecated: use AU_UAV_ROS-srv:ClearSimulator-request instead.")))

(cl:ensure-generic-function 'hello-val :lambda-list '(m))
(cl:defmethod hello-val ((m <ClearSimulator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:hello-val is deprecated.  Use AU_UAV_ROS-srv:hello instead.")
  (hello m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearSimulator-request>) ostream)
  "Serializes a message object of type '<ClearSimulator-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hello))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hello))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearSimulator-request>) istream)
  "Deserializes a message object of type '<ClearSimulator-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearSimulator-request>)))
  "Returns string type for a service object of type '<ClearSimulator-request>"
  "AU_UAV_ROS/ClearSimulatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearSimulator-request)))
  "Returns string type for a service object of type 'ClearSimulator-request"
  "AU_UAV_ROS/ClearSimulatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearSimulator-request>)))
  "Returns md5sum for a message object of type '<ClearSimulator-request>"
  "3d4ba6c1e7182cfa297a43c7395e613d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearSimulator-request)))
  "Returns md5sum for a message object of type 'ClearSimulator-request"
  "3d4ba6c1e7182cfa297a43c7395e613d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearSimulator-request>)))
  "Returns full string definition for message of type '<ClearSimulator-request>"
  (cl:format cl:nil "string hello~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearSimulator-request)))
  "Returns full string definition for message of type 'ClearSimulator-request"
  (cl:format cl:nil "string hello~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearSimulator-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'hello))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearSimulator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearSimulator-request
    (cl:cons ':hello (hello msg))
))
;//! \htmlinclude ClearSimulator-response.msg.html

(cl:defclass <ClearSimulator-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass ClearSimulator-response (<ClearSimulator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClearSimulator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClearSimulator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AU_UAV_ROS-srv:<ClearSimulator-response> is deprecated: use AU_UAV_ROS-srv:ClearSimulator-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ClearSimulator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AU_UAV_ROS-srv:error-val is deprecated.  Use AU_UAV_ROS-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClearSimulator-response>) ostream)
  "Serializes a message object of type '<ClearSimulator-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClearSimulator-response>) istream)
  "Deserializes a message object of type '<ClearSimulator-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClearSimulator-response>)))
  "Returns string type for a service object of type '<ClearSimulator-response>"
  "AU_UAV_ROS/ClearSimulatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearSimulator-response)))
  "Returns string type for a service object of type 'ClearSimulator-response"
  "AU_UAV_ROS/ClearSimulatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClearSimulator-response>)))
  "Returns md5sum for a message object of type '<ClearSimulator-response>"
  "3d4ba6c1e7182cfa297a43c7395e613d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClearSimulator-response)))
  "Returns md5sum for a message object of type 'ClearSimulator-response"
  "3d4ba6c1e7182cfa297a43c7395e613d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClearSimulator-response>)))
  "Returns full string definition for message of type '<ClearSimulator-response>"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClearSimulator-response)))
  "Returns full string definition for message of type 'ClearSimulator-response"
  (cl:format cl:nil "string error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClearSimulator-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClearSimulator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClearSimulator-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClearSimulator)))
  'ClearSimulator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClearSimulator)))
  'ClearSimulator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClearSimulator)))
  "Returns string type for a service object of type '<ClearSimulator>"
  "AU_UAV_ROS/ClearSimulator")