import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';

class BannerRecommendDayRight extends StatelessWidget {
  const BannerRecommendDayRight({super.key});

  // 获取月
  getTopText() {
    final now = DateTime.now();

    dynamic value = now.month;

    if (value < 10) {
      value = '0$value';
    }
    return value.toString();
  }

// 获取日
  getBottomText() {
    final now = DateTime.now();
    dynamic value = now.day;
    if (value < 10) {
      value = '0$value';
    }
    return value.toString();
  }

  buildText(text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black,
          fontFamily: globaGeometosFont,
          fontSize: 52,
          decoration: TextDecoration.none),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildText(getTopText()),
          const SizedBox(
            height: 14,
          ),
          buildText(getBottomText())
        ],
      ),
      const SizedBox(
        width: 10,
      )
    ]);
  }
}
