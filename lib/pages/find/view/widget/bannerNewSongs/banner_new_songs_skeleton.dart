import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_music/components/calciteSkeleton/calcite_skeleton.dart';

class BannerNewSongsSkeleton extends StatelessWidget {
  const BannerNewSongsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(
      heightFactor: 1,
      child: CalciteSkeleton(
        height: 120,
        percentageWidth: 1,
      ),
    );
  }
}
