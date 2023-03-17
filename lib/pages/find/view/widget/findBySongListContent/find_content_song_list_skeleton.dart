import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/components/calciteSkeleton/calcite_skeleton.dart';

class FindContentSongListSkeleton extends StatelessWidget {
  const FindContentSongListSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const CalciteSkeleton(
      height: 450,
      percentageWidth: 1,
    );
  }
}
