import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/components/calciteSkeleton/calcite_skeleton.dart';

class SongListPageContentSkeleton extends StatelessWidget {
  const SongListPageContentSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const CalciteSkeleton(
      height: 600,
      percentageWidth: 1,
    );
  }
}
