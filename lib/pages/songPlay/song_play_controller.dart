import 'package:flutter/material.dart';
import 'package:flutter_music/config/base/provider_stateful_widget.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/model/song_play_state_model.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/song_play_controller_wrap.dart';
import 'package:provider/provider.dart';
import '../../config/base/base_change_notifier.dart';

class SongPlayController extends ProviderStatefulWidget {
  const SongPlayController({Key? key}) : super(key: key);

  @override
  ProviderState<ProviderStatefulWidget, BaseChageNotifier> createState() {
    return _SongPlayControllerState();
  }
}

class _SongPlayControllerState
    extends ProviderState<SongPlayController, SongPlayStateModel> {
  SongPlayStateModel? get songPlaystate {
    if (viewModel == null) {
      return Provider.of<SongPlayStateModel>(context, listen: false);
    }
    return null;
  }

  double? getControllerColumnPosition(value) {
    if (!value) {
      return songControllerStyle['hiddenHeight'];
    }
    return songControllerStyle['showHeight'];
  }

  @override
  Widget buildProviderChid(BuildContext context, Widget? reuseChild) {
    return Selector<SongPlayStateModel, bool>(
      selector: (content, p1) {
        return p1.songPlayControlShow;
      },
      shouldRebuild: (previous, next) => previous != next,
      builder: (context, value, child) {
        return AnimatedPositioned(
          left: (MediaQuery.of(context).size.width -
                  songControllerStyle['width']!) *
              0.5,
          height: songControllerStyle['height'],
          bottom: getControllerColumnPosition(value),
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOut,
          child: Container(
            width: 700,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: const SongPlayControllerWrap(),
          ),
        );
      },
    );
  }
}
