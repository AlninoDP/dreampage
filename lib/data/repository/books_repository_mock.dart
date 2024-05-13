import 'package:dreampage/models/books.dart';

class BooksRepositoryMock {
  final List<Books> books = [
    Books(
      title: 'Dopamine Detox',
      author: 'Thibaut Meurisse',
      coverImgSrc: 'assets/images/books/dopamine_detox.png',
    ),
    Books(
      title: 'Jika Kita Tak Pernah Jadi Apa Apa',
      author: 'Alvi Syahrin',
      coverImgSrc: 'assets/images/books/jika_kita_tak_pernah.png',
    ),
    Books(
      title: 'The Mountain Is You',
      author: 'Brianna West',
      coverImgSrc: 'assets/images/books/the_mountain_is_you.png',
    ),
  ];

  Future<List<Books>> fetchBooks() {
    try {
      return Future.delayed(const Duration(milliseconds: 500), () => books);
    } catch (e) {
      return Future.value([]);
    }
  }
}
