import 'package:flutter/material.dart';
import 'package:flutter_music/components/calcitePlainButton/calcite_plain_button.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/pages/songList/model/song_list_detail_model.dart';
import 'package:flutter_music/pages/songList/widgets/songListPageHeader/song_list_page_header_des.dart';
import 'package:flutter_music/utils/utils.dart';

class SongListPageHeader extends StatelessWidget {
  const SongListPageHeader({super.key, required this.songListDetailModel});

  final SongListDetailModel songListDetailModel;

  String getSongListImgUlr() {
    return useThumbnailImg(
        '${songListDetailModel.playlist?.coverImgUrl}', 320, 320);
  }

  // 图片
  Widget buildSongListImg() {
    return Image.network(
      getSongListImgUlr(),
      width: 180,
      height: 180,
      fit: BoxFit.cover,
    );
  }

//  基础信息
  Widget buildSongListInfo() {
    Playlist? playlist = songListDetailModel.playlist;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${playlist!.name}',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                  fontFamily: globaSourceHanSansCNBold),
            ),
            Column(
              children: [
                CalcitePlainButton(
                    disabled: true,
                    minWidth: 180,
                    text:
                        '创建时间：${useFilterTime('yyyy-mm-dd', timestamp: playlist.updateTime)}',
                    size: buttonSize.mid,
                    onPressed: () => {}),
                const SizedBox(
                  height: 8,
                ),
                CalcitePlainButton(
                    minWidth: 180,
                    mode: buttonMode.deep,
                    text: '查看详情',
                    size: buttonSize.big,
                    onPressed: () => {})
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${playlist.creator?.nickname}',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  fontFamily: globaSourceHanSansCNBold),
            ),
            Text(
              '共：${playlist.trackCount}首 - 播放：${playlist.playCount}次',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                  decoration: TextDecoration.none,
                  fontFamily: globaSourceHanSansCNBold),
            ),
            SizedBox(
              height: 12,
            ),
            const SongListPageHeaderDes()
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSongListImg(),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          child: buildSongListInfo(),
          fit: FlexFit.loose,
        )
      ],
    );
  }
}
