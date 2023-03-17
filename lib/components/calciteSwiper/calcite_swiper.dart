import 'package:flutter/cupertino.dart';
import 'package:flutter_music/components/calciteSwiper/calcite_swiper_bar.dart';
import 'package:flutter_music/components/calciteSwiper/calcite_swiper_container.dart';
import 'package:flutter_music/components/calciteSwiper/calcite_swiper_controller.dart';

/// [calciteSwiperController]swiper控制器
/// [width] 容器宽度
/// [height] 容器高度
/// [scrollDirection] 滚动方向 默认x轴
/// [imgFit] 图片裁切方式
/// [onSwiperChange] 当图片切换的回调方法
/// [percentageWidth] 是否开启父容器百分比宽度

class CalcIteSwiper extends StatefulWidget {
  const CalcIteSwiper(
      {super.key,
      required this.calciteSwiperController,
      this.width = 0,
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

  @override
  State<CalcIteSwiper> createState() => _CalcIteSwiperState();
}

class _CalcIteSwiperState extends State<CalcIteSwiper> {
  int currentIndex = 0;

  late double swiperBarWidth;

  late double swiperHeight;
  @override
  void initState() {
    super.initState();
    setState(() {
      widget.calciteSwiperController.currentIndex = 0;
      swiperBarWidth = widget.width * 0.8;
      swiperHeight = widget.height - 20;
      currentIndex = widget.calciteSwiperController.currentIndex;
      widget.calciteSwiperController.onStartSwiper();
    });
  }

  @override
  void dispose() {
    widget.calciteSwiperController.onStopSwiper();
    super.dispose();
  }

// 当轮播的图片发生改变时候
  onSwiperChange(index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget buildSwiperBarBody(index, usePercentage) {
    return CalciteSwiperBar(
        swiperWidth: swiperBarWidth,
        swiperLength: widget.calciteSwiperController.swiperList.length,
        currentIndex: currentIndex,
        index: index,
        usePercentage: usePercentage);
  }

  buildSwiperBody() {
    bool usePercentage = widget.percentageWidth > 0 ? true : false;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // 轮播图主体
      SizedBox(
        height: swiperHeight,
        child: CalciteSwiperContainer(
          calciteSwiperController: widget.calciteSwiperController,
          width: widget.width,
          height: widget.height,
          imgFit: widget.imgFit,
          scrollDirection: widget.scrollDirection,
          percentageWidth: widget.percentageWidth,
          onSwiperChange: (index) {
            onSwiperChange(
                (index % widget.calciteSwiperController.swiperList.length));
          },
          onClickSwiper: widget.onClickSwiper,
        ),
      ),
      // 导航条的容器
      FractionallySizedBox(
        widthFactor: .8,
        child: SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: widget.calciteSwiperController.swiperList
                .asMap()
                .keys
                .map((index) {
              return buildSwiperBarBody(index, usePercentage);
            }).toList(),
          ),
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.percentageWidth > 0) {
      return FractionallySizedBox(
        widthFactor: widget.percentageWidth,
        child: buildSwiperBody(),
      );
    } else {
      return SizedBox(
          width: widget.width, height: widget.height, child: buildSwiperBody());
    }
  }
}
