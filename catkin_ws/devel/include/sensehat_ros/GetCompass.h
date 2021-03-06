// Generated by gencpp from file sensehat_ros/GetCompass.msg
// DO NOT EDIT!


#ifndef SENSEHAT_ROS_MESSAGE_GETCOMPASS_H
#define SENSEHAT_ROS_MESSAGE_GETCOMPASS_H

#include <ros/service_traits.h>


#include <sensehat_ros/GetCompassRequest.h>
#include <sensehat_ros/GetCompassResponse.h>


namespace sensehat_ros
{

struct GetCompass
{

typedef GetCompassRequest Request;
typedef GetCompassResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetCompass
} // namespace sensehat_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sensehat_ros::GetCompass > {
  static const char* value()
  {
    return "3c9cf463517905dca2521bd4ad9d8bf6";
  }

  static const char* value(const ::sensehat_ros::GetCompass&) { return value(); }
};

template<>
struct DataType< ::sensehat_ros::GetCompass > {
  static const char* value()
  {
    return "sensehat_ros/GetCompass";
  }

  static const char* value(const ::sensehat_ros::GetCompass&) { return value(); }
};


// service_traits::MD5Sum< ::sensehat_ros::GetCompassRequest> should match
// service_traits::MD5Sum< ::sensehat_ros::GetCompass >
template<>
struct MD5Sum< ::sensehat_ros::GetCompassRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sensehat_ros::GetCompass >::value();
  }
  static const char* value(const ::sensehat_ros::GetCompassRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sensehat_ros::GetCompassRequest> should match
// service_traits::DataType< ::sensehat_ros::GetCompass >
template<>
struct DataType< ::sensehat_ros::GetCompassRequest>
{
  static const char* value()
  {
    return DataType< ::sensehat_ros::GetCompass >::value();
  }
  static const char* value(const ::sensehat_ros::GetCompassRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sensehat_ros::GetCompassResponse> should match
// service_traits::MD5Sum< ::sensehat_ros::GetCompass >
template<>
struct MD5Sum< ::sensehat_ros::GetCompassResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sensehat_ros::GetCompass >::value();
  }
  static const char* value(const ::sensehat_ros::GetCompassResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sensehat_ros::GetCompassResponse> should match
// service_traits::DataType< ::sensehat_ros::GetCompass >
template<>
struct DataType< ::sensehat_ros::GetCompassResponse>
{
  static const char* value()
  {
    return DataType< ::sensehat_ros::GetCompass >::value();
  }
  static const char* value(const ::sensehat_ros::GetCompassResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SENSEHAT_ROS_MESSAGE_GETCOMPASS_H
