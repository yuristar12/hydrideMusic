import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/song_play_controller_content_left.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/song_play_controller_content_right.dart';

class SongPlayControllerContent extends StatelessWidget {
  const SongPlayControllerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 0, left: 12, right: 12, bottom: 0),
        height: songControllerStyle['height']! -
            songControllerStyle['progressHeight']!,
        child: Flex(
          direction: Axis.horizontal,
          children: const [
            Flexible(
              fit: FlexFit.tight,
              flex: 6,
              child: SongPlayControllerContentLeft(),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: SongPlayControllerContentRight(),
            )
          ],
        ));
  }
}
