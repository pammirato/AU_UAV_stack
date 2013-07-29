/* Auto-generated by genmsg_cpp for file /home/phil/fuerte_workspace/sandbox/AU_UAV_Team1/srv/LoadPath.srv */
#ifndef AU_UAV_TEAM1_SERVICE_LOADPATH_H
#define AU_UAV_TEAM1_SERVICE_LOADPATH_H
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




namespace AU_UAV_Team1
{
template <class ContainerAllocator>
struct LoadPathRequest_ {
  typedef LoadPathRequest_<ContainerAllocator> Type;

  LoadPathRequest_()
  : filename()
  , planeID(0)
  {
  }

  LoadPathRequest_(const ContainerAllocator& _alloc)
  : filename(_alloc)
  , planeID(0)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _filename_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  filename;

  typedef int16_t _planeID_type;
  int16_t planeID;


  typedef boost::shared_ptr< ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct LoadPathRequest
typedef  ::AU_UAV_Team1::LoadPathRequest_<std::allocator<void> > LoadPathRequest;

typedef boost::shared_ptr< ::AU_UAV_Team1::LoadPathRequest> LoadPathRequestPtr;
typedef boost::shared_ptr< ::AU_UAV_Team1::LoadPathRequest const> LoadPathRequestConstPtr;


template <class ContainerAllocator>
struct LoadPathResponse_ {
  typedef LoadPathResponse_<ContainerAllocator> Type;

  LoadPathResponse_()
  : error()
  {
  }

  LoadPathResponse_(const ContainerAllocator& _alloc)
  : error(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  error;


  typedef boost::shared_ptr< ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct LoadPathResponse
typedef  ::AU_UAV_Team1::LoadPathResponse_<std::allocator<void> > LoadPathResponse;

typedef boost::shared_ptr< ::AU_UAV_Team1::LoadPathResponse> LoadPathResponsePtr;
typedef boost::shared_ptr< ::AU_UAV_Team1::LoadPathResponse const> LoadPathResponseConstPtr;

struct LoadPath
{

typedef LoadPathRequest Request;
typedef LoadPathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct LoadPath
} // namespace AU_UAV_Team1

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ea2c8a215c88af68545e8a3cd5543aa7";
  }

  static const char* value(const  ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xea2c8a215c88af68ULL;
  static const uint64_t static_value2 = 0x545e8a3cd5543aa7ULL;
};

template<class ContainerAllocator>
struct DataType< ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_Team1/LoadPathRequest";
  }

  static const char* value(const  ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string filename\n\
int16 planeID\n\
\n\
";
  }

  static const char* value(const  ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "eca8b96616c32aacf1be8bbf14c70eba";
  }

  static const char* value(const  ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xeca8b96616c32aacULL;
  static const uint64_t static_value2 = 0xf1be8bbf14c70ebaULL;
};

template<class ContainerAllocator>
struct DataType< ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_Team1/LoadPathResponse";
  }

  static const char* value(const  ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string error\n\
\n\
\n\
";
  }

  static const char* value(const  ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.filename);
    stream.next(m.planeID);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct LoadPathRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.error);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct LoadPathResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<AU_UAV_Team1::LoadPath> {
  static const char* value() 
  {
    return "4061d08328adc7152ed27430e0829f81";
  }

  static const char* value(const AU_UAV_Team1::LoadPath&) { return value(); } 
};

template<>
struct DataType<AU_UAV_Team1::LoadPath> {
  static const char* value() 
  {
    return "AU_UAV_Team1/LoadPath";
  }

  static const char* value(const AU_UAV_Team1::LoadPath&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4061d08328adc7152ed27430e0829f81";
  }

  static const char* value(const AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_Team1/LoadPath";
  }

  static const char* value(const AU_UAV_Team1::LoadPathRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4061d08328adc7152ed27430e0829f81";
  }

  static const char* value(const AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_Team1/LoadPath";
  }

  static const char* value(const AU_UAV_Team1::LoadPathResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // AU_UAV_TEAM1_SERVICE_LOADPATH_H
