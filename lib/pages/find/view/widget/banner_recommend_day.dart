import 'package:flutter/material.dart';
import 'package:flutter_music/model/song_play_state_model.dart';
import 'package:flutter_music/pages/find/view/widget/bannerRecommendDay/banner_recommend_day_left.dart';
import 'package:flutter_music/pages/find/view/widget/bannerRecommendDay/banner_recommend_day_mid.dart';
import 'package:flutter_music/pages/find/view/widget/bannerRecommendDay/banner_recommend_day_right.dart';
import 'package:provider/provider.dart';

class BannerRecommendDay extends StatelessWidget {
  const BannerRecommendDay({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          SongPlayStateModel songPlayStateModel =
              Provider.of<SongPlayStateModel>(context, listen: false);

          songPlayStateModel.songPlayControlShow =
              !songPlayStateModel.songPlayControlShow;
        },
        child: Column(
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
        ),
      ),
    );
  }
}
