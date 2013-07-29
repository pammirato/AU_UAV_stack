/* Auto-generated by genmsg_cpp for file /home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/srv/DeleteSimulatedPlane.srv */
#ifndef AU_UAV_ROS_SERVICE_DELETESIMULATEDPLANE_H
#define AU_UAV_ROS_SERVICE_DELETESIMULATEDPLANE_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ros/service_traits.h"




namespace AU_UAV_ROS
{
template <class ContainerAllocator>
struct DeleteSimulatedPlaneRequest_ {
  typedef DeleteSimulatedPlaneRequest_<ContainerAllocator> Type;

  DeleteSimulatedPlaneRequest_()
  : planeID(0)
  {
  }

  DeleteSimulatedPlaneRequest_(const ContainerAllocator& _alloc)
  : planeID(0)
  {
  }

  typedef int16_t _planeID_type;
  int16_t planeID;


  typedef boost::shared_ptr< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct DeleteSimulatedPlaneRequest
typedef  ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<std::allocator<void> > DeleteSimulatedPlaneRequest;

typedef boost::shared_ptr< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest> DeleteSimulatedPlaneRequestPtr;
typedef boost::shared_ptr< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest const> DeleteSimulatedPlaneRequestConstPtr;


template <class ContainerAllocator>
struct DeleteSimulatedPlaneResponse_ {
  typedef DeleteSimulatedPlaneResponse_<ContainerAllocator> Type;

  DeleteSimulatedPlaneResponse_()
  : error()
  {
  }

  DeleteSimulatedPlaneResponse_(const ContainerAllocator& _alloc)
  : error(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  error;


  typedef boost::shared_ptr< ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct DeleteSimulatedPlaneResponse
typedef  ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<std::allocator<void> > DeleteSimulatedPlaneResponse;

typedef boost::shared_ptr< ::AU_UAV_ROS::DeleteSimulatedPlaneResponse> DeleteSimulatedPlaneResponsePtr;
typedef boost::shared_ptr< ::AU_UAV_ROS::DeleteSimulatedPlaneResponse const> DeleteSimulatedPlaneResponseConstPtr;

struct DeleteSimulatedPlane
{

typedef DeleteSimulatedPlaneRequest Request;
typedef DeleteSimulatedPlaneResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct DeleteSimulatedPlane
} // namespace AU_UAV_ROS

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "416bfeb9353c15e349b0805ccac980c0";
  }

  static const char* value(const  ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x416bfeb9353c15e3ULL;
  static const uint64_t static_value2 = 0x49b0805ccac980c0ULL;
};

template<class ContainerAllocator>
struct DataType< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/DeleteSimulatedPlaneRequest";
  }

  static const char* value(const  ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int16 planeID\n\
\n\
";
  }

  static const char* value(const  ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "eca8b96616c32aacf1be8bbf14c70eba";
  }

  static const char* value(const  ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xeca8b96616c32aacULL;
  static const uint64_t static_value2 = 0xf1be8bbf14c70ebaULL;
};

template<class ContainerAllocator>
struct DataType< ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/DeleteSimulatedPlaneResponse";
  }

  static const char* value(const  ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string error\n\
\n\
\n\
";
  }

  static const char* value(const  ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.planeID);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct DeleteSimulatedPlaneRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.error);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct DeleteSimulatedPlaneResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<AU_UAV_ROS::DeleteSimulatedPlane> {
  static const char* value() 
  {
    return "fc45473ddd329d08f1fc4a2e24e8bc0f";
  }

  static const char* value(const AU_UAV_ROS::DeleteSimulatedPlane&) { return value(); } 
};

template<>
struct DataType<AU_UAV_ROS::DeleteSimulatedPlane> {
  static const char* value() 
  {
    return "AU_UAV_ROS/DeleteSimulatedPlane";
  }

  static const char* value(const AU_UAV_ROS::DeleteSimulatedPlane&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fc45473ddd329d08f1fc4a2e24e8bc0f";
  }

  static const char* value(const AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/DeleteSimulatedPlane";
  }

  static const char* value(const AU_UAV_ROS::DeleteSimulatedPlaneRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fc45473ddd329d08f1fc4a2e24e8bc0f";
  }

  static const char* value(const AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/DeleteSimulatedPlane";
  }

  static const char* value(const AU_UAV_ROS::DeleteSimulatedPlaneResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // AU_UAV_ROS_SERVICE_DELETESIMULATEDPLANE_H
