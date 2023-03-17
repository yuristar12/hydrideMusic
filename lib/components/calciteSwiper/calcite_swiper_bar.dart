import 'package:flutter/material.dart';

class CalciteSwiperBar extends StatefulWidget {
  const CalciteSwiperBar({
    super.key,
    required this.swiperWidth,
    required this.swiperLength,
    required this.index,
    required this.currentIndex,
    this.usePercentage = false,
  });
  final double swiperWidth;
  final int swiperLength;
  final int index;
  final int currentIndex;
  final bool usePercentage;

  @override
  State<CalciteSwiperBar> createState() => _CalciteSwiperBarState();
}

class _CalciteSwiperBarState extends State<CalciteSwiperBar>
    with SingleTickerProviderStateMixin {
  bool oldStatus = false;
  @override
  void dispose() {
    super.dispose();
  }

  Widget buildContainer(width, height) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(color: Colors.black),
    );
  }

  Widget buildSwiperBody(width, height) {
    if (widget.usePercentage) {
      return Flexible(
          fit: FlexFit.tight,
          child: FractionallySizedBox(
              widthFactor: 1,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Flexible(
                      child: FractionallySizedBox(
                    widthFactor: width,
                    child: Container(
                      height: height,
                      decoration: const BoxDecoration(color: Colors.black),
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  )
                ],
              )));
    } else {
      return buildContainer(width, height);
    }
  }

  // 构建swiper底部条
  Widget buildSwiperBar() {
    var usePercentage = widget.usePercentage;
    Widget _widget;
    double barWidth = usePercentage
        ? 0.8
        : (widget.swiperWidth / (widget.swiperLength + 1)) - 10;

    double animationWidth = usePercentage ? 1 : barWidth * 2;
    // 没有动画的底部条
    if (widget.index != widget.currentIndex) {
      if (!oldStatus) {
        _widget = buildSwiperBody(barWidth, 2.0);
      } else {
        _widget = TweenAnimationBuilder(
            tween: SizeTween(
                begin: Size(animationWidth, 4), end: Size(barWidth, 2)),
            curve: Curves.linearToEaseOut,
            duration: const Duration(milliseconds: 700),
            builder: (context, value, child) {
              return buildSwiperBody(value?.width, value?.height);
            });
        oldStatus = false;
      }
    } else {
      _widget = TweenAnimationBuilder(
          tween:
              SizeTween(begin: Size(barWidth, 2), end: Size(animationWidth, 4)),
          curve: Curves.linearToEaseOut,
          duration: const Duration(milliseconds: 700),
          builder: (context, value, child) {
            return buildSwiperBody(value?.width, value?.height);
          });
      oldStatus = true;
    }

    return _widget;
  }

  @override
  Widget build(BuildContext context) {
    var usePercentage = widget.usePercentage;

    if (usePercentage) {
      return buildSwiperBar();
    } else {
      return Row(
        children: [
          buildSwiperBar(),
          const SizedBox(
            width: 10,
          )
        ],
      );
    }
  }
}
