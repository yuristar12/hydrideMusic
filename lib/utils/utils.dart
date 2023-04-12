String useThumbnailImg(String url, int xSize, int ySize) {
  return '$url?param=${xSize}y$ySize';
}

String useFilterTime(String format, {int timestamp = 1647301866000}) {
  late String filterText;

  switch (format) {
    case 'yyyy-mm-dd':
      DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

      filterText =
          '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}';
      break;
  }

  return filterText;
}

String useSongDuration(int duration) {
  //  小时
  int h = duration ~/ 3600000;
  //  分钟
  int m = duration ~/ 60000;
  //  秒
  int s = (duration % 60000) ~/ 1000;
  String durationString = '';
  String mString = m < 10 ? '0$m' : m.toString();
  String sString = s < 10 ? '0$s' : s.toString();

  if (h <= 0) {
    durationString = '$mString:$sString';
  } else {
    String hString = h < 10 ? '0$h' : h.toString();
    durationString = '$hString:$mString:$sString';
  }

  return durationString;
}

String useSongArtsName(ar) {
  String arts = '';
  ar?.forEach((e) {
    if (arts == '') {
      arts += '${e.name}';
    } else {
      arts += '/${e.name}';
    }
  });

  return arts;
}
