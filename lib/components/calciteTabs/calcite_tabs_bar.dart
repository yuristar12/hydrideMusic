import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CalciteTabsBar extends StatefulWidget {
  const CalciteTabsBar(
      {super.key,
      required this.calciteTabsBarWidth,
      required this.calciteTabsWidth,
      required this.calcIteTabsItemWidth,
      required this.calcIteTabsIndex});
  final double calciteTabsBarWidth;
  final double calciteTabsWidth;
  final double calcIteTabsItemWidth;
  final int calcIteTabsIndex;

  @override
  State<CalciteTabsBar> createState() => _CalciteTabsBarState();
}

class _CalciteTabsBarState extends State<CalciteTabsBar> {
  late int calcIteTabsIndex;

  @override
  void initState() {
    super.initState();
    calcIteTabsIndex = widget.calcIteTabsIndex;
  }

  onCalcPositionRow() {
    var value = widget.calcIteTabsIndex * widget.calcIteTabsItemWidth +
        widget.calcIteTabsItemWidth / 2 -
        widget.calciteTabsBarWidth / 2;
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.calciteTabsWidth,
      height: 4,
      child: Stack(
        children: [
          // 底部导航条动画
          AnimatedPositioned(
              top: 0,
              left: onCalcPositionRow(),
              duration: const Duration(milliseconds: 300),
              child: Container(
                width: widget.calciteTabsBarWidth,
                height: 4,
                decoration: const BoxDecoration(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
