import 'package:flutter/material.dart';

class LoginPageProvider extends ChangeNotifier {
  LoginPageProvider({required this.initialPage})
      : pageController = PageController(initialPage: initialPage);

  final PageController pageController;
  bool obscureText = true;
  int initialPage;

  void changePasswordVisibility() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void navigateToPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    notifyListeners();
  }
}
