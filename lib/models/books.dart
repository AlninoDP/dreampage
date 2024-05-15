class Books {
  final int id;
  final String title;
  final String author;
  final String coverImgSrc;
  final String bookImgSrc;
  final String synopsis;
  final bool isFavorite;
  final ReadingStatus status;

  Books({
    required this.id,
    required this.title,
    required this.author,
    required this.coverImgSrc,
    required this.bookImgSrc,
    required this.synopsis,
    this.isFavorite = false,
    this.status = ReadingStatus.unread,
  });
}

enum ReadingStatus {
  read,
  unread,
}
