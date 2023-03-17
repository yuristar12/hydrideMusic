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
