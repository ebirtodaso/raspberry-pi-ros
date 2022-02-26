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

class SwitchLowLightRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchLowLightRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchLowLightRequest
    let len;
    let data = new SwitchLowLightRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/SwitchLowLightRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # switches on/off the LED matrix “low light” mode and returns the current state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchLowLightRequest(null);
    return resolved;
    }
};

class SwitchLowLightResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.low_light = null;
    }
    else {
      if (initObj.hasOwnProperty('low_light')) {
        this.low_light = initObj.low_light
      }
      else {
        this.low_light = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchLowLightResponse
    // Serialize message field [low_light]
    bufferOffset = _serializer.bool(obj.low_light, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchLowLightResponse
    let len;
    let data = new SwitchLowLightResponse(null);
    // Deserialize message field [low_light]
    data.low_light = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/SwitchLowLightResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28b22af2b341afecad6c7499580b70d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool low_light
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchLowLightResponse(null);
    if (msg.low_light !== undefined) {
      resolved.low_light = msg.low_light;
    }
    else {
      resolved.low_light = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SwitchLowLightRequest,
  Response: SwitchLowLightResponse,
  md5sum() { return '28b22af2b341afecad6c7499580b70d4'; },
  datatype() { return 'sensehat_ros/SwitchLowLight'; }
};
