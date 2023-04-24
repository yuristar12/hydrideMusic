import 'package:flutter/material.dart';
import 'package:flutter_music/components/calciteProgressBar/calcite_progress_bar.dart';
import 'package:provider/provider.dart';

import '../../../model/song_play_state_model.dart';

class SongPlayControllerProgressBar extends StatelessWidget {
  const SongPlayControllerProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<SongPlayStateModel, double>(
        builder: (context, value, childe) {
          return CalciteProgressBar(
            value: value / 100,
            useDrage: true,
            onChanged: (double value) {
              Provider.of<SongPlayStateModel>(context, listen: false)
                  .songPlayProgressBarWidth = value * 100;
            },
          );
        },
        shouldRebuild: (previous, next) {
          return previous != next;
        },
        selector: ((p0, p1) => p1.songPlayProgressBarWidth));
  }
}
