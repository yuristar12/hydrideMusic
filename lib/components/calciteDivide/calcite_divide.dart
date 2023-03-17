import 'package:flutter/material.dart';
import 'package:flutter_music/components/abstracts/header_text_abstract.dart';
import 'package:flutter_music/components/calciteHeader/calcite_header.dart';

class CalciteDivide extends HeaderTextAbstract {
  /// 分割线组件 包含CalciteHeader文字组件
  /// [align] 文字横向位置 text------/------text-----/------text
  /// [useText] 是否开启标题文字
  /// [useAnimation] 是否开启文字动画
  const CalciteDivide(
      {super.key,
      useAnimation = true,
      double fontSize = 14,
      double width = double.infinity,
      double height = double.infinity,
      String text = '',
      AlignEnum align = AlignEnum.left,
      bool useText = false})
      : super(
            useAnimation: useAnimation,
            fontSize: fontSize,
            width: width,
            height: height,
            text: text,
            align: align,
            useText: useText);

  Widget buildCalcIteDivide() {
    if (useText) {
      switch (align) {
        case AlignEnum.left:
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CalciteHeader(
                  useAnimation: useAnimation,
                  width: width,
                  height: height,
                  fontSize: fontSize,
                  text: text),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                fit: FlexFit.tight,
                child: buildDivideLine(),
              )
            ],
          );
        case AlignEnum.center:
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: buildDivideLine(),
              ),
              const SizedBox(
                width: 20,
              ),
              CalciteHeader(
                  useAnimation: useAnimation,
                  width: width,
                  height: height,
                  fontSize: fontSize,
                  text: text),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                fit: FlexFit.tight,
                child: buildDivideLine(),
              ),
            ],
          );

        case AlignEnum.right:
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: buildDivideLine(),
              ),
              const SizedBox(
                width: 8,
              ),
              CalciteHeader(
                  useAnimation: useAnimation,
                  width: width,
                  height: height,
                  fontSize: fontSize,
                  text: text),
            ],
          );
      }
    } else {
      return buildDivideLine();
    }
  }

//  构建分割线
  Widget buildDivideLine() {
    return Container(
        height: 1, decoration: BoxDecoration(color: Colors.grey[400]));
  }

  @override
  Widget build(BuildContext context) {
    return buildCalcIteDivide();
  }
}
