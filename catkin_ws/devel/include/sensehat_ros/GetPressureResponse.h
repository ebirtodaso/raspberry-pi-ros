// Generated by gencpp from file sensehat_ros/GetPressureResponse.msg
// DO NOT EDIT!


#ifndef SENSEHAT_ROS_MESSAGE_GETPRESSURERESPONSE_H
#define SENSEHAT_ROS_MESSAGE_GETPRESSURERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sensehat_ros
{
template <class ContainerAllocator>
struct GetPressureResponse_
{
  typedef GetPressureResponse_<ContainerAllocator> Type;

  GetPressureResponse_()
    : pressure(0.0)  {
    }
  GetPressureResponse_(const ContainerAllocator& _alloc)
    : pressure(0.0)  {
  (void)_alloc;
    }



   typedef double _pressure_type;
  _pressure_type pressure;





  typedef boost::shared_ptr< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetPressureResponse_

typedef ::sensehat_ros::GetPressureResponse_<std::allocator<void> > GetPressureResponse;

typedef boost::shared_ptr< ::sensehat_ros::GetPressureResponse > GetPressureResponsePtr;
typedef boost::shared_ptr< ::sensehat_ros::GetPressureResponse const> GetPressureResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensehat_ros::GetPressureResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensehat_ros::GetPressureResponse_<ContainerAllocator1> & lhs, const ::sensehat_ros::GetPressureResponse_<ContainerAllocator2> & rhs)
{
  return lhs.pressure == rhs.pressure;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensehat_ros::GetPressureResponse_<ContainerAllocator1> & lhs, const ::sensehat_ros::GetPressureResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensehat_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "96df4beb6a408783cb39b2bac74b5b16";
  }

  static const char* value(const ::sensehat_ros::GetPressureResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x96df4beb6a408783ULL;
  static const uint64_t static_value2 = 0xcb39b2bac74b5b16ULL;
};

template<class ContainerAllocator>
struct DataType< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensehat_ros/GetPressureResponse";
  }

  static const char* value(const ::sensehat_ros::GetPressureResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 pressure\n"
;
  }

  static const char* value(const ::sensehat_ros::GetPressureResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pressure);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPressureResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensehat_ros::GetPressureResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensehat_ros::GetPressureResponse_<ContainerAllocator>& v)
  {
    s << indent << "pressure: ";
    Printer<double>::stream(s, indent + "  ", v.pressure);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSEHAT_ROS_MESSAGE_GETPRESSURERESPONSE_H
