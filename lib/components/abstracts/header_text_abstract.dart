import 'package:flutter/src/widgets/framework.dart';

///[useAnimation] 开启文字动画
///[width] 宽度
///[height] 高度
///[text] 文字内容
enum AlignEnum { left, center, right }

abstract class HeaderTextAbstract extends StatelessWidget {
  const HeaderTextAbstract(
      {super.key,
      this.useAnimation = true,
      this.width = double.infinity,
      this.height = double.infinity,
      this.text = '',
      this.fontSize = 14,
      this.align = AlignEnum.left,
      this.useText = false});

  final bool useAnimation;
  final double width;
  final double height;
  final String text;
  final double fontSize;
  final AlignEnum align;
  final bool useText;
}
