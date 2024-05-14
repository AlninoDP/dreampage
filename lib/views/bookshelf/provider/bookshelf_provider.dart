import 'package:dreampage/data/repository/books_repository_mock.dart';
import 'package:dreampage/models/books.dart';
import 'package:flutter/material.dart';

class BookshelfProvider extends ChangeNotifier {
  BookshelfProvider() {
    displayedList = books;
  }
  final BooksRepositoryMock repositoryMock = BooksRepositoryMock();
  List<Books> displayedList = [];
  String selectedButton = 'All';

  List<Books> get books => repositoryMock.books;

  List<Books> get readedBooks => repositoryMock.books
      .where((book) => book.status == ReadingStatus.read)
      .toList();

  List<Books> get unreadedBooks => repositoryMock.books
      .where((book) => book.status == ReadingStatus.unread)
      .toList();

  void showAllBooks() {
    displayedList = books;
    selectedButton = 'All';
    notifyListeners();
  }

  void showReadedBooks() {
    displayedList = readedBooks;
    selectedButton = 'Read';
    notifyListeners();
  }

  void showUnreadedBooks() {
    displayedList = unreadedBooks;
    selectedButton = 'Unread';
    notifyListeners();
  }
}
