import 'package:flutter/material.dart';
import 'package:flutter_music/pages/find/view/widget/bannerRecommendDay/bannerRecommendDayMid/banner_recommend_day_mid_canvas.dart';

class BannerRecommendDayMid extends StatelessWidget {
  const BannerRecommendDayMid({super.key});

  final double width = 40;
  final double height = 40;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      BannerRecommendDayMidCanvas(
        width: width,
        height: height,
      ),
    ]);
  }
}
