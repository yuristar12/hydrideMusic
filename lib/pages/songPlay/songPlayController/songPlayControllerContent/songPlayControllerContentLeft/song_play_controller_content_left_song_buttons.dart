import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/songPlayControllerContentLeft/song_play_controller_content_left_song_buttons_mid.dart';

import '../../../../../utils/iconUtils.dart';

class SongPlayControllerContentLeftSongButtons extends StatelessWidget {
  const SongPlayControllerContentLeftSongButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                IconUtil.preSonIcon,
                color: Colors.black,
                size: 14,
              ),
            )),
        const SongPlayControllerContentLeftSongButtonsMid(),
        MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                IconUtil.nextSongIcon,
                color: Colors.black,
                size: 14,
              ),
            )),
      ],
    );
  }
}
