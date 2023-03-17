import 'package:flutter/material.dart';
import '../../config/global_constant.dart';

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
    if (index <= 1) {
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

class CalciteAnimationText extends StatefulWidget {
  const CalciteAnimationText(
      {super.key, required this.text, required this.fontSize});

  final String text;
  final double fontSize;

  @override
  State<CalciteAnimationText> createState() => _CalciteAnimationTextState();
}

class _CalciteAnimationTextState extends State<CalciteAnimationText>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    setState(() {
      controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 900),
      )..fling();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  buildAnimationText() {
    List<int> textUnicode = widget.text.codeUnits;
    return TweenAnimationBuilder(
      tween: TextTween(begin: [], end: textUnicode),
      duration: const Duration(milliseconds: 900),
      curve: Curves.linear,
      builder: (context, value, child) {
        return Text(
          // 忽略小数点
          String.fromCharCodes(value),
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.white,
              fontSize: widget.fontSize,
              decoration: TextDecoration.none,
              fontFamily: globaSourceHanSansCNBold),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildAnimationText();
  }
}
