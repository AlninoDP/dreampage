import 'package:dreampage/components/app_appbar.dart';
import 'package:flutter/material.dart';

class BookshelfPage extends StatelessWidget {
  const BookshelfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: const Color(0xff101624),
        appBar: AppAppBar(textTitle: 'M Y B O O K S H E L F'),
        body: SingleChildScrollView(
          child: Column(
            children: [Text('data')],
          ),
        ),
      ),
    );
  }
}
