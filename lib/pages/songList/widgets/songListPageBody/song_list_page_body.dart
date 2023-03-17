import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_music/pages/songList/widgets/songListPageContent/song_list_page_content.dart';
import 'package:flutter_music/pages/songList/widgets/songListPageHeader/song_list_page_header.dart';
import '../../model/song_list_detail_model.dart';
import '../../request/song_list_page_request.dart';
import '../songListPageContent/song_list_page_content_skeleton.dart';
import '../songListPageHeader/song_list_page_header_skeleton.dart';

class SongListPageBody extends StatefulWidget {
  const SongListPageBody({super.key, required this.songListId});

  final String songListId;

  @override
  State<SongListPageBody> createState() => _SongListPageBodyState();
}

class _SongListPageBodyState extends State<SongListPageBody> {
  late final String _songListId;

  dynamic songListDetailModel;

  @override
  void initState() {
    // TODO: implement initState
    _songListId = widget.songListId;

    Timer(Duration(seconds: 1), () {
      setSongListDetail(_songListId);
    });

    super.initState();
  }

//  获取歌单详情
  setSongListDetail(id) async {
    var res = await SongListPageRequest.getSongListDetail(id);
    if (res.success) {
      setState(() {
        songListDetailModel = res.data!;
        print('xxxxxxx:${songListDetailModel}');
      });
    }
  }

//  主体内容
  List<Widget> buildSongListDetailBody() {
    if (songListDetailModel is SongListDetailModel) {
      return [
        SongListPageHeader(songListDetailModel: songListDetailModel),
        const SizedBox(
          height: 8,
        ),
        const SongListPageContent()
      ];
    } else {
      return const [
        SongListPageHeaderSkeleton(),
        SizedBox(
          height: 20,
        ),
        SongListPageContentSkeleton(),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // 解决背景透明显示的问题
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: buildSongListDetailBody(),
        ),
      ),
    );
  }
}
