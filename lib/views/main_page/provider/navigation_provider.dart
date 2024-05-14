import 'package:dreampage/views/bookshelf/bookshelf.dart';
import 'package:dreampage/views/home/home_page.dart';
import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  final List<BottomNavigationBarItem> bottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icons/btm_nav_icon_1.png',
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icons/btm_nav_icon_2.png',
        width: 30,
        height: 30,
      ),
      label: '',
      activeIcon: Image.asset(
        'assets/icons/btm_nav_icon_2.png',
        width: 30,
        height: 30,
        color: Colors.amber,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icons/btm_nav_icon_3.png',
        width: 30,
        height: 30,
      ),
      label: '',
      activeIcon: Image.asset(
        'assets/icons/btm_nav_icon_3.png',
        width: 30,
        height: 30,
        color: Colors.amber,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icons/btm_nav_icon_4.png',
        width: 30,
        height: 30,
      ),
      backgroundColor: Colors.red,
      label: '',
      activeIcon: Image.asset(
        'assets/icons/btm_nav_icon_4.png',
        width: 30,
        height: 30,
        color: Colors.amber,
      ),
    ),
  ];

  final List<Widget> pages = [
    const HomePageWrapper(),
    const BookshelfPageWrapper(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: Text('3'),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.purple,
      child: Text('4'),
    ),
  ];

  int currentIndex = 0;
  final PageController pageController = PageController();

  void changePage(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void onItemTapped(int index) {
    currentIndex = index;

    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );

    notifyListeners();
  }
}
