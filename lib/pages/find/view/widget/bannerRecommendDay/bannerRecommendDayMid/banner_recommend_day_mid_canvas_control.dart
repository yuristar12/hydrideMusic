// canvas 控制器

import 'package:flutter/material.dart';

class CanvasControl extends CustomPainter {
  CanvasControl(this.width, this.height);
  final double width;
  final double height;

  final Paint _paint = Paint();
  static bool isEnd = false;

  @override
  void paint(Canvas canvas, Size size) {
    // 绘制轮廓
    drawerContentByObliqueLine(canvas, 'top', 4);
    drawerContentByObliqueLine(canvas, 'bottom', 4);
    drawerContentTriangle(canvas);

    canvas.drawRect(drawerContentRect('top_left'), _paint);
    canvas.drawRect(drawerContentRect('top_right'), _paint);
    canvas.drawRect(drawerContentRect('bottom_left'), _paint);
    canvas.drawRect(drawerContentRect('bottom_right'), _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  // 绘制斜线
  drawerContentByObliqueLine(Canvas canvas, String type, int lines) {
    double mid = width / 2;
    double average = mid / lines;

    for (var i = 0; i < lines * 2; i++) {
      double point = i * average;
      if (type == 'top') {
        canvas.drawLine(
            Offset(point, 0), Offset(0, point), _paint..strokeWidth = 1.4);
      } else {
        canvas.drawLine(Offset(width, point), Offset(point, width),
            _paint..strokeWidth = 1.4);
      }
    }
  }

  // 绘制三角形
  drawerContentTriangle(Canvas canvas) {
    Path path = Path();
    path.moveTo(15, 5);
    path.lineTo(15, 35);
    path.lineTo(30, 20);
    path.lineTo(15, 5);
    canvas.drawPath(path, Paint()..color = Colors.white);
  }

  // 绘制矩形
  drawerContentRect(String type) {
    late Rect rect;
    double size = 6;
    switch (type) {
      case 'top_left':
        rect = Rect.fromLTWH(0, 0, size, size);
        break;
      case 'top_right':
        rect = Rect.fromLTWH(width - size, 0, size, size);
        break;
      case 'bottom_left':
        rect = Rect.fromLTWH(0, height - size, size, size);
        break;
      case 'bottom_right':
        rect = Rect.fromLTWH(width - size, height - size, size, size);
        break;
    }
    return rect;
  }
}
