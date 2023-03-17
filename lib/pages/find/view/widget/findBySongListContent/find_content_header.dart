import 'package:flutter/material.dart';
import 'package:flutter_music/components/abstracts/header_text_abstract.dart';
import 'package:flutter_music/components/calciteDivide/calcite_divide.dart';
import 'package:flutter_music/config/global_constant.dart';

class FindContentHeader extends StatelessWidget {
  const FindContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          if (index == 0) {
            return const CalciteDivide(
              useAnimation: true,
              text: 'RECOMMENDED SONG LIST',
              fontSize: 12,
              useText: true,
              align: AlignEnum.left,
              height: 18,
              width: 220,
            );
          } else if (index == 1) {
            return const Text(
              '推荐歌单',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: globaSourceHanSansCNBold,
                  decoration: TextDecoration.none),
            );
          }
        },
        childCount: 2,
      )),
    );
  }
}
