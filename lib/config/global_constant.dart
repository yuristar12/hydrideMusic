//  全局navbar 导航栏的高度
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/utils/utils.dart';

const double globalNavBarHeight = 70;

// 全局背景颜色 暂定
const Color globaBackGroundColor = Colors.white;

// 首页的padding大小
const double globalHomePadding = 40;

//项目名称
const String globalProjectName = 'Hydride';

// 特殊字体名称
const String globaGeometosFont = 'Geometos';
// 常用于中文字体
const String globaSourceHanSansCNBold = 'SourceHanSansCNBold';

//  歌单/专辑 歌曲的样式
const TextStyle globaSongTextStyle = TextStyle(
    fontSize: 14,
    color: Colors.black87,
    fontFamily: globaSourceHanSansCNBold,
    decoration: TextDecoration.none);

// 预览状态的歌曲名称
Text buildPreviewSongName(songName) {
  return Text(
    songName,
    style: globaSongTextStyle,
  );
}

// 预览状态下的歌曲歌手名字
Text buildPreviewArtsName(ar, {TextStyle textStyle = globaSongTextStyle}) {
  return Text(
    useSongArtsName(ar),
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: textStyle,
  );
}

//  播放控制器的宽度与高度
const Map<String, double> songControllerStyle = {
  'width': 700,
  'height': 70,
  'hiddenHeight': -80,
  'showHeight': 40,
  'progressHeight': 4,
  'contentHeight': 40,
};

enum PlayTypeEnum {
  noPlay,
  toPlay,
  toPause,
}
