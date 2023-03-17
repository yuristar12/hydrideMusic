import 'package:flutter/cupertino.dart';
import 'package:flutter_music/pages/songList/song_list_page.dart';
import 'package:flutter_music/router/annimation_router.dart';

class PageRouters {
  static const String login = "login";
  static const String songlist = "songlist";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final name = settings.name;
    final args = settings.arguments;

    switch (name) {
      case 'login':
        return AnimationVerticalRoute(VerticalEnum.down,
            child: const SongListPage(), settings: settings);
      case 'songList':
        return AnimationVerticalRoute(VerticalEnum.down,
            child: const SongListPage(), settings: settings);
      default:
        return AnimationVerticalRoute(VerticalEnum.down,
            child: const SongListPage(), settings: settings);
    }
  }
}
