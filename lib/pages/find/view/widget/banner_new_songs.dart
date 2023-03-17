import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/pages/find/view/widget/bannerNewSongs/banner_new_songs_content.dart';

class BannerNewSongs extends StatelessWidget {
  const BannerNewSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          '最新歌曲',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              decoration: TextDecoration.none,
              fontFamily: globaSourceHanSansCNBold),
        ),
        SizedBox(
          height: 6,
        ),
        SizedBox(
          height: 160,
          child: BannerNewSongsContent(),
        )
      ],
    );
  }
}
