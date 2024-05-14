import 'package:dreampage/models/books.dart';

class BooksRepositoryMock {
  // List of Recommended Books
  final List<Books> recBooks = [
    Books(
      id: 1,
      title: 'Dopamine Detox',
      author: 'Thibaut Meurisse',
      coverImgSrc: 'assets/images/books/dopamine_detox.png',
    ),
    Books(
      id: 2,
      title: 'Jika Kita Tak Pernah Jadi Apa Apa',
      author: 'Alvi Syahrin',
      coverImgSrc: 'assets/images/books/jika_kita_tak_pernah.png',
    ),
    Books(
      id: 3,
      title: 'The Mountain Is You',
      author: 'Brianna West',
      coverImgSrc: 'assets/images/books/the_mountain_is_you.png',
    ),
  ];

  // Full List of Books
  final List<Books> books = [
    Books(
      id: 1,
      title: 'Dopamine Detox',
      author: 'Thibaut Meurisse',
      coverImgSrc: 'assets/images/books/dopamine_detox.png',
      isFavorite: true,
      status: ReadingStatus.read,
    ),
    Books(
      id: 2,
      title: 'Jika Kita Tak Pernah Jadi Apa Apa',
      author: 'Alvi Syahrin',
      coverImgSrc: 'assets/images/books/jika_kita_tak_pernah.png',
      isFavorite: true,
      status: ReadingStatus.read,
    ),
    Books(
      id: 3,
      title: 'The Mountain Is You',
      author: 'Brianna West',
      coverImgSrc: 'assets/images/books/the_mountain_is_you.png',
      isFavorite: true,
      status: ReadingStatus.read,
    ),
    Books(
      id: 4,
      title: 'The Things You Can See Only When You Slow Down',
      author: 'Haemin Sunim',
      coverImgSrc: 'assets/images/books/the_things_you_can_see.png',
      isFavorite: true,
    ),
    Books(
      id: 5,
      title: 'Every Word You Cannot Say',
      author: 'Lain S. Thomas',
      coverImgSrc: 'assets/images/books/every_word_you_cannot_say.png',
      isFavorite: true,
    ),
    Books(
      id: 6,
      title: 'Things Left Behind',
      author: 'Kim Sae Byoul | Jeon Ae Won',
      coverImgSrc: 'assets/images/books/things_left_behind.png',
      isFavorite: true,
    ),
  ];

  Future<List<Books>> fetchBooks() {
    try {
      return Future.delayed(const Duration(milliseconds: 500), () => recBooks);
    } catch (e) {
      return Future.value([]);
    }
  }
}
