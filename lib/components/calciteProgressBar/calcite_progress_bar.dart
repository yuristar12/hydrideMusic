import 'package:flutter/material.dart';

/// [value] 进度条的当前的进度 0-1
/// [useDrage] 是否开启拖着改变进度条进度
/// [useClick] 是否开启点击进度条的某一点改变进度条
/// [onChanged] 当手动操作改变进度条的回调方法
/// [useDrageImmediately] 当手动拖拽改变进度条是否实时触发回调方法
/// [height] 进度条的高度 默认高度4个像素
class CalciteProgressBar extends StatefulWidget {
  const CalciteProgressBar(
      {super.key,
      required this.value,
      this.onChanged,
      this.useDrage = false,
      this.useClick = false,
      this.useDrageImmediately,
      this.height = 4});
  final double value;
  final bool useDrage;
  final bool useClick;
  final Function? useDrageImmediately;
  final double height;
  final Function? onChanged;

  @override
  State<CalciteProgressBar> createState() => _CalciteProgressBarState();
}

class _CalciteProgressBarState extends State<CalciteProgressBar> {
  //  对应渲染至视图层的进度
  double value = 0;
  //  记录开始的拖拽点
  double onDragStartPoint = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      value = widget.value;
    });
  }

// 设置鼠标的样式
  MouseCursor setMouseCursorStyle() {
    if (widget.useClick) {
      return SystemMouseCursors.click;
    } else {
      return MouseCursor.defer;
    }
  }

// 修改state的value 确保视图与数据同步
  setValue(double positionValue) {
    if (value == positionValue) {
      if (widget.onChanged != null) {
        widget.onChanged!(value);
      }
      return;
    }
    setState(() {
      value = positionValue;
      if (widget.onChanged != null) {
        widget.onChanged!(value);
      }
    });
  }

  double getPercentage(value) {
    return value / context.size!.width;
  }

//  当点击进度条的时候
  onClick(TapDownDetails details) {
    if (!widget.useClick) return;
    double positionValue = getPercentage(details.localPosition.dx);
    setValue(positionValue);
  }

  //  当开始拖拽的时候
  onHorizontalDragStart(DragStartDetails details) {
    if (!widget.useDrage) return;
    onDragStartPoint = details.localPosition.dx;
    double positionValue = getPercentage(details.localPosition.dx);
    setState(() {
      value = positionValue;
    });
  }

  // 拖着中
  onHorizontalDragUpdate(DragUpdateDetails details) {
    double changeDx = (details.localPosition.dx - onDragStartPoint).abs();
    double positionValue = getPercentage(changeDx);
    setState(() {
      value = positionValue;
      onDragStartPoint = value;
      if (widget.useDrageImmediately != null) {
        widget.useDrageImmediately!(value);
      }
    });
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
          onTapDown: onClick,
          onHorizontalDragStart: onHorizontalDragStart,
          onHorizontalDragUpdate: onHorizontalDragUpdate,
          onHorizontalDragEnd: onHorizontalDragEnd,
          child: Container(
            height: widget.height,
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
