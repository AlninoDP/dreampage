import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffD9D9D9).withOpacity(0.17),
          borderRadius: BorderRadius.circular(35)),
      child: TextField(
        style: const TextStyle(
          fontSize: 18,
          color: Color(0xff1B1E28),
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 18, color: Colors.white),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.fromLTRB(30, 18, 18, 18),
          suffixIcon: const Icon(
            Icons.search_sharp,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
