import 'package:flutter/material.dart';
import 'package:flutter_music/components/custom_material_app.dart';
import 'package:flutter_music/config/base/base_change_notifier.dart';
import 'package:flutter_music/config/base/provider_stateful_widget.dart';
import 'package:flutter_music/model/home_state_model.dart';
import 'package:flutter_music/model/meun_item_model.dart';
import 'package:flutter_music/pages/find/find_page.dart';
import 'package:flutter_music/pages/home/model/home_content_state_model.dart';
import 'package:flutter_music/pages/person/person_page.dart';
import 'package:provider/provider.dart';

final GlobalKey<ScaffoldState> kHomeBodyScaffoldKey =
    GlobalKey(debugLabel: 'home-body-Scaffold-key');

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return _HomeContentBody();
  }
}

class _HomeContentBody extends ProviderStatefulWidget {
  @override
  ProviderState<ProviderStatefulWidget, BaseChageNotifier> createState() {
    return _HomeContentBodyState();
  }
}

class _HomeContentBodyState
    extends ProviderState<_HomeContentBody, HomeContentStateModel> {
  late final PageController _pageController;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  Widget _buildChildPage(BuildContext context, MenuItemName menuName) {
    if (menuName == MenuItemName.find) {
      return const FindPage();
    } else if (menuName == MenuItemName.personal) {
      return const PersonPage();
    }
    return const Text('暂无搭建');
  }

  @override
  Widget buildProviderChid(BuildContext context, Widget? reuseChild) {
    return Selector<HomeStateModel, MenuItemName>(
      selector: (p0, p1) {
        return p1.selectMenuName;
      },
      shouldRebuild: (pre, next) {
        return pre != next;
      },
      builder: (context, value, child) {
        return CustomMaterilApp(
          home: Scaffold(
              key: kHomeBodyScaffoldKey, body: _buildChildPage(context, value)),
        );
      },
    );
  }
}
