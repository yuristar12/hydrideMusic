import 'package:flutter/material.dart';
import 'package:flutter_music/model/song_play_state_model.dart';
import 'package:flutter_music/utils/iconUtils.dart';
import 'package:provider/provider.dart';

class ContentIconsOfLike extends StatelessWidget {
  const ContentIconsOfLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<SongPlayStateModel, SongPlayStateModel>(
        builder: (context, model, childe) {
          if (model.songInfo != null) {}
          return IconButton(
            disabledColor: Colors.grey[300],
            icon: const Icon(IconUtil.likeSongIcon),
            onPressed: model.songInfo != null ? () {} : null,
          );
        },
        shouldRebuild: (pre, next) {
          return (pre != next) || (pre.songInfo != next.songInfo);
        },
        selector: ((p0, p1) => p1));
  }
}
