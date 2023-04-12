import 'package:flutter_music/config/base/base_change_notifier.dart';
import 'package:flutter_music/pages/songList/model/song_list_detail_model.dart';

class SongPlayStateModel extends BaseChageNotifier {
  //  是否显示播放控制器
  bool _songPlayControlShow = false;

  //  播放器的进度条
  double _songPlayProgressBarWidth = 30;

  //  是否处于播放
  bool _isPlay = false;

  //  歌曲信息
  Tracks? _songInfo;

// set

// 设置当前播放器播放的歌曲
  set songInfo(Tracks? tracks) {
    if (tracks == _songInfo) return;
    _songInfo = tracks;

    if (!_songPlayControlShow) {
      _songPlayControlShow = true;
    }
    // 开始播放音乐
    notifyListeners();
  }

  // 设置是否处于播放
  set isPlay(bool type) {
    if (type == _isPlay) return;
    _isPlay = type;
    notifyListeners();
  }

// 设置播放器是否显示
  set songPlayControlShow(bool type) {
    if (type == _songPlayControlShow) return;
    _songPlayControlShow = type;
    notifyListeners();
  }

//  设置播放的进度条
  set songPlayProgressBarWidth(double width) {
    if (!_songPlayControlShow) return;
    if (width == _songPlayProgressBarWidth) return;
    _songPlayProgressBarWidth = width;
    notifyListeners();
  }

// get
  bool get songPlayControlShow => _songPlayControlShow;

  double get songPlayProgressBarWidth => _songPlayProgressBarWidth;

  Tracks? get songInfo => _songInfo;

  bool get isPlay => _isPlay;
}
