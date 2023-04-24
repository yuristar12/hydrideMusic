import Foundation
import FlutterMacOS
import AudioToolbox
import AVFoundation
import AppKit

class VolumeEvents : NSObject {
    
    var binaryMessager : FlutterBinaryMessenger?
    var methodChannel : FlutterMethodChannel?
    
    
    var volume:Float32 = 0;
    var volumeSize = UInt32(MemoryLayout<Float32>.size);
    
    var defaultOutputDeviceID : AudioDeviceID = AudioDeviceID(kAudioObjectUnknown);
    
    var defaultOutputDeviceIDSize = UInt32(MemoryLayout<AudioDeviceID>.size)
    
    
    func registerEvent(withBinaryMessager bm: FlutterBinaryMessenger) {
        
        binaryMessager = bm;
        
        methodChannel = FlutterMethodChannel(name: "volumeEvent", binaryMessenger: binaryMessager!);
        
        self.registerListen();
        
        methodChannel?.setMethodCallHandler {(call: FlutterMethodCall, result: FlutterResult) -> Void in
            if (call.method == "GetSystemVolume") {
                
                /// 调用获取设备音量的方法
                let volume = self.getSystemVolume();
                /// 向fluuterchannel返回数据
                result(volume);
            }else if(call.method == "SetSystemVolume"){
                
                let volume = call.arguments as! NSNumber
                self.setVolume(volume: Float32(volume ?? 0));
                
            }
            
            
            
        }
        
        
        
    }
    
    
    
    
    
    func getDefaultOutputDevicePropertyAddress () -> AudioObjectPropertyAddress {
        
        return AudioObjectPropertyAddress(
            mSelector: kAudioHardwarePropertyDefaultOutputDevice,
            mScope: kAudioObjectPropertyScopeGlobal,
            mElement: kAudioObjectPropertyElementMaster
        )
        
    }
    
    
    func getVolumeStatus () -> OSStatus {
        
        var defaultOutputDevicePropertyAddress = self.getDefaultOutputDevicePropertyAddress();
        
        return AudioObjectGetPropertyData(
            AudioObjectID(kAudioObjectSystemObject),
            &defaultOutputDevicePropertyAddress,
            0,
            nil,
            &self.defaultOutputDeviceIDSize,
            &self.defaultOutputDeviceID
        )
    }
    
    
    /// 监听系统默认的设备音量发生变化
    func registerListen () {
        var status = self.getVolumeStatus();
        var volumePropertyAddress = AudioObjectPropertyAddress(
            mSelector: kAudioHardwareServiceDeviceProperty_VirtualMainVolume,
            mScope: kAudioDevicePropertyScopeOutput,
            mElement: kAudioObjectPropertyElementMaster
        )
        let context = UnsafeMutableRawPointer(Unmanaged.passUnretained(self).toOpaque())
        let volumeChangedCallback: AudioObjectPropertyListenerProc = { _, _, _, context in
            
            guard let context = context else { return kAudioHardwareBadObjectError }
            let object = Unmanaged<VolumeEvents>.fromOpaque(context).takeUnretainedValue()
            /// 获取系统当前音量
            let volume = object.getSystemVolume()
            /// 与flutter进行通信
            object.methodChannel?.invokeMethod("onSystemVolumeChange", arguments: volume);
            return 0;
            
        }
        let volumeChangedCallbackPointer = unsafeBitCast(volumeChangedCallback, to: AudioObjectPropertyListenerProc.self)
        
        status = AudioObjectAddPropertyListener(
            defaultOutputDeviceID,
            &volumePropertyAddress,
            volumeChangedCallbackPointer,
            context
        )
        
        
    }
    
    
    
    
    /**
     获取音量
     */
    func getSystemVolume () -> Float32 {
        
        
        var status = self.getVolumeStatus();
        
        if status == kAudioHardwareNoError {
            // 获取默认输出设备的音量
            var volumePropertyAddress = AudioObjectPropertyAddress(
                mSelector: kAudioHardwareServiceDeviceProperty_VirtualMainVolume,
                mScope: kAudioDevicePropertyScopeOutput,
                mElement: kAudioObjectPropertyElementMaster
            )
            status = AudioObjectGetPropertyData(
                self.defaultOutputDeviceID,
                &volumePropertyAddress,
                0,
                nil,
                &self.volumeSize,
                &self.volume
            )
        }
        
        if status == kAudioHardwareNoError {
            return self.volume
        } else {
            return 0;
        }
        
        
    }
    
    
    
    /// 设置系统音量
    /// - Parameter volume: 需要设置的音量
    /// - Returns: void
    func setVolume (volume:Float32) -> Void  {
        
        let status = self.getVolumeStatus();
        
        guard status == noErr else {
            /// 如果获取系统播放设备失败了则返回
            return
        }
        
        var deviceVolume: Float32 = volume
        var deviceVolumeSize = UInt32(MemoryLayout.size(ofValue: deviceVolume))
        var deviceVolumePropertyAddress = AudioObjectPropertyAddress(
            mSelector: kAudioHardwareServiceDeviceProperty_VirtualMainVolume,
            mScope: kAudioDevicePropertyScopeOutput,
            mElement: kAudioObjectPropertyElementMaster
        )
        
        let result = AudioObjectSetPropertyData(
            defaultOutputDeviceID,
            &deviceVolumePropertyAddress,
            0,
            nil,
            deviceVolumeSize,
            &deviceVolume
        )
    }
    
    
    
    
    
    
    
}





