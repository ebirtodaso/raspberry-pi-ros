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

let IMU = require('../msg/IMU.js');

//-----------------------------------------------------------

class GetIMURequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIMURequest
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIMURequest
    let len;
    let data = new GetIMURequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/GetIMURequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e84dc3ad5dc323bb64f0aca01c2d1eef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # queries Sense HAT IMU sensor. Warning: not allowed when imu_publishing=True due to potential set_imu_config interference
    string mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIMURequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    return resolved;
    }
};

class GetIMUResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imu = null;
    }
    else {
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new IMU();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIMUResponse
    // Serialize message field [imu]
    bufferOffset = IMU.serialize(obj.imu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIMUResponse
    let len;
    let data = new GetIMUResponse(null);
    // Deserialize message field [imu]
    data.imu = IMU.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += IMU.getMessageSize(object.imu);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sensehat_ros/GetIMUResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a973cf17193e984943c6d1b80a5c4df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    IMU imu
    
    ================================================================================
    MSG: sensehat_ros/IMU
    # Hold data extracted from the Sense HAT IMU sensor.
    # Fields x, y and z assume different meaning depending on the selected mode.
    # Modes ending with "_rpy" assign (roll, pitch, yaw) values to (x, y, z). 
    Header header
    # Indicates the API function used to extract data from the IMU. Valid values are:
    #   * get_orientation_radians_rpy
    #   * get_orientation_degrees_rpy
    #   * get_compass_raw_xyz
    #   * get_gyroscope_rpy
    #   * get_gyroscope_raw_xyz
    #   * get_accelerometer_rpy
    #   * get_accelerometer_raw_xyzstring mode
    string mode
    float64 x
    float64 y
    float64 z
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
    const resolved = new GetIMUResponse(null);
    if (msg.imu !== undefined) {
      resolved.imu = IMU.Resolve(msg.imu)
    }
    else {
      resolved.imu = new IMU()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetIMURequest,
  Response: GetIMUResponse,
  md5sum() { return 'fa30723e781c08a11913d9b01e09b1ad'; },
  datatype() { return 'sensehat_ros/GetIMU'; }
};
