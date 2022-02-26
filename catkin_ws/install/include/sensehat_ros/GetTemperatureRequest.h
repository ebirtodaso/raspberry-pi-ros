// Generated by gencpp from file sensehat_ros/GetTemperatureRequest.msg
// DO NOT EDIT!


#ifndef SENSEHAT_ROS_MESSAGE_GETTEMPERATUREREQUEST_H
#define SENSEHAT_ROS_MESSAGE_GETTEMPERATUREREQUEST_H


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
struct GetTemperatureRequest_
{
  typedef GetTemperatureRequest_<ContainerAllocator> Type;

  GetTemperatureRequest_()
    {
    }
  GetTemperatureRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetTemperatureRequest_

typedef ::sensehat_ros::GetTemperatureRequest_<std::allocator<void> > GetTemperatureRequest;

typedef boost::shared_ptr< ::sensehat_ros::GetTemperatureRequest > GetTemperatureRequestPtr;
typedef boost::shared_ptr< ::sensehat_ros::GetTemperatureRequest const> GetTemperatureRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace sensehat_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensehat_ros/GetTemperatureRequest";
  }

  static const char* value(const ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# gets the current temperature in degrees Celsius from the humidity sensor\n"
;
  }

  static const char* value(const ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetTemperatureRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::sensehat_ros::GetTemperatureRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // SENSEHAT_ROS_MESSAGE_GETTEMPERATUREREQUEST_H
