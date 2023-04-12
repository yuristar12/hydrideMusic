import 'package:flutter/material.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/song_play_controller_%20progress_bar.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/song_play_controller_content.dart';

class SongPlayControllerWrap extends StatelessWidget {
  const SongPlayControllerWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SongPlayControllerProgressBar(),
        SongPlayControllerContent()
      ],
    );
  }
}
