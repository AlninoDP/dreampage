import 'package:dreampage/components/app_background.dart';
import 'package:dreampage/views/login/providers/login_page_provider.dart';
import 'package:dreampage/views/login/widgets/custom_button.dart';
import 'package:dreampage/views/login/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  'Sign up now',
                  style: TextStyle(fontSize: 34, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please fill the details and create account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff7D848D),
                  ),
                ),
                const SizedBox(height: 40),

                // Username Textfield
                const CustomTexfield(hintText: 'Username', obscureText: false),

                const SizedBox(height: 25),

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

                const SizedBox(height: 40),

                // button sign up

                CustomButton(
                  text: 'Sign Up',
                  onTap: () {
                    //TODO:Implement ontap function
                  },
                ),

                const SizedBox(height: 40),

                // Sign in Text
                RichText(
                    text: TextSpan(
                  text: 'Already have an account ? ',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign in',
                      style: const TextStyle(
                        color: Color(0xff0D6EFD),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Provider.of<LoginPageProvider>(
                              context,
                              listen: false,
                            ).navigateToPage(0),
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
