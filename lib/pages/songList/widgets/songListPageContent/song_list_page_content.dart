import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/components/abstracts/header_text_abstract.dart';
import 'package:flutter_music/components/calciteDivide/calcite_divide.dart';

class SongListPageContent extends StatelessWidget {
  const SongListPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CalciteDivide(
          useAnimation: true,
          width: 48,
          height: 16,
          fontSize: 8,
          text: 'PLAYALL',
          align: AlignEnum.right,
          useText: true,
        ),

        //  歌单歌曲
        SingleChildScrollView(
          child: Column(
            children: [],
          ),
        )
      ],
    );
  }
}
