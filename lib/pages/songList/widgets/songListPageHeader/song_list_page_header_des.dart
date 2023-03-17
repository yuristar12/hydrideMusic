import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_music/components/calcitePlainButton/calcite_plain_button.dart';
import 'package:flutter_music/config/global_constant.dart';

class SongListPageHeaderDes extends StatefulWidget {
  const SongListPageHeaderDes({super.key});

  @override
  State<SongListPageHeaderDes> createState() => _SongListPageHeaderDesState();
}

class _SongListPageHeaderDesState extends State<SongListPageHeaderDes> {
  bool isOmit = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void setOmit() {
    setState(() {
      isOmit = !isOmit;
    });
  }

  Widget buildFullContent() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            '我发现现在好多人都不喜欢评论，喜欢收藏，所以我觉得收藏也是很重要的，收藏越多的歌曲越说明得到了大家的认可以及喜欢～ 于是就有了这个歌单，收录站内收藏达到10w+的日语神曲，每首都是经典，每首都非常赞，疯狂为这些歌曲打call。 建议:随机播放/单曲循环 封面:无名 持更～ by 鸢尾花 ',
            style: TextStyle(
                fontFamily: globaSourceHanSansCNBold,
                fontSize: 12,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
          CalcitePlainButton(
              text: '收起',
              size: buttonSize.min,
              mode: buttonMode.deep,
              onPressed: () {
                setOmit();
              })
        ],
      ),
    );
  }

  Widget buildOmtContent() {
    return Stack(
      children: [
        const Text(
          '我发现现在好多人都不喜欢评论，喜欢收藏，所以我觉得收藏也是很重要的，收藏越多的歌曲越说明得到了大家的认可以及喜欢～ 于是就有了这个歌单，收录站内收藏达到10w+的日语神曲，每首都是经典，每首都非常赞，疯狂为这些歌曲打call。 建议:随机播放/单曲循环 封面:无名 持更～ by 鸢尾花 ',
          maxLines: 1,
          style: TextStyle(
              fontFamily: globaSourceHanSansCNBold,
              fontSize: 12,
              color: Colors.black,
              decoration: TextDecoration.none),
          overflow: TextOverflow.ellipsis,
        ),
        Positioned(
            top: 0,
            right: 0,
            child: CalcitePlainButton(
                text: '查看详情',
                mode: buttonMode.deep,
                size: buttonSize.min,
                onPressed: () {
                  setOmit();
                }))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return isOmit
        ? buildOmtContent()
        : Container(
            height: 300,
            child: buildFullContent(),
          );
  }
}
