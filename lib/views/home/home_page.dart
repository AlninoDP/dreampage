import 'package:dreampage/components/app_appbar.dart';
import 'package:dreampage/views/home/providers/home_page_provider.dart';
import 'package:dreampage/views/home/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageWrapper extends StatelessWidget {
  const HomePageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageProvider(),
      child: const HomePage(),
    );
  }
}

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
            const Center(
              child: Text(
                'Welcome Back, User',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(height: 15),
            const CustomSearchBar(hintText: 'Search'),
            const SizedBox(height: 30),
            Consumer<HomePageProvider>(
              builder: (context, provider, _) {
                return Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Colors.white),
                      child: Column(
                        children: [
                          const Text('BASED ON YOUR LAST READ'),
                        ],
                      ),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
