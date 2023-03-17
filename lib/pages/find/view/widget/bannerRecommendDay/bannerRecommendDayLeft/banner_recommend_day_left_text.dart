import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';

class BannerRecommendDayLeftText extends StatefulWidget {
  const BannerRecommendDayLeftText({super.key, required this.text});
  final String text;

  @override
  State<BannerRecommendDayLeftText> createState() =>
      _BannerRecommendDayLeftTextState();
}

class _BannerRecommendDayLeftTextState extends State<BannerRecommendDayLeftText>
    with TickerProviderStateMixin {
  bool start = true;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(microseconds: 2), () {
      setState(() {
        start = false;
      });
    });
  }

  TextStyle buildAnimationText() {
    return const TextStyle(
        fontSize: 36,
        fontFamily: globaSourceHanSansCNBold,
        color: Colors.black,
        decoration: TextDecoration.none);
  }

  TextStyle buildUnAnimationText() {
    return const TextStyle(
      fontSize: 40,
      fontFamily: globaSourceHanSansCNBold,
      color: Colors.white,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(0, 0),
          blurRadius: 1,
          color: Colors.black,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
        style: start ? buildAnimationText() : buildUnAnimationText(),
        duration: const Duration(seconds: 1),
        curve: Curves.easeInToLinear,
        child: Text(widget.text));
  }
}
