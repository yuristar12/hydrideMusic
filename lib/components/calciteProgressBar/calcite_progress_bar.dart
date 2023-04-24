// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

/// [value] 进度条的当前的进度 0-1
/// [useDrage] 是否开启拖着改变进度条进度
/// [onChanged] 当手动操作改变进度条的回调方法
/// [useDrageImmediately] 当手动拖拽改变进度条是否实时触发回调方法
/// [height] 进度条的高度 默认高度4个像素
class CalciteProgressBar extends StatelessWidget {
  CalciteProgressBar(
      {super.key,
      required this.value,
      required this.onChanged,
      this.useDrage = false,
      this.useDrageImmediately,
      this.height = 4});
  final double value;
  final bool useDrage;
  final Function? useDrageImmediately;
  final double height;
  final Function onChanged;

  double onDragStartPoint = 0;

  // 设置鼠标的样式
  MouseCursor setMouseCursorStyle() {
    return SystemMouseCursors.click;
  }

// 修改state的value 确保视图与数据同步
  setValue(double positionValue) {
    if (value == positionValue) {
      return;
    }
    onChanged(positionValue);
  }

  double getPercentage(value, context) {
    return value / context.size!.width;
  }

//  当点击进度条的时候
  onClick(TapDownDetails details, context) {
    double positionValue = getPercentage(details.localPosition.dx, context);
    setValue(positionValue);
  }

  //  当开始拖拽的时候
  onHorizontalDragStart(DragStartDetails details, context) {
    if (!useDrage) return;
    onDragStartPoint = details.localPosition.dx;
    double positionValue = getPercentage(details.localPosition.dx, context);
    onChanged(positionValue);
  }

  // 拖着中
  onHorizontalDragUpdate(DragUpdateDetails details, context) {
    double changeDx = (details.localPosition.dx - onDragStartPoint).abs();
    double positionValue = getPercentage(changeDx, context);
    onChanged(positionValue);
    onDragStartPoint = positionValue;
    if (useDrageImmediately != null) {
      useDrageImmediately!(value);
    }
  }

  //拖拽结束
  onHorizontalDragEnd(DragEndDetails details) {
    setValue(value);

    onDragStartPoint = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: setMouseCursorStyle(),
        child: GestureDetector(
          onTapDown: (TapDownDetails details) {
            onClick(details, context);
          },
          onHorizontalDragStart: (DragStartDetails details) {
            onHorizontalDragStart(details, context);
          },
          onHorizontalDragUpdate: (DragUpdateDetails details) {
            onHorizontalDragUpdate(details, context);
          },
          onHorizontalDragEnd: onHorizontalDragEnd,
          child: Container(
            height: height,
            decoration: BoxDecoration(color: Colors.grey[300]),
            child: Stack(
              children: [
                Positioned(
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: value,
                    heightFactor: 1,
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.black),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}
