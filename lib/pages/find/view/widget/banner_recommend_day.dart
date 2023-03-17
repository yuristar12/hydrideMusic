import 'package:flutter/material.dart';
import 'package:flutter_music/pages/find/view/widget/bannerRecommendDay/banner_recommend_day_left.dart';
import 'package:flutter_music/pages/find/view/widget/bannerRecommendDay/banner_recommend_day_mid.dart';
import 'package:flutter_music/pages/find/view/widget/bannerRecommendDay/banner_recommend_day_right.dart';

class BannerRecommendDay extends StatelessWidget {
  const BannerRecommendDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 26,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              BannerRecommendDayLeft(),
              BannerRecommendDayMid(),
              BannerRecommendDayRight()
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
