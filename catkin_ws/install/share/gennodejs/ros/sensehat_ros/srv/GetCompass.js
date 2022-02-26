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


//-----------------------------------------------------------

class GetCompassRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCompassRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCompassRequest
    let len;
    let data = new GetCompassRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/GetCompassRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # gets the direction of North from the magnetometer in degrees. Warning: not allowed when imu_publishing=True due to potential set_imu_config interference
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCompassRequest(null);
    return resolved;
    }
};

class GetCompassResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.compass = null;
    }
    else {
      if (initObj.hasOwnProperty('compass')) {
        this.compass = initObj.compass
      }
      else {
        this.compass = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCompassResponse
    // Serialize message field [compass]
    bufferOffset = _serializer.float64(obj.compass, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCompassResponse
    let len;
    let data = new GetCompassResponse(null);
    // Deserialize message field [compass]
    data.compass = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/GetCompassResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c9cf463517905dca2521bd4ad9d8bf6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 compass
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCompassResponse(null);
    if (msg.compass !== undefined) {
      resolved.compass = msg.compass;
    }
    else {
      resolved.compass = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCompassRequest,
  Response: GetCompassResponse,
  md5sum() { return '3c9cf463517905dca2521bd4ad9d8bf6'; },
  datatype() { return 'sensehat_ros/GetCompass'; }
};
