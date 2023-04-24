import 'package:flutter/services.dart';

class SongPlayControllerContentVolumeController {
  final MethodChannel _volumeChannel = const MethodChannel('volumeEvent');

  final Function onSystemVolumeChangeCallback;

  SongPlayControllerContentVolumeController(this.onSystemVolumeChangeCallback) {
    _volumeChannel.setMethodCallHandler(_didRecieveVolumeEvent);
  }

//  与swift通道进行交互获取系统设备的音量
  Future<double> getSystemVolume() async {
    try {
      final result = await _volumeChannel.invokeMethod('GetSystemVolume');
      return result;
    } on PlatformException {
      return 0;
    }
  }

//  与swift通道进行交互设置系统设备的音量
  Future setSystemVolume(volume) async {
    try {
      final argument = volume;
      await _volumeChannel.invokeMethod('SetSystemVolume', argument);
      // ignore: empty_catches
    } on PlatformException {}
  }

//  监听swift通道
  Future _didRecieveVolumeEvent(MethodCall call) async {
    final dynamic arguments = call.arguments;

    switch (call.method) {
      case "onSystemVolumeChange":
        onSystemVolumeChangeCallback(arguments);
        break;
      default:
    }
  }
}
