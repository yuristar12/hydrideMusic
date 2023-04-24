import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/model/song_play_state_model.dart';
import 'package:flutter_music/utils/iconUtils.dart';
import 'package:provider/provider.dart';

class ContentIconOfModel extends StatelessWidget {
  const ContentIconOfModel({super.key});

  Widget buildIcon(PlaySongModelEnum value) {
    Widget icon;
    IconData _iconData;
    switch (value) {
      case PlaySongModelEnum.listLoopModel:
        _iconData = IconUtil.listLoopModelIcon;
        break;
      case PlaySongModelEnum.randomModel:
        _iconData = IconUtil.randomModelIcon;
        break;
      case PlaySongModelEnum.singleModel:
        _iconData = IconUtil.singleModeIcon;
        break;
      default:
        _iconData = IconUtil.listLoopModelIcon;
    }
    icon = Icon(_iconData);
    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Selector<SongPlayStateModel, PlaySongModelEnum>(
        builder: (context, value, child) {
          return buildIcon(value);
        },
        shouldRebuild: (previous, next) => previous != next,
        selector: ((p0, p1) => p1.playSongModelEnum));
  }
}
