import 'package:flutter/material.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/songPlayControllerContentRight/songPlayControllerContentIcons/song_play_controller_content_icons.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/songPlayControllerContentRight/song_play_controller_content_volume.dart';

class SongPlayControllerContentRight extends StatelessWidget {
  const SongPlayControllerContentRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Flexible(
          flex: 4,
          child: SongPlayControllerContentVolume(),
        ),
        Flexible(flex: 6, child: SongPlayControllerContentIcons())
      ],
    );
  }
}
