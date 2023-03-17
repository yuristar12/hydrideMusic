import 'package:flutter/cupertino.dart';
import 'package:flutter_music/pages/find/view/widget/find_banner.dart';
import 'package:flutter_music/pages/find/view/widget/banner_new_songs.dart';
import 'package:flutter_music/pages/find/view/widget/banner_recommend_day.dart';

class FindHeader extends StatelessWidget {
  const FindHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(
          flex: 40,
          child: FindBanner(),
        ),
        SizedBox(
          width: 28,
        ),
        Expanded(flex: 30, child: BannerRecommendDay()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 34, child: BannerNewSongs()),
      ],
    );
  }
}
