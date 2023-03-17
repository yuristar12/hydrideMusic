import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/pages/find/model/banner_model.dart';
import 'package:flutter_music/pages/find/model/find_state_model.dart';
import 'package:flutter_music/pages/find/view/widget/banner_body.dart';
import 'package:flutter_music/pages/find/view/widget/banner_skeleton.dart';
import 'package:provider/provider.dart';

import '../../../../components/calciteSwiper/calcite_swiper_controller.dart';

class FindBanner extends StatelessWidget {
  const FindBanner({super.key});

  Widget buildBannerBody(value) {
    if (value is BannerModel) {
      List<String> bannerImgList = [];

      for (var element in value.banners!) {
        {
          bannerImgList.add(element.imageUrl.toString());
        }
      }

      CalciteSwiperController calciteSwiperController =
          CalciteSwiperController(bannerImgList);

      return BannerBody(calciteSwiperController: calciteSwiperController);
    } else {
      return const BannerSkeleton();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Selector<FindStateModel, dynamic>(
        selector: (p0, p1) => p1.banner,
        shouldRebuild: (previous, next) => previous != next,
        builder: (context, value, child) {
          return FractionallySizedBox(
            widthFactor: 1,
            child: buildBannerBody(value),
          );
        });
  }
}
