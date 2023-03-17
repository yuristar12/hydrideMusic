import 'package:flutter/material.dart';
import 'package:flutter_music/config/base/base_change_notifier.dart';
import 'package:flutter_music/model/meun_item_model.dart';

class HomeStateModel extends BaseChageNotifier {
  // 当key变化的时候，重新渲染weight
  int refreshCode = 0;

  // 是否显示菜单
  bool _showMenu = true;

  void needRefresh() {
    refreshCode += 1;
    notifyListeners();
  }

  List<MenuItemModel> get itemModel => [
        MenuItemModel(title: '发现音乐', name: MenuItemName.find),
        MenuItemModel(title: '我的音乐', name: MenuItemName.personal),
      ];

  MenuItemName _selectMenuName = MenuItemName.find;

  set selectMenuName(MenuItemName name) {
    if (name == _selectMenuName) return;
    _selectMenuName = name;
    notifyListeners();
  }

  set showMenu(bool value) {
    if (value == _showMenu) return;
    _showMenu = value;
    notifyListeners();
  }

  bool get showMenu => _showMenu;

  MenuItemName get selectMenuName => _selectMenuName;
}
