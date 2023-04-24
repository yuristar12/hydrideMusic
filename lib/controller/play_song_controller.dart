import 'package:flutter_music/config/global_constant.dart';

class PlaySongController {
  PlaySongController._();
  static PlaySongController? _instance;

// 播放模式
  PlaySongModelEnum model = PlaySongModelEnum.listLoopModel;

  static PlaySongController getInstance() {
    _instance ??= PlaySongController._();
    return _instance!;
  }

//  设置播放模式
  setModel(PlaySongModelEnum value) {
    model = value;
  }
}
