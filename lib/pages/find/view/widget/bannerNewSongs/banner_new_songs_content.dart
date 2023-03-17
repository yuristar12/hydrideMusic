import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/pages/find/model/find_state_model.dart';
import 'package:flutter_music/pages/find/view/widget/bannerNewSongs/banner_new_songs_list_wrap.dart';
import 'package:flutter_music/pages/find/view/widget/banner_skeleton.dart';
import 'package:provider/provider.dart';

import '../../../model/new_songs_model.dart';

class BannerNewSongsContent extends StatelessWidget {
  const BannerNewSongsContent({super.key});

  Widget buildBannerNewSongsBody(value) {
    // 如果value是数组返回NewSongs的weight否则返回骨架屏
    if (value is List<NewSongs>) {
      // return SingleChildScrollView(
      //   child: BannerNewSongsListWrap(newSongList: value),
      // );

      return BannerNewSongsListWrap(newSongList: value);
    } else {
      return const BannerSkeleton();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Selector<FindStateModel, dynamic>(
      builder: (context, value, child) {
        return buildBannerNewSongsBody(value);
      },
      selector: (p0, p1) => p1.newSongs,
      shouldRebuild: (previous, next) => previous != next,
    );
  }
}
