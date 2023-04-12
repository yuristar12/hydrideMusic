import 'package:flutter/cupertino.dart';
import '../../../../../config/global_constant.dart';
import '../../../../../utils/utils.dart';
import '../../../model/song_list_detail_model.dart';

class SongTrackRight extends StatelessWidget {
  const SongTrackRight({super.key, required this.tracks, required this.index});

  final Tracks tracks;
  final int index;

//  歌曲时间

  Text buildSongDuration() {
    if (tracks.dt != null) {
      int duration = tracks.dt as int;

      return Text(
        useSongDuration(duration),
        style: globaSongTextStyle,
      );
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 6, child: buildPreviewArtsName(tracks.ar)),
            buildSongDuration()
          ],
        ));
  }
}
