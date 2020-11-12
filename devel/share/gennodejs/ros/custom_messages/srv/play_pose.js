// Auto-generated. Do not edit!

// (in-package custom_messages.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class play_poseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.play_pose_x = null;
      this.play_pose_y = null;
    }
    else {
      if (initObj.hasOwnProperty('play_pose_x')) {
        this.play_pose_x = initObj.play_pose_x
      }
      else {
        this.play_pose_x = 0.0;
      }
      if (initObj.hasOwnProperty('play_pose_y')) {
        this.play_pose_y = initObj.play_pose_y
      }
      else {
        this.play_pose_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type play_poseRequest
    // Serialize message field [play_pose_x]
    bufferOffset = _serializer.float32(obj.play_pose_x, buffer, bufferOffset);
    // Serialize message field [play_pose_y]
    bufferOffset = _serializer.float32(obj.play_pose_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type play_poseRequest
    let len;
    let data = new play_poseRequest(null);
    // Deserialize message field [play_pose_x]
    data.play_pose_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [play_pose_y]
    data.play_pose_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_messages/play_poseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c60304461db9a9373cfa924ea61bbd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 play_pose_x
    float32 play_pose_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new play_poseRequest(null);
    if (msg.play_pose_x !== undefined) {
      resolved.play_pose_x = msg.play_pose_x;
    }
    else {
      resolved.play_pose_x = 0.0
    }

    if (msg.play_pose_y !== undefined) {
      resolved.play_pose_y = msg.play_pose_y;
    }
    else {
      resolved.play_pose_y = 0.0
    }

    return resolved;
    }
};

class play_poseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.play_res = null;
    }
    else {
      if (initObj.hasOwnProperty('play_res')) {
        this.play_res = initObj.play_res
      }
      else {
        this.play_res = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type play_poseResponse
    // Serialize message field [play_res]
    bufferOffset = _serializer.float32(obj.play_res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type play_poseResponse
    let len;
    let data = new play_poseResponse(null);
    // Deserialize message field [play_res]
    data.play_res = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_messages/play_poseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b61e27d22960a887012b295e26e4ccc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 play_res
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new play_poseResponse(null);
    if (msg.play_res !== undefined) {
      resolved.play_res = msg.play_res;
    }
    else {
      resolved.play_res = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: play_poseRequest,
  Response: play_poseResponse,
  md5sum() { return '926c357e5c9b841314d3b8b1f58e3abe'; },
  datatype() { return 'custom_messages/play_pose'; }
};
