import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

enum CalciteOrientation {
  topleft,
  topright,
  bottomleft,
  bottomright,
}

const double calciteWidth = 9;
const double calcitemCenterWidth = 4;
const double lineWidth = 5;
const double lineHeight = 2;

class Calcite extends StatelessWidget {
  const Calcite({super.key, required this.orientation});

  final CalciteOrientation orientation;

  renderCalcite() {
    dynamic calcite;
    switch (orientation) {
      case CalciteOrientation.topleft:
        calcite = SizedBox(
          width: calciteWidth,
          height: calciteWidth,
          child: Stack(
            children: [
              Positioned(
                child: renderCenterCalcite(),
                top: 0,
                left: 0,
              ),
              Positioned(
                top: 1,
                left: calcitemCenterWidth,
                child: renderCenterRowLine(),
              ),
              Positioned(
                top: calcitemCenterWidth,
                left: 1,
                child: renderCenterColumnLine(),
              )
            ],
          ),
        );

        break;

      case CalciteOrientation.topright:
        calcite = SizedBox(
          width: calciteWidth,
          height: calciteWidth,
          child: Stack(
            children: [
              Positioned(
                child: renderCenterCalcite(),
                top: 0,
                right: 0,
              ),
              Positioned(
                top: 1,
                right: calcitemCenterWidth,
                child: renderCenterRowLine(),
              ),
              Positioned(
                top: calcitemCenterWidth,
                right: 1,
                child: renderCenterColumnLine(),
              )
            ],
          ),
        );

        break;

      case CalciteOrientation.bottomleft:
        calcite = SizedBox(
          width: calciteWidth,
          height: calciteWidth,
          child: Stack(
            children: [
              Positioned(
                child: renderCenterCalcite(),
                bottom: 0,
                left: 0,
              ),
              Positioned(
                bottom: 1,
                left: calcitemCenterWidth,
                child: renderCenterRowLine(),
              ),
              Positioned(
                bottom: calcitemCenterWidth,
                left: 1,
                child: renderCenterColumnLine(),
              )
            ],
          ),
        );

        break;

      case CalciteOrientation.bottomright:
        calcite = SizedBox(
          width: calciteWidth,
          height: calciteWidth,
          child: Stack(
            children: [
              Positioned(
                child: renderCenterCalcite(),
                bottom: 0,
                right: 0,
              ),
              Positioned(
                bottom: 1,
                right: calcitemCenterWidth,
                child: renderCenterRowLine(),
              ),
              Positioned(
                bottom: calcitemCenterWidth,
                right: 1,
                child: renderCenterColumnLine(),
              )
            ],
          ),
        );

        break;

      default:
    }

    return calcite;
  }

  renderCenterCalcite() {
    return Container(
        width: calcitemCenterWidth,
        height: calcitemCenterWidth,
        decoration: const BoxDecoration(color: Colors.black));
  }

  renderCenterRowLine() {
    return Container(
        width: lineWidth,
        height: lineHeight,
        decoration: const BoxDecoration(color: Colors.black));
  }

  renderCenterColumnLine() {
    return Container(
        width: lineHeight,
        height: lineWidth,
        decoration: const BoxDecoration(color: Colors.black));
  }

  @override
  Widget build(BuildContext context) {
    return renderCalcite();
  }
}
