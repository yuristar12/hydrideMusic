import 'package:flutter/material.dart';

import 'banner_recommend_day_mid_canvas_control.dart';

class BannerRecommendDayMidCanvas extends StatelessWidget {
  const BannerRecommendDayMidCanvas(
      {super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    CanvasControl canvasControl = CanvasControl(width, height);
    return CustomPaint(
      willChange: false,
      size: Size(width, height),
      painter: canvasControl,
    );
  }
}
