import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BannerRecommendDayLeftDecorate extends StatelessWidget {
  const BannerRecommendDayLeftDecorate({super.key});

  buildDecorate(double left, double top, double width, double height) {
    return Positioned(
        left: left,
        top: top,
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(color: Colors.black),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: Stack(
        children: [
          buildDecorate(0, 0, 1, 20),
          buildDecorate(1, 0, 19, 1),
          buildDecorate(19, 1, 1, 5),
          buildDecorate(6, 5, 14, 1),
          buildDecorate(5, 5, 1, 15),
          buildDecorate(0, 19, 5, 1),
        ],
      ),
    );
  }
}
