import 'dart:async';

import 'package:flutter/cupertino.dart';

class CalciteSwiperController extends PageController {
  CalciteSwiperController(this.swiperList,
      {this.duration = 3000, this.swiperTime = 300});

  /// [duration] 轮播时间
  final int duration;

  /// [swiperList] 需要轮播的列表
  final List<String> swiperList;

  /// [swiperTime] 轮播滚动的时间
  final int swiperTime;

  static dynamic _timerController;
  static dynamic _t;
  int currentIndex = 0;

  /// 开始轮播
  onStartSwiper() {
    onStopSwiper();
    _timerController =
        Timer.periodic(Duration(milliseconds: duration), (Timer t) {
      _t = t;
      onNext();
    });
  }

  /// 暂停轮播
  onStopSwiper() {
    if (_t != null) _t?.cancel();
    if (_timerController != null) _timerController?.cancel();
  }

  /// 执行下一个轮播
  onNext() {
    currentIndex += 1;
    try {
      if (currentIndex >= swiperList.length) {
        currentIndex = 0;
      }
      animateToPage(currentIndex,
          duration: Duration(milliseconds: swiperTime), curve: Curves.linear);
    } catch (e) {
      currentIndex = 0;
      onStartSwiper();
    }
  }

  /// 执行上一个轮播
  onPrevious() {
    currentIndex -= 1;
    if (currentIndex < 0) {
      currentIndex = swiperList.length;
    }
    animateToPage(currentIndex,
        duration: Duration(milliseconds: swiperTime), curve: Curves.linear);
  }
}
