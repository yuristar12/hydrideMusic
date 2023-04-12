import 'package:flutter/material.dart';
import 'package:flutter_music/model/song_play_state_model.dart';
import 'package:flutter_music/pages/songList/model/song_list_detail_model.dart';
import 'package:flutter_music/pages/songList/widgets/songListPageContent/songTrack/song_track_left.dart';
import 'package:flutter_music/pages/songList/widgets/songListPageContent/songTrack/song_track_right.dart';
import 'package:provider/provider.dart';

class SongTrack extends StatefulWidget {
  const SongTrack(
      {super.key, this.index = 1, this.isPlay = false, required this.tracks});

  final int index;
  final bool isPlay;
  final Tracks tracks;

  @override
  State<SongTrack> createState() => _SongTrackState();
}

class _SongTrackState extends State<SongTrack> {
  bool isHover = false;

//  当鼠标进入的时候
  onHover(bool type) {
    if (isHover == type) return;
    setState(() {
      isHover = type;
    });
  }

  //  当双击播放音乐
  onDoublePlaySong() {
    Provider.of<SongPlayStateModel>(context, listen: false).songInfo =
        widget.tracks;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        onDoublePlaySong();
      },
      child: MouseRegion(
          onEnter: (event) {
            onHover(true);
          },
          onExit: (event) {
            onHover(false);
          },
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
                color: isHover ? Colors.grey[200] : Colors.transparent),
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 12, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SongTrackLeft(tracks: widget.tracks, index: widget.index),
                SongTrackRight(
                  tracks: widget.tracks,
                  index: widget.index,
                ),
              ],
            ),
          )),
    );
  }
}
