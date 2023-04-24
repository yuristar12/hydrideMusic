import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/songPlayControllerContentRight/songPlayControllerContentIcons/content_icons_of_like.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/songPlayControllerContentRight/songPlayControllerContentIcons/content_icons_of_model.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/songPlayControllerContentRight/songPlayControllerContentIcons/content_icons_of_song_list.dart';

class SongPlayControllerContentIcons extends StatelessWidget {
  const SongPlayControllerContentIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        ContentIconsOfLike(),
        ContentIconOfModel(),
        ContentIconsOfSongList()
      ],
    );
  }
}
