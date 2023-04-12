import 'package:flutter/material.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/songPlayControllerContentLeft/song_play_controller_content_left_song_buttons.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/songPlayControllerContentLeft/song_play_controller_content_left_song_info.dart';

class SongPlayControllerContentLeft extends StatelessWidget {
  const SongPlayControllerContentLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Flexible(
          flex: 7,
          fit: FlexFit.tight,
          child: SongPlayControllerContentLeftSongInfo(),
        ),
        Flexible(
          flex: 3,
          fit: FlexFit.loose,
          child: SongPlayControllerContentLeftSongButtons(),
        )
      ],
    );
  }
}
