import 'package:flutter/material.dart';
import 'package:flutter_music/components/calciteButton/calcite_button.dart';
import 'package:flutter_music/pages/home/navBar/nav_bar_logo.dart';

class NavBarLeft extends StatelessWidget {
  const NavBarLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const NavBarLogo(),
        const SizedBox(
          width: 32,
        ),
        CalciteButton(
          onClick: () => {},
          text: 'search',
          size: CalciteButtonSize.mid,
        )
      ],
    );
  }
}
