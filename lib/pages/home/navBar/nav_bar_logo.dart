import 'package:flutter/material.dart';
import 'package:flutter_music/config/global_constant.dart';

import '../home_content.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () {
            Navigator.of(kHomeBodyScaffoldKey.currentContext!)
                .popUntil((route) => route.isFirst);
          },
          child: const SizedBox(
            child: Text(
              globalProjectName,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
