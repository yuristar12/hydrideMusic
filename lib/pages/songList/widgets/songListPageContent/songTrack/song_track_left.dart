import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/pages/songList/model/song_list_detail_model.dart';

class SongTrackLeft extends StatelessWidget {
  const SongTrackLeft({super.key, required this.tracks, required this.index});

  final Tracks tracks;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${index}',
                style: globaSongTextStyle,
              ),
              const SizedBox(
                width: 12,
              ),
              buildPreviewSongName(tracks.name),
            ]));
  }
}
