import 'package:flutter/material.dart';
import 'package:flutter_music/components/calciteProgressBar/calcite_progress_bar.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/songPlayControllerContentRight/songPlayControllerContentVolume/song_play_controller_content_volume_controller.dart';

class SongPlayControllerContentVolume extends StatefulWidget {
  const SongPlayControllerContentVolume({super.key});

  @override
  State<SongPlayControllerContentVolume> createState() =>
      _SongPlayControllerContentVolumeState();
}

class _SongPlayControllerContentVolumeState
    extends State<SongPlayControllerContentVolume> {
  double volumn = 0;
  final SongPlayControllerContentVolumeController
      songPlayControllerContentVolumeController =
      SongPlayControllerContentVolumeController();

  @override
  void initState() {
    super.initState();

    // songPlayControllerContentVolumeController
    //     .getSystemVolume()
    //     .then((value) => {
    //           setState(() {
    //             volumn = value / 100;
    //           })
    //         });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'volume',
          style: TextStyle(
              fontSize: 8,
              fontFamily: globaGeometosFont,
              decoration: TextDecoration.none,
              color: Colors.black),
        ),
        CalciteProgressBar(
          value: volumn,
          height: 4,
          useDrage: true,
          useClick: true,
          onChanged: (value) {
            print(value);
          },
        )
      ],
    );
  }
}
