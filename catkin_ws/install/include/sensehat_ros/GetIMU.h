// Generated by gencpp from file sensehat_ros/GetIMU.msg
// DO NOT EDIT!


#ifndef SENSEHAT_ROS_MESSAGE_GETIMU_H
#define SENSEHAT_ROS_MESSAGE_GETIMU_H

#include <ros/service_traits.h>


#include <sensehat_ros/GetIMURequest.h>
#include <sensehat_ros/GetIMUResponse.h>


namespace sensehat_ros
{

struct GetIMU
{

typedef GetIMURequest Request;
typedef GetIMUResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetIMU
} // namespace sensehat_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sensehat_ros::GetIMU > {
  static const char* value()
  {
    return "fa30723e781c08a11913d9b01e09b1ad";
  }

  static const char* value(const ::sensehat_ros::GetIMU&) { return value(); }
};

template<>
struct DataType< ::sensehat_ros::GetIMU > {
  static const char* value()
  {
    return "sensehat_ros/GetIMU";
  }

  static const char* value(const ::sensehat_ros::GetIMU&) { return value(); }
};


// service_traits::MD5Sum< ::sensehat_ros::GetIMURequest> should match
// service_traits::MD5Sum< ::sensehat_ros::GetIMU >
template<>
struct MD5Sum< ::sensehat_ros::GetIMURequest>
{
  static const char* value()
  {
    return MD5Sum< ::sensehat_ros::GetIMU >::value();
  }
  static const char* value(const ::sensehat_ros::GetIMURequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sensehat_ros::GetIMURequest> should match
// service_traits::DataType< ::sensehat_ros::GetIMU >
template<>
struct DataType< ::sensehat_ros::GetIMURequest>
{
  static const char* value()
  {
    return DataType< ::sensehat_ros::GetIMU >::value();
  }
  static const char* value(const ::sensehat_ros::GetIMURequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sensehat_ros::GetIMUResponse> should match
// service_traits::MD5Sum< ::sensehat_ros::GetIMU >
template<>
struct MD5Sum< ::sensehat_ros::GetIMUResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sensehat_ros::GetIMU >::value();
  }
  static const char* value(const ::sensehat_ros::GetIMUResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sensehat_ros::GetIMUResponse> should match
// service_traits::DataType< ::sensehat_ros::GetIMU >
template<>
struct DataType< ::sensehat_ros::GetIMUResponse>
{
  static const char* value()
  {
    return DataType< ::sensehat_ros::GetIMU >::value();
  }
  static const char* value(const ::sensehat_ros::GetIMUResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SENSEHAT_ROS_MESSAGE_GETIMU_H
