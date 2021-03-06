// Generated by gencpp from file kuka/GetDepth.msg
// DO NOT EDIT!


#ifndef KUKA_MESSAGE_GETDEPTH_H
#define KUKA_MESSAGE_GETDEPTH_H

#include <ros/service_traits.h>


#include <kuka/GetDepthRequest.h>
#include <kuka/GetDepthResponse.h>


namespace kuka
{

struct GetDepth
{

typedef GetDepthRequest Request;
typedef GetDepthResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetDepth
} // namespace kuka


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kuka::GetDepth > {
  static const char* value()
  {
    return "3e58674313cc0990de93c97c52bc2f8c";
  }

  static const char* value(const ::kuka::GetDepth&) { return value(); }
};

template<>
struct DataType< ::kuka::GetDepth > {
  static const char* value()
  {
    return "kuka/GetDepth";
  }

  static const char* value(const ::kuka::GetDepth&) { return value(); }
};


// service_traits::MD5Sum< ::kuka::GetDepthRequest> should match
// service_traits::MD5Sum< ::kuka::GetDepth >
template<>
struct MD5Sum< ::kuka::GetDepthRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kuka::GetDepth >::value();
  }
  static const char* value(const ::kuka::GetDepthRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kuka::GetDepthRequest> should match
// service_traits::DataType< ::kuka::GetDepth >
template<>
struct DataType< ::kuka::GetDepthRequest>
{
  static const char* value()
  {
    return DataType< ::kuka::GetDepth >::value();
  }
  static const char* value(const ::kuka::GetDepthRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kuka::GetDepthResponse> should match
// service_traits::MD5Sum< ::kuka::GetDepth >
template<>
struct MD5Sum< ::kuka::GetDepthResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kuka::GetDepth >::value();
  }
  static const char* value(const ::kuka::GetDepthResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kuka::GetDepthResponse> should match
// service_traits::DataType< ::kuka::GetDepth >
template<>
struct DataType< ::kuka::GetDepthResponse>
{
  static const char* value()
  {
    return DataType< ::kuka::GetDepth >::value();
  }
  static const char* value(const ::kuka::GetDepthResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KUKA_MESSAGE_GETDEPTH_H
