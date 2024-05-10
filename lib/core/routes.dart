import 'package:dreampage/views/landing_page/landing_page.dart';
import 'package:dreampage/views/login/sign_in/sign_in_page.dart';
import 'package:dreampage/views/login/sign_up/sign_up_page.dart';
import 'package:dreampage/views/splash_screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

final appRoutes = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingPage(),
    ),
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/sign_in',
      builder: (context, state) => const SignInPageProvider(),
    ),
    GoRoute(
      path: '/sign_up',
      builder: (context, state) => const SignUpPageProvider(),
    )
  ],
);
