import 'package:flutter/material.dart';
import 'package:flutter_music/components/abstracts/header_text_abstract.dart';
import 'package:flutter_music/components/calciteDivide/calcite_divide.dart';
import 'package:flutter_music/components/calcitePlainButton/calcite_plain_button.dart';
import 'package:flutter_music/pages/songList/model/song_list_detail_model.dart';
import 'package:flutter_music/pages/songList/widgets/songListPageContent/song_track.dart';
import 'package:flutter_music/utils/iconUtils.dart';

class SongListPageContent extends StatelessWidget {
  const SongListPageContent({super.key, required this.tracks});

  final List<Tracks>? tracks;

  List<Widget> buildSongTracks() {
    if (tracks == null) {
      return [Container()];
    } else {
      List<Widget> tracksWidget = [];
      int index = 1;
      tracks?.forEach((element) {
        tracksWidget.add(SongTrack(
          tracks: element,
          index: index,
        ));
        index += 1;
      });

      return tracksWidget;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CalcitePlainButton(
              text: '播放全部',
              onPressed: () {},
              buttonChildren: const Icon(
                IconUtil.playMusic,
                color: Colors.black,
                size: 14,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const Flexible(
              child: CalciteDivide(
                useAnimation: true,
                width: 48,
                height: 16,
                fontSize: 8,
                text: 'PLAYALL',
                align: AlignEnum.right,
                useText: true,
              ),
            ),
          ],
        ),

        const SizedBox(
          height: 12,
        ),
        //  歌单歌曲
        Column(
          children: buildSongTracks(),
        ),
      ],
    );
  }
}
