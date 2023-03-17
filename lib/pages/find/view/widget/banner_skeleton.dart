import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../components/calciteSkeleton/calcite_skeleton.dart';

class BannerSkeleton extends StatelessWidget {
  const BannerSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const CalciteSkeleton(
      percentageWidth: 1,
      height: 300,
      duration: Duration(seconds: 2),
    );
    ;
  }
}
