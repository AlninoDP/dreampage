import 'package:dreampage/data/repository/books_repository_mock.dart';
import 'package:dreampage/models/books.dart';
import 'package:flutter/material.dart';

class FavoritePageProvider extends ChangeNotifier {
  final BooksRepositoryMock repositoryMock = BooksRepositoryMock();
  List<Books> get favBooks =>
      repositoryMock.books.where((book) => book.isFavorite == true).toList();
}
