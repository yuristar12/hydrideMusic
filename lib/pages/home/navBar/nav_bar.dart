import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';
import 'package:flutter_music/model/home_state_model.dart';
import 'package:flutter_music/pages/home/navBar/nav_bar_left.dart';
import 'package:flutter_music/pages/home/navBar/nav_bar_menu.dart';
import 'package:provider/provider.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> buildNavBayBody(value) {
      if (value) {
        return const [
          NavBarLeft(),
          NavBarMenu(),
          SizedBox(
            width: 300,
          )
        ];
      } else {
        return const [
          NavBarLeft(),
          SizedBox(
            width: 300,
          )
        ];
      }
    }

    return Selector<HomeStateModel, bool>(
      builder: (context, value, child) {
        return Container(
          decoration: const BoxDecoration(color: globaBackGroundColor),
          height: globalNavBarHeight,
          child: WindowTitleBarBox(
            child: MoveWindow(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // logo
                  children: buildNavBayBody(value)
                  // menu
                  ),
            ),
          ),
        );
      },
      selector: (p0, p1) => p1.showMenu,
      shouldRebuild: (previous, next) => previous != next,
    );
  }
}
