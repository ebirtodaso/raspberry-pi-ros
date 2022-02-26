// Generated by gencpp from file sensehat_ros/IMU.msg
// DO NOT EDIT!


#ifndef SENSEHAT_ROS_MESSAGE_IMU_H
#define SENSEHAT_ROS_MESSAGE_IMU_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace sensehat_ros
{
template <class ContainerAllocator>
struct IMU_
{
  typedef IMU_<ContainerAllocator> Type;

  IMU_()
    : header()
    , mode()
    , x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  IMU_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , mode(_alloc)
    , x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mode_type;
  _mode_type mode;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::sensehat_ros::IMU_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensehat_ros::IMU_<ContainerAllocator> const> ConstPtr;

}; // struct IMU_

typedef ::sensehat_ros::IMU_<std::allocator<void> > IMU;

typedef boost::shared_ptr< ::sensehat_ros::IMU > IMUPtr;
typedef boost::shared_ptr< ::sensehat_ros::IMU const> IMUConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensehat_ros::IMU_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensehat_ros::IMU_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensehat_ros::IMU_<ContainerAllocator1> & lhs, const ::sensehat_ros::IMU_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.mode == rhs.mode &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensehat_ros::IMU_<ContainerAllocator1> & lhs, const ::sensehat_ros::IMU_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensehat_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sensehat_ros::IMU_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensehat_ros::IMU_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensehat_ros::IMU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensehat_ros::IMU_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensehat_ros::IMU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensehat_ros::IMU_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensehat_ros::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "deca0c93724da430c16a7c16b0d8235d";
  }

  static const char* value(const ::sensehat_ros::IMU_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdeca0c93724da430ULL;
  static const uint64_t static_value2 = 0xc16a7c16b0d8235dULL;
};

template<class ContainerAllocator>
struct DataType< ::sensehat_ros::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensehat_ros/IMU";
  }

  static const char* value(const ::sensehat_ros::IMU_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensehat_ros::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Hold data extracted from the Sense HAT IMU sensor.\n"
"# Fields x, y and z assume different meaning depending on the selected mode.\n"
"# Modes ending with \"_rpy\" assign (roll, pitch, yaw) values to (x, y, z). \n"
"Header header\n"
"# Indicates the API function used to extract data from the IMU. Valid values are:\n"
"#   * get_orientation_radians_rpy\n"
"#   * get_orientation_degrees_rpy\n"
"#   * get_compass_raw_xyz\n"
"#   * get_gyroscope_rpy\n"
"#   * get_gyroscope_raw_xyz\n"
"#   * get_accelerometer_rpy\n"
"#   * get_accelerometer_raw_xyzstring mode\n"
"string mode\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::sensehat_ros::IMU_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensehat_ros::IMU_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.mode);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IMU_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensehat_ros::IMU_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensehat_ros::IMU_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "mode: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mode);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSEHAT_ROS_MESSAGE_IMU_H