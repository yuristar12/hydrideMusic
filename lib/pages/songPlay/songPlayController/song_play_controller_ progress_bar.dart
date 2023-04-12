import 'package:flutter/material.dart';
import 'package:flutter_music/components/calciteProgressBar/calcite_progress_bar.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:provider/provider.dart';

import '../../../model/song_play_state_model.dart';

class SongPlayControllerProgressBar extends StatelessWidget {
  const SongPlayControllerProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<SongPlayStateModel, SongPlayStateModel>(
        builder: (context, model, childe) {
          return CalciteProgressBar(
            value: model.songPlayProgressBarWidth / 100,
            useClick: true,
            useDrage: true,
            onChanged: (double value) {
              model.songPlayProgressBarWidth = value;
            },
          );
        },
        shouldRebuild: (previous, next) => previous != next,
        selector: ((p0, p1) => p1));
  }
}
