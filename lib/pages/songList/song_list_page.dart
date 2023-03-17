import 'package:flutter/cupertino.dart';
import 'package:flutter_music/pages/songList/widgets/songListPageBody/song_list_page_body.dart';

class SongListPage extends StatelessWidget {
  const SongListPage({super.key});

  @override
  Widget build(BuildContext context) {
    Object? arguments = ModalRoute.of(context)?.settings.arguments;
    if (arguments != null && arguments is Map) {
      return SongListPageBody(songListId: (arguments['songListId'].toString()));
    }
    return Container();
  }
}
