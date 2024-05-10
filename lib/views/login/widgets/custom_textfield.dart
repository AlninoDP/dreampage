import 'package:flutter/material.dart';

class CustomTexfield extends StatelessWidget {
  const CustomTexfield({
    super.key,
    required this.hintText,
    required this.obscureText,
    this.suffix,
  });
  final String hintText;
  final bool obscureText;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        style: const TextStyle(
          fontSize: 18,
          color: Color(0xff1B1E28),
        ),
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontStyle: FontStyle.italic),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(18),
          suffix: suffix,
        ),
      ),
    );
  }
}
