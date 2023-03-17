import 'package:flutter/cupertino.dart';
import 'calcite_swiper_controller.dart';

class CalciteSwiperContainer extends StatelessWidget {
  const CalciteSwiperContainer(
      {super.key,
      required this.calciteSwiperController,
      required this.width,
      required this.height,
      this.scrollDirection = Axis.horizontal,
      this.imgFit = BoxFit.cover,
      this.onSwiperChange,
      this.onClickSwiper,
      this.percentageWidth = 0});

  final CalciteSwiperController calciteSwiperController;
  final double width;
  final double height;
  final Axis scrollDirection;
  final BoxFit imgFit;
  final Function? onSwiperChange;
  final Function? onClickSwiper;
  final double percentageWidth;

  buildSwiperImg(index) {
    var length = calciteSwiperController.swiperList.length;
    var imgList = calciteSwiperController.swiperList;
    return Image.network(
      imgList[index % length],
      height: height - 20,
      fit: imgFit,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          int index = calciteSwiperController.currentIndex;
          int length = calciteSwiperController.swiperList.length;
          if (onClickSwiper != null) {
            onClickSwiper!(index % length);
          }
        },
        child: MouseRegion(
            onHover: (event) => {calciteSwiperController.onStopSwiper()},
            onExit: (event) => {calciteSwiperController.onStartSwiper()},
            cursor: SystemMouseCursors.click,
            child: PageView.builder(
                onPageChanged: (index) => {
                      if (onSwiperChange != null) {onSwiperChange!(index)}
                    },
                itemCount: calciteSwiperController.swiperList.length,
                scrollDirection: scrollDirection,
                controller: calciteSwiperController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (_, index) {
                  return buildSwiperImg(index);
                })));
  }
}
