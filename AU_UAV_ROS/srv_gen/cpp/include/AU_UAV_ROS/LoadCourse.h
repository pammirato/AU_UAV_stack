/* Auto-generated by genmsg_cpp for file /home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/srv/LoadCourse.srv */
#ifndef AU_UAV_ROS_SERVICE_LOADCOURSE_H
#define AU_UAV_ROS_SERVICE_LOADCOURSE_H
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
struct LoadCourseRequest_ {
  typedef LoadCourseRequest_<ContainerAllocator> Type;

  LoadCourseRequest_()
  : filename()
  {
  }

  LoadCourseRequest_(const ContainerAllocator& _alloc)
  : filename(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _filename_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  filename;


  typedef boost::shared_ptr< ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct LoadCourseRequest
typedef  ::AU_UAV_ROS::LoadCourseRequest_<std::allocator<void> > LoadCourseRequest;

typedef boost::shared_ptr< ::AU_UAV_ROS::LoadCourseRequest> LoadCourseRequestPtr;
typedef boost::shared_ptr< ::AU_UAV_ROS::LoadCourseRequest const> LoadCourseRequestConstPtr;


template <class ContainerAllocator>
struct LoadCourseResponse_ {
  typedef LoadCourseResponse_<ContainerAllocator> Type;

  LoadCourseResponse_()
  : error()
  {
  }

  LoadCourseResponse_(const ContainerAllocator& _alloc)
  : error(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  error;


  typedef boost::shared_ptr< ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct LoadCourseResponse
typedef  ::AU_UAV_ROS::LoadCourseResponse_<std::allocator<void> > LoadCourseResponse;

typedef boost::shared_ptr< ::AU_UAV_ROS::LoadCourseResponse> LoadCourseResponsePtr;
typedef boost::shared_ptr< ::AU_UAV_ROS::LoadCourseResponse const> LoadCourseResponseConstPtr;

struct LoadCourse
{

typedef LoadCourseRequest Request;
typedef LoadCourseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct LoadCourse
} // namespace AU_UAV_ROS

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "030824f52a0628ead956fb9d67e66ae9";
  }

  static const char* value(const  ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x030824f52a0628eaULL;
  static const uint64_t static_value2 = 0xd956fb9d67e66ae9ULL;
};

template<class ContainerAllocator>
struct DataType< ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/LoadCourseRequest";
  }

  static const char* value(const  ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string filename\n\
\n\
";
  }

  static const char* value(const  ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "eca8b96616c32aacf1be8bbf14c70eba";
  }

  static const char* value(const  ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xeca8b96616c32aacULL;
  static const uint64_t static_value2 = 0xf1be8bbf14c70ebaULL;
};

template<class ContainerAllocator>
struct DataType< ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/LoadCourseResponse";
  }

  static const char* value(const  ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string error\n\
\n\
\n\
";
  }

  static const char* value(const  ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.filename);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct LoadCourseRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.error);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct LoadCourseResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<AU_UAV_ROS::LoadCourse> {
  static const char* value() 
  {
    return "fe8131f61ada79495e0d839037fe5bd9";
  }

  static const char* value(const AU_UAV_ROS::LoadCourse&) { return value(); } 
};

template<>
struct DataType<AU_UAV_ROS::LoadCourse> {
  static const char* value() 
  {
    return "AU_UAV_ROS/LoadCourse";
  }

  static const char* value(const AU_UAV_ROS::LoadCourse&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fe8131f61ada79495e0d839037fe5bd9";
  }

  static const char* value(const AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/LoadCourse";
  }

  static const char* value(const AU_UAV_ROS::LoadCourseRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fe8131f61ada79495e0d839037fe5bd9";
  }

  static const char* value(const AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/LoadCourse";
  }

  static const char* value(const AU_UAV_ROS::LoadCourseResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // AU_UAV_ROS_SERVICE_LOADCOURSE_H

