// Auto-generated. Do not edit!

// (in-package sensehat_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Environmental {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.humidity = null;
      this.temperature_from_humidity = null;
      this.temperature_from_pressure = null;
      this.pressure = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('humidity')) {
        this.humidity = initObj.humidity
      }
      else {
        this.humidity = 0.0;
      }
      if (initObj.hasOwnProperty('temperature_from_humidity')) {
        this.temperature_from_humidity = initObj.temperature_from_humidity
      }
      else {
        this.temperature_from_humidity = 0.0;
      }
      if (initObj.hasOwnProperty('temperature_from_pressure')) {
        this.temperature_from_pressure = initObj.temperature_from_pressure
      }
      else {
        this.temperature_from_pressure = 0.0;
      }
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Environmental
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [humidity]
    bufferOffset = _serializer.float64(obj.humidity, buffer, bufferOffset);
    // Serialize message field [temperature_from_humidity]
    bufferOffset = _serializer.float64(obj.temperature_from_humidity, buffer, bufferOffset);
    // Serialize message field [temperature_from_pressure]
    bufferOffset = _serializer.float64(obj.temperature_from_pressure, buffer, bufferOffset);
    // Serialize message field [pressure]
    bufferOffset = _serializer.float64(obj.pressure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Environmental
    let len;
    let data = new Environmental(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [humidity]
    data.humidity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature_from_humidity]
    data.temperature_from_humidity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature_from_pressure]
    data.temperature_from_pressure = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensehat_ros/Environmental';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68c3afb26b37144add6301d7bd68f356';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Environmental(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.humidity !== undefined) {
      resolved.humidity = msg.humidity;
    }
    else {
      resolved.humidity = 0.0
    }

    if (msg.temperature_from_humidity !== undefined) {
      resolved.temperature_from_humidity = msg.temperature_from_humidity;
    }
    else {
      resolved.temperature_from_humidity = 0.0
    }

    if (msg.temperature_from_pressure !== undefined) {
      resolved.temperature_from_pressure = msg.temperature_from_pressure;
    }
    else {
      resolved.temperature_from_pressure = 0.0
    }

    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = 0.0
    }

    return resolved;
    }
};

module.exports = Environmental;
