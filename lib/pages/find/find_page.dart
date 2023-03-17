import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/pages/find/view/find_header.dart';
import 'package:flutter_music/pages/find/view/find_by_song_list_header_content.dart';
import 'package:flutter_music/pages/find/view/widget/findBySongListContent/find_content_song_list_wrap.dart';

/// 当使用gride布局如果需要添加滚动操作则需要自定义scrollView并且不能存在多个可以滚动的小部件
class FindPage extends StatelessWidget {
  const FindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return const FindHeader();
            },
            childCount: 1,
          ),
        ),
        // 头部
        const FindBySongListHeadrContent(),
        // 歌单内容
        const FindContentSongList()
      ],
    );
  }
}
