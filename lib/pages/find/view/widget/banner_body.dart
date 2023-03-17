import 'package:flutter/material.dart';
import 'package:flutter_music/components/calciteHeader/calcite_header.dart';

import '../../../../components/calciteSwiper/calcite_swiper.dart';
import '../../../../components/calciteSwiper/calcite_swiper_controller.dart';

class BannerBody extends StatelessWidget {
  const BannerBody({super.key, required this.calciteSwiperController});

  final CalciteSwiperController calciteSwiperController;

  Widget buildContainer(double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(color: Colors.black),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 头部
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalciteHeader(
                  width: 180,
                  height: 18,
                  text: 'BREAKING NEWS',
                  fontSize: 12,
                ),
                Row(
                  children: [
                    buildContainer(100, 1),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          color: Colors.white),
                      child: Center(
                        child: buildContainer(4, 4),
                      ),
                    )
                  ],
                )
              ],
            ),

            // 间距
            const SizedBox(
              height: 8,
            ),

            // 轮播图主体
            CalcIteSwiper(
                onClickSwiper: (e) => {print(e)},
                calciteSwiperController: calciteSwiperController,
                percentageWidth: .97,
                height: 180),
          ],
        ),

        // 尾部
        Positioned(bottom: 9, right: 0, child: buildContainer(80, 1)),
        Positioned(bottom: 9, right: 0, child: buildContainer(1, 80))
      ],
    );
  }
}
