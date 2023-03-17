import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/components/my_app.dart';
import 'package:flutter_music/config/global_constant.dart';

void main() {
  runApp(Container(
    padding: const EdgeInsets.only(
        left: globalHomePadding, right: globalHomePadding),
    decoration: const BoxDecoration(color: globaBackGroundColor),
    child: const MyWidget(),
  ));
  doWhenWindowReady(() {
    const initialSize = Size(1200, 800);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}
