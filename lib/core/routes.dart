import 'package:dreampage/models/books.dart';
import 'package:dreampage/views/about_app/about_app_page.dart';
import 'package:dreampage/views/book_detail/book_detail_page.dart';
import 'package:dreampage/views/landing_page/landing_page.dart';
import 'package:dreampage/views/login/login_page.dart';
import 'package:dreampage/views/main_page/main_page.dart';
import 'package:dreampage/views/splash_screen/splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

final appRoutes = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/',
      name: 'landing',
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionDuration: const Duration(seconds: 2),
        child: const LandingPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeIn).animate(animation),
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/splash',
      name: 'splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login/:initialPage',
      name: 'login',
      builder: (context, state) {
        final initialPage = int.parse(state.pathParameters['initialPage']!);
        return LoginPageWrapper(initialPage: initialPage);
      },
    ),
    GoRoute(
      path: '/main',
      name: 'main',
      builder: (context, state) => const MainPageProvider(),
    ),
    GoRoute(
      path: '/about',
      name: 'about',
      builder: (context, state) => const AboutApp(),
    ),
    GoRoute(
      path: '/detail',
      name: 'detail',
      builder: (context, state) {
        final Books books = state.extra as Books;
        return BookDetailPageWrapper(
          books: books,
        );
      },
    ),
  ],
);
