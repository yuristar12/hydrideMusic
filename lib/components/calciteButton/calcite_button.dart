import 'package:flutter/material.dart';
import 'package:flutter_music/components/calciteButton/calcite.dart';
import 'package:flutter_music/config/global_constant.dart';

enum CalciteButtonSize {
  min,
  mid,
  big,
}

const Color hoverColor = Color.fromARGB(73, 187, 189, 190);
const Color transparent = Colors.transparent;

class CalciteButton extends StatefulWidget {
  const CalciteButton(
      {super.key,
      this.size = CalciteButtonSize.mid,
      required this.onClick,
      required this.text});
  final CalciteButtonSize? size;
  final Function onClick;
  final String text;

  @override
  State<CalciteButton> createState() => _CalciteButtonState();
}

class _CalciteButtonState extends State<CalciteButton> {
  // 按钮文字
  late String text;
  // 背景颜色
  Color background = transparent;

  @override
  void initState() {
    super.initState();
    text = widget.text;
  }

// 设置padding的内边距
  EdgeInsets setButtonPaddingStyle() {
    EdgeInsets padding;
    switch (widget.size) {
      case CalciteButtonSize.min:
        padding = const EdgeInsets.only(left: 22, top: 1, bottom: 1, right: 22);
        break;
      case CalciteButtonSize.mid:
        padding = const EdgeInsets.only(left: 30, top: 2, bottom: 2, right: 30);
        break;
      case CalciteButtonSize.big:
        padding = const EdgeInsets.only(left: 38, top: 4, bottom: 4, right: 38);
        break;

      default:
        padding = const EdgeInsets.only(left: 8, top: 4, bottom: 4, right: 8);
    }
    return padding;
  }

  // 设置文字大小
  double setButtonTextSize() {
    double size;
    switch (widget.size) {
      case CalciteButtonSize.min:
        size = 12;
        break;
      case CalciteButtonSize.mid:
        size = 14;
        break;
      case CalciteButtonSize.big:
        size = 16;
        break;

      default:
        size = 12;
    }
    return size;
  }

  // 设置鼠标进入背景颜色
  setOnHoverBackground() {
    if (background != hoverColor) {
      setState(() {
        background = hoverColor;
      });
    }
  }

  // 设置鼠标离开背景颜色
  setUnHoverBackground() {
    if (background != transparent) {
      setState(() {
        background = transparent;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        if (widget.onClick != null) {widget.onClick()}
      },
      child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) => {setOnHoverBackground()},
          onExit: (event) => {setUnHoverBackground()},
          child: Stack(
            children: [
              // 左上角
              const Positioned(
                top: 0,
                left: 0,
                child: Calcite(orientation: CalciteOrientation.topleft),
              ),
              // // 右上角
              const Positioned(
                top: 0,
                right: 0,
                child: Calcite(orientation: CalciteOrientation.topright),
              ),
              // // 左下角
              const Positioned(
                bottom: 0,
                left: 0,
                child: Calcite(orientation: CalciteOrientation.bottomleft),
              ),
              // // 右下角
              const Positioned(
                bottom: 0,
                right: 0,
                child: Calcite(orientation: CalciteOrientation.bottomright),
              ),
              Container(
                  padding: setButtonPaddingStyle(),
                  decoration: BoxDecoration(color: background),
                  child: Text(
                    widget.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.4,
                        fontFamily: globaGeometosFont,
                        fontSize: setButtonTextSize()),
                  )),
            ],
          )),
    );
  }
}
