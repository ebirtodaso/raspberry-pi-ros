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

class ClearRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.colour = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('colour')) {
        this.colour = initObj.colour
      }
      else {
        this.colour = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClearRequest
    // Check that the constant length array field [colour] has the right length
    if (obj.colour.length !== 3) {
      throw new Error('Unable to serialize array field colour - length must be 3')
    }
    // Serialize message field [colour]
    bufferOffset = _arraySerializer.int16(obj.colour, buffer, bufferOffset, 3);
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClearRequest
    let len;
    let data = new ClearRequest(null);
    // Deserialize message field [colour]
    data.colour = _arrayDeserializer.int16(buffer, bufferOffset, 3)
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/ClearRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1af828257b651791f41f5836fa55cda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # sets all of the 64 LED matrix pixels to the specified RGB color and waits for the specified amount of seconds
    int16[3] colour
    float64 duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClearRequest(null);
    if (msg.colour !== undefined) {
      resolved.colour = msg.colour;
    }
    else {
      resolved.colour = new Array(3).fill(0)
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    return resolved;
    }
};

class ClearResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClearResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClearResponse
    let len;
    let data = new ClearResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/ClearResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClearResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ClearRequest,
  Response: ClearResponse,
  md5sum() { return 'd1af828257b651791f41f5836fa55cda'; },
  datatype() { return 'sensehat_ros/Clear'; }
};
