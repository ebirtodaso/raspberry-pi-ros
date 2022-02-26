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

class ShowLetterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.text_colour = null;
      this.back_colour = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
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
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShowLetterRequest
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
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
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShowLetterRequest
    let len;
    let data = new ShowLetterRequest(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [text_colour]
    data.text_colour = _arrayDeserializer.int16(buffer, bufferOffset, 3)
    // Deserialize message field [back_colour]
    data.back_colour = _arrayDeserializer.int16(buffer, bufferOffset, 3)
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/ShowLetterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e9a1baf1bf4e3e4917790796f05c5e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # shows a letter on the LED matrix and waits for the specified amount of seconds
    string text
    int16[3] text_colour
    int16[3] back_colour
    float64 duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShowLetterRequest(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
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

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    return resolved;
    }
};

class ShowLetterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShowLetterResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShowLetterResponse
    let len;
    let data = new ShowLetterResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/ShowLetterResponse';
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
    const resolved = new ShowLetterResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ShowLetterRequest,
  Response: ShowLetterResponse,
  md5sum() { return '2e9a1baf1bf4e3e4917790796f05c5e4'; },
  datatype() { return 'sensehat_ros/ShowLetter'; }
};
