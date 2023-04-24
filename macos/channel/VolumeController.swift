import Foundation
import AudioToolbox

class VolumeController {

    var defaultOutputDeviceID: AudioDeviceID = 0
    
    init() {
        var deviceListPropertyAddress = AudioObjectPropertyAddress(
            mSelector: kAudioHardwarePropertyDevices,
            mScope: kAudioObjectPropertyScopeGlobal,
            mElement: kAudioObjectPropertyElementMaster
        )
        var deviceCount: UInt32 = 0
        var status = AudioObjectGetPropertyDataSize(
            AudioObjectID(kAudioObjectSystemObject),
            &deviceListPropertyAddress,
            0,
            nil,
            &deviceCount
        )
        guard status == noErr else {
            print("Failed to get device count: \(status)")
            return
        }

        var devicesDataSize = UInt32(MemoryLayout<AudioDeviceID>.size) * deviceCount
        var devices = [AudioDeviceID](repeating: 0, count: Int(deviceCount))
        status = AudioObjectGetPropertyData(
            AudioObjectID(kAudioObjectSystemObject),
            &deviceListPropertyAddress,
            0,
            nil,
            &devicesDataSize,
            &devices
        )
        guard status == noErr else {
            print("Failed to get devices: \(status)")
            return
        }

        for device in devices {
            var deviceNamePropertyAddress = AudioObjectPropertyAddress(
                mSelector: kAudioDevicePropertyDeviceNameCFString,
                mScope: kAudioObjectPropertyScopeGlobal,
                mElement: kAudioObjectPropertyElementMaster
            )
            var deviceName: CFString = "" as CFString
            var dataSize = UInt32(MemoryLayout<CFString>.size)
            status = AudioObjectGetPropertyData(
                device,
                &deviceNamePropertyAddress,
                0,
                nil,
                &dataSize,
                &deviceName
            )
            guard status == noErr else {
                print("Failed to get device name: \(status)")
                continue
            }

            if deviceName == "Built-in Output" as CFString {
                defaultOutputDeviceID = device
                print("Found default output device ID: \(defaultOutputDeviceID)")
                break
            }
        }
        
  
        if status == kAudioHardwareNoError {
            print("Successfully registered volume changed callback")
        } else {
            print("Failed to register volume changed callback: \(status)")
        }
    }
}
