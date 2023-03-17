import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/components/calciteTabs/calcite_tabs_item_model.dart';
import 'package:flutter_music/config/global_constant.dart';

enum CalciteTabsSizeEnum { min, mid, big }

class CalciteTabsItem extends StatelessWidget {
  const CalciteTabsItem({
    super.key,
    required this.itemModel,
    required this.model,
    required this.itemWidth,
    required this.index,
    required this.onTab,
  });

  final CalciteTabsItemModel itemModel;
  final dynamic model;
  final double itemWidth;
  final int index;
  final Function onTab;

  renderTabsItem(BuildContext context) {
    // 字体放大动画
    return AnimatedDefaultTextStyle(
        style: model == index
            ? renderTabsActivityTextStype()
            : renderTabsTextStyle(),
        duration: const Duration(milliseconds: 100),
        child: Text(itemModel.text));
  }

  renderTabsTextStyle() {
    return const TextStyle(
        fontFamily: globaSourceHanSansCNBold,
        fontSize: 14,
        color: Colors.black);
  }

  renderTabsActivityTextStype() {
    return const TextStyle(
        fontFamily: globaSourceHanSansCNBold,
        fontSize: 16,
        color: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => {
              if (index != model) {onTab(index)}
            },
        child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: SizedBox(
                width: itemWidth,
                child: Center(
                  child: renderTabsItem(context),
                ))));
  }
}
