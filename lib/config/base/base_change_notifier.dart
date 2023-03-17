import 'package:flutter/material.dart';

class BaseChageNotifier extends ChangeNotifier {
  bool disposed = false;

  BuildContext? context;
  void bindContext(BuildContext? context) => this.context = context;

  @override
  void dispose() {
    context = null;
    if (needAutoDispose()) {
      disposed = true;
      super.dispose();
    }
  }

  @override
  void notifyListeners() {
    if (disposed) return;
    super.notifyListeners();
  }

  bool needAutoDispose() {
    return true;
  }

// 重新获取数据 例如调用网络接口
  void reloadData() {}
}
