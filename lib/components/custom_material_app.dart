import 'package:flutter/material.dart';
import 'package:flutter_music/router/custom_router_observer.dart';
import 'package:flutter_music/router/page_routers.dart';

class CustomMaterilApp extends StatelessWidget {
  const CustomMaterilApp({
    super.key,
    this.home,
    this.title,
    this.builder,
    this.theme,
    this.navigatorKey,
  });

  final Widget? home;
  final String? title;
  final TransitionBuilder? builder;
  final ThemeData? theme;
  final GlobalKey<NavigatorState>? navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: theme,
        home: home,
        navigatorObservers: [CustomRouterObserver(context)],
        onGenerateRoute: PageRouters.generateRoute,
        builder: builder);
  }
}
