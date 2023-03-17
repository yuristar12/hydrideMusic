import 'package:flutter/material.dart';

enum VerticalEnum {
  /// 从上往下
  down,

  /// 从下往上
  up
}

class AnimationVerticalRoute extends PageRouteBuilder {
  final Widget child;
  final int duration;
  final VerticalEnum type;
  AnimationVerticalRoute(this.type,
      {RouteSettings? settings, required this.child, this.duration = 300})
      : super(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) => child,
            transitionDuration: Duration(milliseconds: duration),
            transitionsBuilder: (context, from, to, child) {
              late Offset begin;
              Offset end = Offset.zero;

              if (type == VerticalEnum.down) {
                begin = const Offset(0, -1);
              } else if (type == VerticalEnum.up) {
                begin = const Offset(0, 1);
              }

              return SlideTransition(
                position: Tween(begin: begin, end: end).animate(
                    CurvedAnimation(parent: from, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}
