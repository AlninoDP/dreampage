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
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icons/btm_nav_icon_3.png',
        width: 30,
        height: 30,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/icons/btm_nav_icon_4.png',
        width: 30,
        height: 30,
      ),
      label: '',
    ),
  ];

  final List<Widget> pages = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.purple,
    ),
  ];
}
