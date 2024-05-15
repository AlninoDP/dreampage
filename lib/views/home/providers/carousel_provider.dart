import 'package:carousel_slider/carousel_controller.dart';
import 'package:dreampage/data/repository/books_repository_mock.dart';
import 'package:dreampage/models/books.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CarouselProvider extends ChangeNotifier {
  final BooksRepositoryMock repositoryMock = BooksRepositoryMock();
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  void changeCarouselImage(int index) {
    currentIndex = index;
    notifyListeners();
  }

  bool getCurrentBookFavStatus() {
    final List<Books> recBooks = repositoryMock.recBooks;
    return recBooks[currentIndex].isFavorite;
  }

  String getCurrentBookTitle() {
    final List<Books> recBooks = repositoryMock.recBooks;
    return recBooks[currentIndex].title;
  }

  String getCurrentBookAuthor() {
    final List<Books> recBooks = repositoryMock.recBooks;
    return recBooks[currentIndex].author;
  }

  List<Widget> get booksSliders {
    final List<Books> recBooks = repositoryMock.recBooks;
    return recBooks
        .map((book) => SizedBox(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    // Book cover image
                    Image.asset(
                      book.coverImgSrc,
                      fit: BoxFit.contain,
                      height: 300,
                      width: 400,
                    ),
                  ],
                ),
              ),
            ))
        .toList();
  }

  void goToBookDetail(BuildContext context) {
    final books = repositoryMock.recBooks;
    final selectedBook = books[currentIndex];
    context.pushNamed('detail', extra: selectedBook);
  }
}
