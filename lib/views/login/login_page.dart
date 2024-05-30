import 'package:dreampage/views/login/providers/login_page_provider.dart';
import 'package:dreampage/views/login/sign_in/sign_in_page.dart';
import 'package:dreampage/views/login/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPageWrapper extends StatelessWidget {
  const LoginPageWrapper({
    super.key,
    required this.initialPage,
  });
  final int initialPage;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginPageProvider(initialPage: initialPage),
      child: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Consumer<LoginPageProvider>(
          builder: (context, provider, child) {
            return PageView(
              controller: provider.pageController,
              onPageChanged: (index) => provider.navigateToPage(index),
              children: const [
                SignInPage(),
                SignUpPage(),
              ],
            );
          },
        ),
      ),
    );
  }
}
