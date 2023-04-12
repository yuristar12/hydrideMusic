import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/model/song_play_state_model.dart';
import 'package:flutter_music/pages/songPlay/songPlayController/songPlayControllerContent/songPlayControllerContentLeft/songPlayControllerContentLeftSongButtonsMid/SongPlayControllerContentLeftSongButtonsMidPainter.dart';
import 'package:provider/provider.dart';

class SongPlayControllerContentLeftSongButtonsMid extends StatefulWidget {
  const SongPlayControllerContentLeftSongButtonsMid({super.key});

  @override
  State<SongPlayControllerContentLeftSongButtonsMid> createState() =>
      _SongPlayControllerContentLeftSongButtonsMidState();
}

class _SongPlayControllerContentLeftSongButtonsMidState
    extends State<SongPlayControllerContentLeftSongButtonsMid>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  PlayTypeEnum type = PlayTypeEnum.noPlay;

  @override
  void initState() {
    setAnimationControll();
    super.initState();
  }

  setAnimationControll() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700))
      ..forward();
  }

  Widget buildMidButton() {
    if (type == PlayTypeEnum.noPlay) {
      return buildButtonBody(type);
    } else if (type == PlayTypeEnum.toPlay) {
      setAnimationControll();
      return AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return buildButtonBody(type);
          });
    } else if (type == PlayTypeEnum.toPause) {
      setAnimationControll();
      return AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return buildButtonBody(type);
          });
    }
    return Container();
  }

  Widget buildButtonBody(PlayTypeEnum type) {
    return SizedBox(
      width: songControllerStyle['contentHeight']! / 2,
      height: songControllerStyle['contentHeight']! / 2,
      child: CustomPaint(
        painter: SongPlayControllerContentLeftSongButtonsMidPainter(
            Colors.black, _animationController.value, type),
      ),
    );
  }

//  当点击按钮的时候
  onHandleStatus() {
    Provider.of<SongPlayStateModel>(context, listen: false).isPlay =
        !Provider.of<SongPlayStateModel>(context, listen: false).isPlay;
  }

  @override
  Widget build(BuildContext context) {
    return Selector<SongPlayStateModel, bool>(
        builder: (context, value, child) {
          return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  onHandleStatus();
                },
                child: buildMidButton(),
              ));
        },
        shouldRebuild: (previous, next) {
          if (previous && !next) {
            type = PlayTypeEnum.toPause;
          } else if (!previous && next) {
            type = PlayTypeEnum.toPlay;
          } else {
            type = PlayTypeEnum.noPlay;
          }
          return previous != next;
        },
        selector: ((p0, p1) => p1.isPlay));
  }
}
