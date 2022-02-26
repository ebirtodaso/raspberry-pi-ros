// Generated by gencpp from file sensehat_ros/ClearRequest.msg
// DO NOT EDIT!


#ifndef SENSEHAT_ROS_MESSAGE_CLEARREQUEST_H
#define SENSEHAT_ROS_MESSAGE_CLEARREQUEST_H


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
struct ClearRequest_
{
  typedef ClearRequest_<ContainerAllocator> Type;

  ClearRequest_()
    : colour()
    , duration(0.0)  {
      colour.assign(0);
  }
  ClearRequest_(const ContainerAllocator& _alloc)
    : colour()
    , duration(0.0)  {
  (void)_alloc;
      colour.assign(0);
  }



   typedef boost::array<int16_t, 3>  _colour_type;
  _colour_type colour;

   typedef double _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::sensehat_ros::ClearRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensehat_ros::ClearRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ClearRequest_

typedef ::sensehat_ros::ClearRequest_<std::allocator<void> > ClearRequest;

typedef boost::shared_ptr< ::sensehat_ros::ClearRequest > ClearRequestPtr;
typedef boost::shared_ptr< ::sensehat_ros::ClearRequest const> ClearRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensehat_ros::ClearRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensehat_ros::ClearRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensehat_ros::ClearRequest_<ContainerAllocator1> & lhs, const ::sensehat_ros::ClearRequest_<ContainerAllocator2> & rhs)
{
  return lhs.colour == rhs.colour &&
    lhs.duration == rhs.duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensehat_ros::ClearRequest_<ContainerAllocator1> & lhs, const ::sensehat_ros::ClearRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensehat_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sensehat_ros::ClearRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensehat_ros::ClearRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensehat_ros::ClearRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensehat_ros::ClearRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensehat_ros::ClearRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensehat_ros::ClearRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensehat_ros::ClearRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d1af828257b651791f41f5836fa55cda";
  }

  static const char* value(const ::sensehat_ros::ClearRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd1af828257b65179ULL;
  static const uint64_t static_value2 = 0x1f41f5836fa55cdaULL;
};

template<class ContainerAllocator>
struct DataType< ::sensehat_ros::ClearRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensehat_ros/ClearRequest";
  }

  static const char* value(const ::sensehat_ros::ClearRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensehat_ros::ClearRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# sets all of the 64 LED matrix pixels to the specified RGB color and waits for the specified amount of seconds\n"
"int16[3] colour\n"
"float64 duration\n"
;
  }

  static const char* value(const ::sensehat_ros::ClearRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensehat_ros::ClearRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.colour);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ClearRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensehat_ros::ClearRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensehat_ros::ClearRequest_<ContainerAllocator>& v)
  {
    s << indent << "colour[]" << std::endl;
    for (size_t i = 0; i < v.colour.size(); ++i)
    {
      s << indent << "  colour[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.colour[i]);
    }
    s << indent << "duration: ";
    Printer<double>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSEHAT_ROS_MESSAGE_CLEARREQUEST_H