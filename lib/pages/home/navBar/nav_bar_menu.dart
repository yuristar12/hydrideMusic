import 'package:flutter/material.dart';
import 'package:flutter_music/components/calciteTabs/calcite_tabs.dart';
import 'package:flutter_music/components/calciteTabs/calcite_tabs_item_model.dart';
import 'package:provider/provider.dart';
import '../../../config/base/base_change_notifier.dart';
import '../../../config/base/provider_stateful_widget.dart';
import '../../../model/home_state_model.dart';

class NavBarMenu extends ProviderStatefulWidget {
  const NavBarMenu({Key? key}) : super(key: key);

  @override
  ProviderState<ProviderStatefulWidget, BaseChageNotifier> createState() {
    return _NavBarMenuBodyState();
  }
}

class _NavBarMenuBodyState extends ProviderState<NavBarMenu, HomeStateModel> {
  HomeStateModel? get homeState {
    if (viewModel == null) {
      return Provider.of<HomeStateModel>(context, listen: false);
    }
    return null;
  }

  @override
  Widget buildProviderChid(BuildContext context, Widget? reuseChild) {
    return Selector<HomeStateModel, HomeStateModel>(
        selector: (content, p1) {
          return p1;
        },
        shouldRebuild: (pre, next) => pre.itemModel != next.itemModel,
        builder: (context, value, child) {
          List<CalciteTabsItemModel> calciteTabsList = [];

          for (var element in value.itemModel) {
            {
              calciteTabsList.add(CalciteTabsItemModel.fromJson(
                  {"text": element.title, "key": element.name}));
            }
          }

          return CalciteTabs(
            tabsWidth: 220,
            calciteTabsList: calciteTabsList,
            onTabs: (CalciteTabsItemModel tabsValue) {
              value.selectMenuName = tabsValue.key;
            },
          );
        });
  }
}
