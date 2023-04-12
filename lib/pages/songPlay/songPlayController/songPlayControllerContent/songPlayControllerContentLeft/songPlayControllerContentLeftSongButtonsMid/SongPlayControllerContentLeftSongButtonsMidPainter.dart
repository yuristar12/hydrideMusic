import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';

class SongPlayControllerContentLeftSongButtonsMidPainter extends CustomPainter {
  final Paint _paint;

  final double ratio;

  final PlayTypeEnum playTypeEnum;

  // 等边三角形的高
  late double side;
  late Offset p1;
  late Offset p2;
  late Offset p3;

  SongPlayControllerContentLeftSongButtonsMidPainter(
      Color color, this.ratio, this.playTypeEnum)
      : _paint = Paint()
          ..color = color
          ..strokeWidth = 1.4;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    setPoints(size);
    if (playTypeEnum == PlayTypeEnum.noPlay) {
      onDrawerToNoPlay(canvas, size);
    } else if (playTypeEnum == PlayTypeEnum.toPause) {
      onDrawerToPause(canvas, size);
    } else if (playTypeEnum == PlayTypeEnum.toPlay) {
      onDrawerToPlay(canvas, size);
    }
  }

  setPoints(Size size) {
    // 三角形的高
    side = sqrt(3) / 2 * size.width;
    // 顶点
    p1 = Offset(size.width, size.height / 2);
    // 上方点
    p2 = Offset(size.width - side, size.height);
    // 下方点
    p3 = Offset(size.width - side, 0);
  }

  // toPlay状态
  onDrawerToPlay(Canvas canvas, Size size) {
    double subsSideWidth = side - (side * ratio);
    double subsSizeHeight = size.height * ratio;

    Offset animationP2 =
        Offset(size.width - (subsSideWidth), size.height - subsSizeHeight);
    Offset animationP3 = Offset(size.width - subsSideWidth, 0 + subsSizeHeight);
    canvas.drawLine(p1, animationP2, _paint..strokeWidth = 1);
    canvas.drawLine(p1, animationP3, _paint..strokeWidth = 1);
    canvas.drawLine(p2, p3, _paint..strokeWidth = 1);
  }

//  toPause状态
  onDrawerToPause(Canvas canvas, Size size) {
    double subSideHeight = size.height * ratio;
    double subSizeWidth = size.width - (side * ratio);

    Offset animationP2 = Offset(subSizeWidth, subSideHeight);
    Offset animationP3 = Offset(subSizeWidth, size.height - subSideHeight);
    canvas.drawLine(p1, animationP2, _paint);
    canvas.drawLine(p1, animationP3, _paint);
    canvas.drawLine(p2, p3, _paint);
  }

//  无动画
  onDrawerToNoPlay(Canvas canvas, Size size) {
    canvas.drawLine(p1, p2, _paint);
    canvas.drawLine(p2, p3, _paint);
    canvas.drawLine(p3, p1, _paint);
  }

  @override
  bool shouldRepaint(
          SongPlayControllerContentLeftSongButtonsMidPainter oldDelegate) =>
      ratio != oldDelegate.ratio;
}
