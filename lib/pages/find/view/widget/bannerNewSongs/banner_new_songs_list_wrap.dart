import 'package:flutter/material.dart';
import 'package:flutter_music/pages/find/view/widget/bannerNewSongs/banner_new_songs_list_item.dart';

import '../../../model/new_songs_model.dart';

class BannerNewSongsListWrap extends StatelessWidget {
  const BannerNewSongsListWrap({super.key, required this.newSongList});

  final List<NewSongs> newSongList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newSongList.length,
        itemBuilder: (context, index) {
          return BannerNewSongsListItem(
            newSongs: newSongList[index],
            automatickeepAlive: true,
          );
        });
  }
}
