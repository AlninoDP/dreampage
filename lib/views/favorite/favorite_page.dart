import 'package:dreampage/components/app_appbar.dart';
import 'package:dreampage/utils/scale_size.dart';
import 'package:dreampage/views/favorite/provider/favorite_page_provider.dart';
import 'package:dreampage/views/favorite/widgets/grid_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePageWrapper extends StatelessWidget {
  const FavoritePageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoritePageProvider(),
      child: const FavoritePage(),
    );
  }
}

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: const Color(0xff101624),
        appBar: const AppAppBar(textTitle: 'M Y  F A V O R I T E  B O O K'),
        body: Consumer<FavoritePageProvider>(
          builder: (context, provider, _) {
            final favBooks = provider.favBooks;
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                    5, 8, 5, kBottomNavigationBarHeight - 50),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Header
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 20, 10),
                        child: RichText(
                          textScaler: TextScaler.linear(
                              ScaleSize.textScaleFactor(context)),
                          text: TextSpan(
                            text: 'You currently have ',
                            style: const TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: favBooks.length.toString(),
                                style: const TextStyle(
                                    color: Color(0xffA28D4F), fontSize: 48),
                              ),
                              const TextSpan(text: ' books in your favorite')
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Books Menu

                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: provider.favBooks.length,
                        itemBuilder: (context, index) {
                          final item = provider.favBooks[index];
                          return GridMenu(
                            imageSrc: item.coverImgSrc,
                            bookTitle: item.title,
                            bookAuthor: item.author,
                            onTap: () {
                              // TODO: IMPLEMENT ONTAP FUNCTION
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
