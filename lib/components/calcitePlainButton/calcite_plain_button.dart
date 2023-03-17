import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/config/global_constant.dart';

enum buttonMode { plain, deep }

enum buttonSize {
  min,
  mid,
  big,
}

class CalcitePlainButton extends StatelessWidget {
  CalcitePlainButton(
      {super.key,
      this.mode = buttonMode.plain,
      this.size = buttonSize.mid,
      this.minWidth = 0,
      this.disabled = false,
      required this.text,
      required this.onPressed});
  //  按钮的模式
  buttonMode mode;
  //
  buttonSize size;

  String text;

  bool disabled;

  double minWidth;

  void Function() onPressed;

  double buildButtonHeight() {
    switch (size) {
      case buttonSize.min:
        return 18;
      case buttonSize.mid:
        return 22;
      case buttonSize.big:
        return 28;
    }
  }

  double buildButtonTextSize() {
    switch (size) {
      case buttonSize.min:
        return 12;
      case buttonSize.mid:
        return 14;
      case buttonSize.big:
        return 16;
    }
  }

  EdgeInsets buildButtonPadding() {
    double _size;
    switch (size) {
      case buttonSize.min:
        _size = 14;
        break;
      case buttonSize.mid:
        _size = 20;
        break;
      case buttonSize.big:
        _size = 26;
        break;
    }
    return EdgeInsets.only(
        left: _size, right: _size, top: _size / 4, bottom: _size / 4);
    ;
  }

  buildModePlainButton() {
    return MaterialButton(
      mouseCursor:
          disabled ? SystemMouseCursors.forbidden : SystemMouseCursors.click,
      onPressed: disabled ? null : onPressed,
      minWidth: minWidth,
      padding: buildButtonPadding(),
      shape: Border.all(width: 1, color: Colors.black),
      height: buildButtonHeight(),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: globaSourceHanSansCNBold,
          color: Colors.black,
          fontSize: buildButtonTextSize(),
        ),
      ),
    );
  }

  buildModeDeepButton() {
    return MaterialButton(
      mouseCursor:
          disabled ? SystemMouseCursors.forbidden : SystemMouseCursors.click,
      onPressed: disabled ? null : onPressed,
      padding: buildButtonPadding(),
      height: buildButtonHeight(),
      color: Colors.black,
      minWidth: minWidth,
      elevation: 0,
      hoverElevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      disabledColor: Colors.black,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: globaSourceHanSansCNBold,
          color: Colors.white,
          fontSize: buildButtonTextSize(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return mode == buttonMode.deep
        ? buildModeDeepButton()
        : buildModePlainButton();
  }
}
