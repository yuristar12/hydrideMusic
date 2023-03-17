import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/components/custom_material_app.dart';
import 'package:flutter_music/model/home_state_model.dart';
import 'package:flutter_music/pages/find/model/find_state_model.dart';
import 'package:flutter_music/pages/home/home_page.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return HomeStateModel();
        }),
        ChangeNotifierProvider(create: (context) {
          return FindStateModel();
        })
      ],
      builder: (context, child) {
        return CustomMaterilApp(
            title: 'flutterMusic',
            home: child,
            builder: (BuildContext context, Widget? child) {
              return const HomePage();
            });
      },
    );
  }
}
