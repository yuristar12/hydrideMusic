import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/pages/find/model/new_songs_model.dart';
import 'package:flutter_music/utils/utils.dart';

class BannerNewSongsListItemInfo extends StatelessWidget {
  const BannerNewSongsListItemInfo({super.key, required this.newSongs});

  final NewSongs newSongs;

  String getSongImgUrl(String url) {
    return useThumbnailImg(url, 140, 140);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.network(
          getSongImgUrl('${newSongs.album?.blurPicUrl}'),
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 8,
        ),
        SizedBox(
          width: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${newSongs.name}',
                style: const TextStyle(
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontFamily: globaSourceHanSansCNBold),
              ),
              Text(
                '${newSongs.artists![0].name}',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    decoration: TextDecoration.none,
                    overflow: TextOverflow.ellipsis,
                    fontFamily: globaSourceHanSansCNBold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
