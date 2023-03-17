import 'package:flutter_music/pages/songList/model/song_list_detail_model.dart';

import '../../../config/network/netease_request.dart';
import '../../../config/network/response_model.dart';

class SongListPageRequest {
  // 获取歌单详情
  static Future<ResponseModel<SongListDetailModel>> getSongListDetail(id) {
    final res = neRequest.get('/playlist/detail', queryParameters: {"id": id},
        builder: (json) {
      return SongListDetailModel.fromJson(json);
    });

    return res;
  }
}
