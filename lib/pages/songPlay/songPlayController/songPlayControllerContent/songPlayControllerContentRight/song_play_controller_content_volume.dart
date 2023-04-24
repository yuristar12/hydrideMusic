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
  double volume = 0;
  bool isWait = true;
  late final SongPlayControllerContentVolumeController
      songPlayControllerContentVolumeController;

  @override
  void initState() {
    super.initState();

    songPlayControllerContentVolumeController =
        SongPlayControllerContentVolumeController(onSystemVolumeChangeCallback);

    songPlayControllerContentVolumeController
        .getSystemVolume()
        .then((value) => {
              setState(() {
                volume = value;
                isWait = false;
              })
            });
  }

  void onSystemVolumeChangeCallback(paramsVolume) {
    setState(() {
      volume = paramsVolume;
    });
  }

  Widget buildVolumeWidget(paramsVolume) {
    if (isWait) {
      return const Text("正在获取设备音量",
          style: TextStyle(fontSize: 8, fontFamily: globaSourceHanSansCNBold));
    } else {
      return CalciteProgressBar(
        value: paramsVolume,
        height: 4,
        useDrage: true,
        onChanged: (value) {
          setState(() {
            volume = value;
          });
          songPlayControllerContentVolumeController.setSystemVolume(value);
        },
      );
    }
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
        const SizedBox(
          height: 8,
        ),
        buildVolumeWidget(volume)
      ],
    );
  }
}
