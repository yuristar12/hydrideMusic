import 'package:flutter/material.dart';

import 'bannerRecommendDayLeft/banner_recommend_day_left_ decorate.dart';
import 'bannerRecommendDayLeft/banner_recommend_day_left_text.dart';

class BannerRecommendDayLeft extends StatelessWidget {
  const BannerRecommendDayLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 160,
      child: Stack(children: [
        Positioned(
            left: 10,
            top: 10,
            child: Container(
              width: 140,
              height: 140,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      BannerRecommendDayLeftText(text: '每'),
                      BannerRecommendDayLeftText(text: '日')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'DAILY RECOMMENDATION',
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      BannerRecommendDayLeftText(text: '推'),
                      BannerRecommendDayLeftText(text: '荐')
                    ],
                  ),
                ],
              ),
            )),
        const Positioned(
            left: 5, top: 5, child: BannerRecommendDayLeftDecorate()),
        Positioned(
          right: -15,
          bottom: -15,
          child: Transform(
            transform: Matrix4.identity()..scale(-1.0, -1.0, 1.0),
            child: const BannerRecommendDayLeftDecorate(),
          ),
        ),
      ]),
    );
  }
}
