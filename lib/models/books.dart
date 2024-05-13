class Books {
  final String title;
  final String author;
  final String coverImgSrc;
  final ReadingStatus status;

  Books({
    required this.title,
    required this.author,
    required this.coverImgSrc,
    this.status = ReadingStatus.unread,
  });
}

enum ReadingStatus {
  read,
  unread,
}
