import 'package:flutter/services.dart';

class SongPlayControllerContentVolumeController {
  final MethodChannel _volumeChannel = const MethodChannel('plugin_apple');

  Future<double> getSystemVolume() async {
    try {
      final result = await _volumeChannel.invokeMethod('apple_two');
      print(result);
      return 0;
    } on PlatformException catch (e) {
      return 0;
    }
  }
}
