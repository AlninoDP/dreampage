import 'package:dreampage/components/app_background.dart';
import 'package:dreampage/views/login/providers/login_page_provider.dart';
import 'package:dreampage/views/login/widgets/custom_button.dart';
import 'package:dreampage/views/login/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: AppBackground(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 100),
                const Text(
                  'Sign in now',
                  style: TextStyle(fontSize: 34, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please sign in with your account',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff7D848D),
                  ),
                ),
                const SizedBox(height: 40),

                // Email Textfield
                const CustomTexfield(hintText: 'Email', obscureText: false),

                const SizedBox(height: 25),

                // Password Textfield
                Consumer<LoginPageProvider>(
                  builder: (context, provider, _) {
                    return CustomTexfield(
                      hintText: 'Password',
                      obscureText: provider.obscureText,
                      suffix: GestureDetector(
                        onTap: () => provider.changePasswordVisibility(),
                        child: (provider.obscureText == true)
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 5),

                // Forgot Password text
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Forgot password?',
                        style: const TextStyle(
                          color: Color(0xff0D6EFD),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // TODO: Implement ontap fucntion
                          },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                // button sign up

                CustomButton(
                  text: 'Sign In',
                  onTap: () {
                    //TODO:Implement proper login ontap function
                    context.push('/main');
                  },
                ),

                const SizedBox(height: 40),

                // Sign in Text
                RichText(
                    text: TextSpan(
                  text: 'Dont have an account ? ',
                  style: const TextStyle(fontSize: 16),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: const TextStyle(
                        color: Color(0xff0D6EFD),
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Provider.of<LoginPageProvider>(
                              context,
                              listen: false,
                            ).navigateToPage(1),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
