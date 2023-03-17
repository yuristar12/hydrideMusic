import 'package:flutter/material.dart';
import 'package:flutter_music/components/calciteTabs/calcite_tabs_bar.dart';
import 'package:flutter_music/components/calciteTabs/calcite_tabs_item.dart';
import 'package:flutter_music/components/calciteTabs/calcite_tabs_item_model.dart';

class CalciteTabs extends StatefulWidget {
  const CalciteTabs(
      {super.key,
      required this.calciteTabsList,
      this.model = 0,
      required this.tabsWidth,
      this.tabsBarWidth = 40,
      this.onTabs});

  final List<CalciteTabsItemModel> calciteTabsList;
  final int? model;
  final double tabsWidth;
  final double tabsBarWidth;
  final Function? onTabs;

  @override
  State<CalciteTabs> createState() => _CalciteTabsState();
}

class _CalciteTabsState extends State<CalciteTabs> {
  late int _model;

  late double tabsItemWidth;

  @override
  void initState() {
    super.initState();
    _model = widget.model!;
    tabsItemWidth = widget.tabsWidth / widget.calciteTabsList.length;
  }

  onTab(index) {
    setState(() {
      _model = index;

      if (widget.onTabs != null) {
        widget.onTabs!(widget.calciteTabsList[index]);
      }
    });
  }

  buildCalcTabsItem() {
    List<Widget> items = [];
    for (var i = 0; i < widget.calciteTabsList.length; i++) {
      items.add(CalciteTabsItem(
        itemModel: widget.calciteTabsList[i],
        model: _model,
        itemWidth: tabsItemWidth,
        index: i,
        onTab: onTab,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: buildCalcTabsItem()),
        CalciteTabsBar(
            calciteTabsBarWidth: widget.tabsBarWidth,
            calciteTabsWidth: widget.tabsWidth,
            calcIteTabsItemWidth: tabsItemWidth,
            calcIteTabsIndex: _model)
      ],
    );
  }
}
