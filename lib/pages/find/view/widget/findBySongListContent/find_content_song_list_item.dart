import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/pages/find/model/recommand_song_list_model.dart';
import 'package:flutter_music/pages/home/home_content.dart';
import 'package:flutter_music/pages/home/home_page.dart';
import 'package:flutter_music/router/page_routers.dart';
import 'package:flutter_music/utils/utils.dart';

class FindContentSongListItem extends StatefulWidget {
  const FindContentSongListItem({super.key, required this.songListItem});

  final Result songListItem;

  @override
  State<FindContentSongListItem> createState() =>
      _FindContentSongListItemState();
}

class _FindContentSongListItemState extends State<FindContentSongListItem>
    with SingleTickerProviderStateMixin {
  Offset startTransformOffset = const Offset(0, 0);
  Offset endTransformOffset = const Offset(0, 20);
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 200),
  )..forward();
  late Animation<Offset> _animation =
      Tween<Offset>(begin: endTransformOffset, end: startTransformOffset)
          .animate(_controller);

  String getSongListImgUrl() {
    return useThumbnailImg(widget.songListItem.picUrl.toString(), 300, 300);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return MouseRegion(
              onEnter: (event) {
                _animation = Tween<Offset>(
                        begin: const Offset(0, -20), end: startTransformOffset)
                    .animate(_controller);
                _controller.reverse();
              },
              onExit: (event) {
                _controller.forward();
              },
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  if (kHomeBodyScaffoldKey.currentContext != null) {
                    Navigator.pushNamed(kHomeBodyScaffoldKey.currentContext!,
                        PageRouters.songlist,
                        arguments: {"songListId": widget.songListItem.id});
                  }
                },
                child: Transform.translate(
                    offset: _animation.value,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              getSongListImgUrl(),
                              width: 300,
                              height: 300,
                            )),
                        // 歌单标题
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          widget.songListItem.name.toString(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontFamily: globaSourceHanSansCNBold,
                              fontSize: 12),
                        )
                      ],
                    )),
              ));
        });
  }
}
