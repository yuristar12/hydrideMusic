import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';

class TextTween extends Tween<List<int>> {
  TextTween({required List<int> begin, required List<int> end})
      : super(begin: begin, end: end);
  bool flag = false;

  @override
  List<int> lerp(double t) {
    // 在动画过程中 t 的值是从 0 到 1
    // var cutoff = (end!.length * t).round();
    // print(t);
    var index = (end!.length * t).round();
    if (index < 1) {
      return [47, 47, 47, 47, 47, 47, 47];
    }
    List<int> cutoff = [];

    var last = end!.length - index;
    for (var j = 0; j < index; j++) {
      cutoff.add(end![j]);
    }
    for (var k = index; k < end!.length; k++) {
      cutoff.add((end![k] * t).round());
    }

    return cutoff;
  }
}

class NumAnimationPage extends StatefulWidget {
  const NumAnimationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NumAnimationPageState();
}

class _NumAnimationPageState extends State<NumAnimationPage>
    with SingleTickerProviderStateMixin {
  /// 持续时间为5秒的动画控制器
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..fling();

  /// 数字从100 到 99999的补间动画
  late final Animation<List<int>> _animation = TextTween(
          begin: [], end: [30860, 20043, 19968, 23383, 20309, 20197, 24248])
      .animate(_controller);

  @override
  Widget build(BuildContext context) {
    String test = '碌之一字何以庸';
    String test2 = '///////';
    int code = 0;
    print(test2.codeUnits);

    // print(test.codeUnits);
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        // 是一个AnimatedWidget，可自定义动画效果
        children: [
          TweenAnimationBuilder(
            tween: TextTween(
                begin: [],
                end: [30860, 20043, 19968, 23383, 20309, 20197, 24248]),
            duration: Duration(milliseconds: 1000),
            curve: Curves.linear,
            builder: (context, value, child) {
              return Text(
                // 忽略小数点
                String.fromCharCodes(value),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: globaSourceHanSansCNBold),
              );
            },
          ),
        ]);
  }
}
