import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/model/song_play_state_model.dart';
import 'package:flutter_music/pages/songList/model/song_list_detail_model.dart';
import 'package:flutter_music/utils/utils.dart';
import 'package:provider/provider.dart';

class SongPlayControllerContentLeftSongInfo extends StatelessWidget {
  const SongPlayControllerContentLeftSongInfo({super.key});

  buildSongInfo(Tracks? songInfo) {
    double contentHeight = songControllerStyle['contentHeight']!;
    if (songInfo is Tracks) {
      return SizedBox(
        height: contentHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              useThumbnailImg(songInfo.al!.picUrl!, contentHeight.toInt() * 2,
                  contentHeight.toInt() * 2),
              width: contentHeight,
              height: contentHeight,
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildPreviewSongName(songInfo.name),
                buildPreviewArtsName(songInfo.ar,
                    textStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[400],
                        fontFamily: globaSourceHanSansCNBold))
              ],
            )
          ],
        ),
      );
    } else {
      return SizedBox(
        height: contentHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: contentHeight,
              height: contentHeight,
              decoration: BoxDecoration(color: Colors.grey[200]),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 20,
                  decoration: BoxDecoration(color: Colors.grey[200]),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  width: 80,
                  height: 14,
                  decoration: BoxDecoration(color: Colors.grey[200]),
                )
              ],
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Selector<SongPlayStateModel, Tracks?>(
        builder: (context, value, child) {
          return buildSongInfo(value);
        },
        shouldRebuild: (previous, next) => previous != next,
        selector: (((p0, p1) => p1.songInfo)));
  }
}
