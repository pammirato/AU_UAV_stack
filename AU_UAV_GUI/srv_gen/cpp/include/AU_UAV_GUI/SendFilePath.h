/* Auto-generated by genmsg_cpp for file /home/viki/ros_workspace/AU_UAV_GUI/srv/SendFilePath.srv */
#ifndef AU_UAV_GUI_SERVICE_SENDFILEPATH_H
#define AU_UAV_GUI_SERVICE_SENDFILEPATH_H
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




namespace AU_UAV_GUI
{
template <class ContainerAllocator>
struct SendFilePathRequest_ {
  typedef SendFilePathRequest_<ContainerAllocator> Type;

  SendFilePathRequest_()
  : filename()
  {
  }

  SendFilePathRequest_(const ContainerAllocator& _alloc)
  : filename(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _filename_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  filename;


  typedef boost::shared_ptr< ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct SendFilePathRequest
typedef  ::AU_UAV_GUI::SendFilePathRequest_<std::allocator<void> > SendFilePathRequest;

typedef boost::shared_ptr< ::AU_UAV_GUI::SendFilePathRequest> SendFilePathRequestPtr;
typedef boost::shared_ptr< ::AU_UAV_GUI::SendFilePathRequest const> SendFilePathRequestConstPtr;


template <class ContainerAllocator>
struct SendFilePathResponse_ {
  typedef SendFilePathResponse_<ContainerAllocator> Type;

  SendFilePathResponse_()
  : error()
  {
  }

  SendFilePathResponse_(const ContainerAllocator& _alloc)
  : error(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  error;


  typedef boost::shared_ptr< ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct SendFilePathResponse
typedef  ::AU_UAV_GUI::SendFilePathResponse_<std::allocator<void> > SendFilePathResponse;

typedef boost::shared_ptr< ::AU_UAV_GUI::SendFilePathResponse> SendFilePathResponsePtr;
typedef boost::shared_ptr< ::AU_UAV_GUI::SendFilePathResponse const> SendFilePathResponseConstPtr;

struct SendFilePath
{

typedef SendFilePathRequest Request;
typedef SendFilePathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct SendFilePath
} // namespace AU_UAV_GUI

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "030824f52a0628ead956fb9d67e66ae9";
  }

  static const char* value(const  ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x030824f52a0628eaULL;
  static const uint64_t static_value2 = 0xd956fb9d67e66ae9ULL;
};

template<class ContainerAllocator>
struct DataType< ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_GUI/SendFilePathRequest";
  }

  static const char* value(const  ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string filename\n\
\n\
";
  }

  static const char* value(const  ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "eca8b96616c32aacf1be8bbf14c70eba";
  }

  static const char* value(const  ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xeca8b96616c32aacULL;
  static const uint64_t static_value2 = 0xf1be8bbf14c70ebaULL;
};

template<class ContainerAllocator>
struct DataType< ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_GUI/SendFilePathResponse";
  }

  static const char* value(const  ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string error\n\
\n\
\n\
";
  }

  static const char* value(const  ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.filename);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct SendFilePathRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.error);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct SendFilePathResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<AU_UAV_GUI::SendFilePath> {
  static const char* value() 
  {
    return "fe8131f61ada79495e0d839037fe5bd9";
  }

  static const char* value(const AU_UAV_GUI::SendFilePath&) { return value(); } 
};

template<>
struct DataType<AU_UAV_GUI::SendFilePath> {
  static const char* value() 
  {
    return "AU_UAV_GUI/SendFilePath";
  }

  static const char* value(const AU_UAV_GUI::SendFilePath&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fe8131f61ada79495e0d839037fe5bd9";
  }

  static const char* value(const AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_GUI/SendFilePath";
  }

  static const char* value(const AU_UAV_GUI::SendFilePathRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fe8131f61ada79495e0d839037fe5bd9";
  }

  static const char* value(const AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_GUI/SendFilePath";
  }

  static const char* value(const AU_UAV_GUI::SendFilePathResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // AU_UAV_GUI_SERVICE_SENDFILEPATH_H

