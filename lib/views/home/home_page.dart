import 'package:dreampage/components/app_appbar.dart';
import 'package:dreampage/views/home/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101624),
      appBar: const AppAppBar(textTitle: 'D R E A M P A G E'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                // TODO: DELETE THIS CONTAINER
                ),
            const Center(
              child: Text(
                'Welcome Back, User',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(height: 15),
            const CustomSearchBar(
              hintText: 'Search',
            )
          ],
        ),
      ),
    );
  }
}
