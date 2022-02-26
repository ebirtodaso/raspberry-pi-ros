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

class SetPixelsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pixels_red = null;
      this.pixels_green = null;
      this.pixels_blue = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('pixels_red')) {
        this.pixels_red = initObj.pixels_red
      }
      else {
        this.pixels_red = new Array(64).fill(0);
      }
      if (initObj.hasOwnProperty('pixels_green')) {
        this.pixels_green = initObj.pixels_green
      }
      else {
        this.pixels_green = new Array(64).fill(0);
      }
      if (initObj.hasOwnProperty('pixels_blue')) {
        this.pixels_blue = initObj.pixels_blue
      }
      else {
        this.pixels_blue = new Array(64).fill(0);
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
    // Serializes a message object of type SetPixelsRequest
    // Check that the constant length array field [pixels_red] has the right length
    if (obj.pixels_red.length !== 64) {
      throw new Error('Unable to serialize array field pixels_red - length must be 64')
    }
    // Serialize message field [pixels_red]
    bufferOffset = _arraySerializer.int16(obj.pixels_red, buffer, bufferOffset, 64);
    // Check that the constant length array field [pixels_green] has the right length
    if (obj.pixels_green.length !== 64) {
      throw new Error('Unable to serialize array field pixels_green - length must be 64')
    }
    // Serialize message field [pixels_green]
    bufferOffset = _arraySerializer.int16(obj.pixels_green, buffer, bufferOffset, 64);
    // Check that the constant length array field [pixels_blue] has the right length
    if (obj.pixels_blue.length !== 64) {
      throw new Error('Unable to serialize array field pixels_blue - length must be 64')
    }
    // Serialize message field [pixels_blue]
    bufferOffset = _arraySerializer.int16(obj.pixels_blue, buffer, bufferOffset, 64);
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPixelsRequest
    let len;
    let data = new SetPixelsRequest(null);
    // Deserialize message field [pixels_red]
    data.pixels_red = _arrayDeserializer.int16(buffer, bufferOffset, 64)
    // Deserialize message field [pixels_green]
    data.pixels_green = _arrayDeserializer.int16(buffer, bufferOffset, 64)
    // Deserialize message field [pixels_blue]
    data.pixels_blue = _arrayDeserializer.int16(buffer, bufferOffset, 64)
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 392;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/SetPixelsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b50ba911a4776c69c8ff57eb35b1d884';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # sets each of the 64 LED matrix pixels to a specific RGB color and waits for the specified amount of seconds
    int16[64] pixels_red
    int16[64] pixels_green
    int16[64] pixels_blue
    float64 duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPixelsRequest(null);
    if (msg.pixels_red !== undefined) {
      resolved.pixels_red = msg.pixels_red;
    }
    else {
      resolved.pixels_red = new Array(64).fill(0)
    }

    if (msg.pixels_green !== undefined) {
      resolved.pixels_green = msg.pixels_green;
    }
    else {
      resolved.pixels_green = new Array(64).fill(0)
    }

    if (msg.pixels_blue !== undefined) {
      resolved.pixels_blue = msg.pixels_blue;
    }
    else {
      resolved.pixels_blue = new Array(64).fill(0)
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

class SetPixelsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPixelsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPixelsResponse
    let len;
    let data = new SetPixelsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/SetPixelsResponse';
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
    const resolved = new SetPixelsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetPixelsRequest,
  Response: SetPixelsResponse,
  md5sum() { return 'b50ba911a4776c69c8ff57eb35b1d884'; },
  datatype() { return 'sensehat_ros/SetPixels'; }
};
