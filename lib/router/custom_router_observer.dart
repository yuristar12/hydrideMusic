import 'package:flutter/material.dart';
import 'package:flutter_music/model/home_state_model.dart';
import 'package:flutter_music/router/page_routers.dart';
import 'package:flutter_music/router/page_routers_config.dart';
import 'package:provider/provider.dart';

//  监听路由操作
//  需要监听哪些路由页面可以显示菜单
class CustomRouterObserver extends RouteObserver {
  CustomRouterObserver(this.context);
  final BuildContext context;
  @override
  void didPush(Route route, Route? previousRoute) {
    judgeNavMenuShow(context, route);
    super.didPush(route, previousRoute);
  }

  void didPopNext(Route route, Route? previousRoute) {}
  @override
  void didPop(Route route, Route? previousRoute) {
    if (previousRoute != null) {
      judgeNavMenuShow(context, previousRoute);
    }

    super.didPop(route, previousRoute);
  }

  void didPushNext(Route route, Route? previousRoute) {}
}
