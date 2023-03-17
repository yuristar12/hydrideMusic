import 'package:flutter/material.dart';
import 'package:flutter_music/components/calciteDivide/calcite_divide.dart';
import 'package:flutter_music/pages/find/model/new_songs_model.dart';
import 'package:flutter_music/pages/find/view/widget/bannerNewSongs/bannerNewSongsListItem/banner_new_songs_list_item_info.dart';

class BannerNewSongsListItem extends StatefulWidget {
  const BannerNewSongsListItem(
      {super.key, required this.newSongs, required this.automatickeepAlive});
  final NewSongs newSongs;
  final bool automatickeepAlive;

  @override
  State<BannerNewSongsListItem> createState() => _BannerNewSongsListItemState();
}

class _BannerNewSongsListItemState extends State<BannerNewSongsListItem>
    with AutomaticKeepAliveClientMixin {
  // 是否需要自动缓存该weight，配合listView.build来使用
  @override
  bool get wantKeepAlive => widget.automatickeepAlive;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [BannerNewSongsListItemInfo(newSongs: widget.newSongs)],
      ),
      const SizedBox(
        height: 8,
      ),
      const CalciteDivide(),
      const SizedBox(
        height: 8,
      ),
    ]);
  }
}
