import 'package:flutter/material.dart';
import 'package:flutter_music/pages/find/model/find_state_model.dart';
import 'package:flutter_music/pages/find/model/recommand_song_list_model.dart';
import 'package:flutter_music/pages/find/view/widget/findBySongListContent/find_content_song_list_item.dart';
import 'package:flutter_music/pages/find/view/widget/findBySongListContent/find_content_song_list_skeleton.dart';
import 'package:provider/provider.dart';

class FindContentSongList extends StatelessWidget {
  const FindContentSongList({super.key});

  buildContentSongListBody(value) {
    if (value is RecommendSongListModel) {
      return SliverPadding(
        padding: const EdgeInsets.only(bottom: 20),
        sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            childAspectRatio: 0.8,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return FindContentSongListItem(
                  songListItem: value.result![index]);
            },
            childCount: value.result!.length,
          ),
        ),
      );
    } else {
      return SliverList(
          delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return const FindContentSongListSkeleton();
        },
        childCount: 1,
      ));
    }
  }

  List<Widget> buildSongListByGridView(RecommendSongListModel list) {
    List<Widget> widgetList = [];
    for (var i = 0; i < list.result!.length; i++) {
      Result songListItem = list.result![i];
      widgetList.add(FindContentSongListItem(songListItem: songListItem));
    }

    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Selector<FindStateModel, dynamic>(
        builder: (context, value, child) {
          return buildContentSongListBody(value);
        },
        shouldRebuild: (previous, next) => previous != next,
        selector: (p0, p1) => p1.recommendSongList);
  }
}
