import 'package:carousel_slider/carousel_controller.dart';
import 'package:dreampage/data/repository/books_repository_mock.dart';
import 'package:dreampage/models/books.dart';
import 'package:flutter/material.dart';

class CarouselProvider extends ChangeNotifier {
  final BooksRepositoryMock repositoryMock = BooksRepositoryMock();
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  void changeCarouselImage(int index) {
    currentIndex = index;
    notifyListeners();
  }

  String getCurrentBookTitle() {
    final List<Books> books = repositoryMock.books;
    return books[currentIndex].title;
  }

  String getCurrentBookAuthor() {
    final List<Books> books = repositoryMock.books;
    return books[currentIndex].author;
  }

  List<Widget> get booksSliders {
    final List<Books> books = repositoryMock.books;
    return books
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
}
