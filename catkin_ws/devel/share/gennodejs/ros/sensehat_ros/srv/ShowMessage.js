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

class ShowMessageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.scroll_speed = null;
      this.text_colour = null;
      this.back_colour = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('scroll_speed')) {
        this.scroll_speed = initObj.scroll_speed
      }
      else {
        this.scroll_speed = 0.0;
      }
      if (initObj.hasOwnProperty('text_colour')) {
        this.text_colour = initObj.text_colour
      }
      else {
        this.text_colour = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('back_colour')) {
        this.back_colour = initObj.back_colour
      }
      else {
        this.back_colour = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShowMessageRequest
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [scroll_speed]
    bufferOffset = _serializer.float64(obj.scroll_speed, buffer, bufferOffset);
    // Check that the constant length array field [text_colour] has the right length
    if (obj.text_colour.length !== 3) {
      throw new Error('Unable to serialize array field text_colour - length must be 3')
    }
    // Serialize message field [text_colour]
    bufferOffset = _arraySerializer.int16(obj.text_colour, buffer, bufferOffset, 3);
    // Check that the constant length array field [back_colour] has the right length
    if (obj.back_colour.length !== 3) {
      throw new Error('Unable to serialize array field back_colour - length must be 3')
    }
    // Serialize message field [back_colour]
    bufferOffset = _arraySerializer.int16(obj.back_colour, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShowMessageRequest
    let len;
    let data = new ShowMessageRequest(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [scroll_speed]
    data.scroll_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [text_colour]
    data.text_colour = _arrayDeserializer.int16(buffer, bufferOffset, 3)
    // Deserialize message field [back_colour]
    data.back_colour = _arrayDeserializer.int16(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/ShowMessageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4db536e63c8164b2d79316cbb359b0f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # scrolls a text message from right to left across the LED matrix and at the specified speed, in the specified colour and background colour
    string text
    float64 scroll_speed
    int16[3] text_colour
    int16[3] back_colour
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShowMessageRequest(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.scroll_speed !== undefined) {
      resolved.scroll_speed = msg.scroll_speed;
    }
    else {
      resolved.scroll_speed = 0.0
    }

    if (msg.text_colour !== undefined) {
      resolved.text_colour = msg.text_colour;
    }
    else {
      resolved.text_colour = new Array(3).fill(0)
    }

    if (msg.back_colour !== undefined) {
      resolved.back_colour = msg.back_colour;
    }
    else {
      resolved.back_colour = new Array(3).fill(0)
    }

    return resolved;
    }
};

class ShowMessageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShowMessageResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShowMessageResponse
    let len;
    let data = new ShowMessageResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/ShowMessageResponse';
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
    const resolved = new ShowMessageResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ShowMessageRequest,
  Response: ShowMessageResponse,
  md5sum() { return '4db536e63c8164b2d79316cbb359b0f0'; },
  datatype() { return 'sensehat_ros/ShowMessage'; }
};
