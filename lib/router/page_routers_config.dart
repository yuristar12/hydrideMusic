import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../model/home_state_model.dart';

Map<String, bool> pageMenuConfig = {
  "/": true,
  "songlist": false,
  "login": false,
};

// 判断是否显示NavMenu
void judgeNavMenuShow(BuildContext context, Route route) {
  bool flag = pageMenuConfig['${route.settings.name}'] as bool;
  var homeStateModel = Provider.of<HomeStateModel>(context, listen: false);
  homeStateModel.showMenu = flag;
}
