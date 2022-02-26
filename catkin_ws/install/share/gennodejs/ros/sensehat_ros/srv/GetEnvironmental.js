// Auto-generated. Do not edit!

// (in-package sensehat_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Environmental = require('../msg/Environmental.js');

//-----------------------------------------------------------

class GetEnvironmentalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEnvironmentalRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEnvironmentalRequest
    let len;
    let data = new GetEnvironmentalRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/GetEnvironmentalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # gets the current humidity and temperature from the humidity sensor and temperature and pressure from the pressure sensor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetEnvironmentalRequest(null);
    return resolved;
    }
};

class GetEnvironmentalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.environmental = null;
    }
    else {
      if (initObj.hasOwnProperty('environmental')) {
        this.environmental = initObj.environmental
      }
      else {
        this.environmental = new Environmental();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEnvironmentalResponse
    // Serialize message field [environmental]
    bufferOffset = Environmental.serialize(obj.environmental, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEnvironmentalResponse
    let len;
    let data = new GetEnvironmentalResponse(null);
    // Deserialize message field [environmental]
    data.environmental = Environmental.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Environmental.getMessageSize(object.environmental);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/GetEnvironmentalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59eda83d9763a27d7339a28eb5d390bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Environmental environmental
    
    ================================================================================
    MSG: sensehat_ros/Environmental
    # Hold data extracted from Sense HAT environmental sensors (humidity and pressure)
    Header header
    # Percentage of relative humidity 
    float64 humidity
    # Temperature in degrees Celsius from the humidity sensor
    float64 temperature_from_humidity
    # Temperature in degrees Celsius from the pressure sensor
    float64 temperature_from_pressure
    # Pressure in Millibars
    float64 pressure
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetEnvironmentalResponse(null);
    if (msg.environmental !== undefined) {
      resolved.environmental = Environmental.Resolve(msg.environmental)
    }
    else {
      resolved.environmental = new Environmental()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetEnvironmentalRequest,
  Response: GetEnvironmentalResponse,
  md5sum() { return '59eda83d9763a27d7339a28eb5d390bf'; },
  datatype() { return 'sensehat_ros/GetEnvironmental'; }
};
