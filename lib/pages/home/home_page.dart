import 'package:flutter/material.dart';
import 'package:flutter_music/config/base/base_change_notifier.dart';
import 'package:flutter_music/config/base/provider_stateful_widget.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/model/home_state_model.dart';
import 'package:flutter_music/pages/home/home_content.dart';
import 'package:flutter_music/pages/home/navBar/nav_bar.dart';
import 'package:flutter_music/pages/songPlay/song_play_controller.dart';
import 'package:provider/provider.dart';

final GlobalKey<ScaffoldState> kHomeScaffoldKey =
    GlobalKey(debugLabel: 'home-Scaffold-key');

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: kHomeScaffoldKey,
      body: const HomeBody(),
    );
  }
}

class HomeBody extends ProviderStatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  ProviderState<ProviderStatefulWidget, BaseChageNotifier> createState() {
    return _HomeBodyState();
  }
}

class _HomeBodyState extends ProviderState<HomeBody, HomeStateModel> {
  HomeStateModel? get homeState {
    if (viewModel == null) {
      return Provider.of<HomeStateModel>(context, listen: false);
    }
    return null;
  }

  @override
  Widget buildProviderChid(BuildContext context, Widget? reuseChild) {
    return Selector<HomeStateModel, String>(selector: (content, p1) {
      return '${p1.refreshCode}';
    }, shouldRebuild: (pre, next) {
      return pre != next;
    }, builder: (context, value, child) {
      return Stack(
        children: [
          //  主内容
          Column(
            // 渲染顶部
            children: [
              // 顶部navBar
              const NavBar(),
              // 渲染子路由页面
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(color: globaBackGroundColor),
                child: const HomeContent(),
              ))
            ],
            // 渲染子路由页面
          ),
          // 播放器

          const SongPlayController(),
        ],
      );
    });
  }
}
