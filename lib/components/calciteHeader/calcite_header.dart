import 'package:flutter/material.dart';
import 'package:flutter_music/components/abstracts/header_text_abstract.dart';
import 'package:flutter_music/components/calciteHeader/calcite_animation_text.dart';
import 'package:flutter_music/config/global_constant.dart';

///[useAnimation] 开启文字动画
///[width] 宽度
///[height] 高度
///[text] 文字内容

class CalciteHeader extends HeaderTextAbstract {
  const CalciteHeader(
      {super.key,
      useAnimation = true,
      double fontSize = 14,
      required double width,
      required double height,
      required text})
      : super(
            useAnimation: useAnimation,
            width: width,
            fontSize: fontSize,
            height: height,
            text: text);

  Widget buildTextBody() {
    if (useAnimation) {
      return CalciteAnimationText(text: text, fontSize: fontSize);
    } else {
      return Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontFamily: globaSourceHanSansCNBold,
            fontSize: fontSize),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.only(left: 4, right: 4),
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Flexible(child: buildTextBody())],
      ),
    );
  }
}
