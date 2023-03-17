import 'package:flutter/widgets.dart';
import 'package:flutter_music/components/calciteSkeleton/calcite_skeleton.dart';

class SongListPageHeaderSkeleton extends StatelessWidget {
  const SongListPageHeaderSkeleton({super.key});

  // 图片
  Widget buildSongListImgSkeleton() {
    return const SizedBox(
      width: 180,
      height: 180,
      child: CalciteSkeleton(
        height: 180,
        percentageWidth: 1,
      ),
    );
  }

  // 基础信息
  Widget buildSongListInfoSkeleton() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CalciteSkeleton(width: 150, height: 30),
              Column(
                children: const [
                  CalciteSkeleton(width: 150, height: 24),
                  SizedBox(
                    height: 8,
                  ),
                  CalciteSkeleton(width: 150, height: 24),
                ],
              )
            ],
          ),
          Column(
            children: const [
              CalciteSkeleton(
                height: 20,
                width: 120,
              ),
              SizedBox(
                height: 4,
              ),
              CalciteSkeleton(
                height: 10,
                width: 120,
              ),
            ],
          ),
          const CalciteSkeleton(
            height: 30,
            percentageWidth: 0.65,
          )
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSongListImgSkeleton(),

        const SizedBox(
          width: 20,
        ),
        // 歌单基础信息
        Flexible(
          fit: FlexFit.loose,
          child: SizedBox(height: 180, child: buildSongListInfoSkeleton()),
        )
      ],
    );
  }
}
