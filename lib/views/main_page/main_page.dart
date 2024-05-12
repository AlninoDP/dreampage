import 'package:dreampage/views/main_page/provider/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPageProvider extends StatelessWidget {
  const MainPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Consumer<NavigationProvider>(builder: (context, provider, _) {
          return PageView(
            children: provider.pages,
          );
        }),
        bottomNavigationBar: Consumer<NavigationProvider>(
          builder: (context, provider, _) {
            return ClipPath(
              clipper: _BottomAppBarClipper(),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                backgroundColor: const Color(0xff121921).withOpacity(0.75),
                items: provider.bottomNavigationBarItems,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BottomAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height); // start from bottom-left corner
    path.lineTo(size.width, size.height); // line to bottom-right corner
    path.lineTo(
        size.width, 30); // line to the top-right of the bottom right curve
    path.quadraticBezierTo(
        size.width, 0, size.width - 60, 0); // create top right curve
    path.lineTo(60, 0); // line to the top left of the top right curve
    path.quadraticBezierTo(0, 0, 0, 30); // create top left curve
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
