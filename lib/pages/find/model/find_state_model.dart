import 'package:flutter_music/config/base/base_change_notifier.dart';
import 'package:flutter_music/pages/find/model/banner_model.dart';
import 'package:flutter_music/pages/find/model/new_songs_model.dart';
import 'package:flutter_music/pages/find/model/recommand_song_list_model.dart';
import 'package:flutter_music/pages/find/request/find_request.dart';

class FindStateModel extends BaseChageNotifier {
  // 轮播图
  BannerModel? banner;
  // 最新音乐
  List<NewSongs> newSongs = [];
// 推荐歌单
  RecommendSongListModel? recommendSongList;

  FindStateModel() {
    requestBanner();
    requestNewSons();
    requestRecommentSongList();
  }

  @override
  void reloadData() {
    requestBanner();
    requestNewSons();
    requestRecommentSongList();
  }

  // 获取轮播图数据
  void requestBanner() async {
    final res = await FindRequest.getRecommentBanner();
    if (res.success) {
      banner = res.data;
    }
    notifyListeners();
  }

  // 获取最新音乐数据
  void requestNewSons() async {
    final res = await FindRequest.getRecommentNewSongs();
    if (res.success) {
      newSongs = res.datas as List<NewSongs>;
    }
    notifyListeners();
  }

  // 获取发现页推荐的歌单
  void requestRecommentSongList() async {
    final res = await FindRequest.getRecommentSongList();

    if (res.success) {
      recommendSongList = res.data;
    }
    notifyListeners();
  }
}
