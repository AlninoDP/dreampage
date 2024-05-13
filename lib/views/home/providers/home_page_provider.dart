import 'package:carousel_slider/carousel_controller.dart';
import 'package:dreampage/data/repository/books_repository_mock.dart';
import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  final BooksRepositoryMock booksRepositoryMock = BooksRepositoryMock();
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  void changeCarouselImage(int index) {
    currentIndex = index;
    notifyListeners();
  }

  List<String> get carouselImageList =>
      booksRepositoryMock.books.map((book) => book.coverImgSrc).toList();
}
