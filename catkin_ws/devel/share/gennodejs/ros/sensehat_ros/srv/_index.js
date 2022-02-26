
"use strict";

let SetPixels = require('./SetPixels.js')
let GetHumidity = require('./GetHumidity.js')
let ShowMessage = require('./ShowMessage.js')
let Clear = require('./Clear.js')
let EmulateStick = require('./EmulateStick.js')
let GetEnvironmental = require('./GetEnvironmental.js')
let GetTemperature = require('./GetTemperature.js')
let GetIMU = require('./GetIMU.js')
let GetCompass = require('./GetCompass.js')
let SwitchLowLight = require('./SwitchLowLight.js')
let GetPressure = require('./GetPressure.js')
let ShowLetter = require('./ShowLetter.js')

module.exports = {
  SetPixels: SetPixels,
  GetHumidity: GetHumidity,
  ShowMessage: ShowMessage,
  Clear: Clear,
  EmulateStick: EmulateStick,
  GetEnvironmental: GetEnvironmental,
  GetTemperature: GetTemperature,
  GetIMU: GetIMU,
  GetCompass: GetCompass,
  SwitchLowLight: SwitchLowLight,
  GetPressure: GetPressure,
  ShowLetter: ShowLetter,
};
