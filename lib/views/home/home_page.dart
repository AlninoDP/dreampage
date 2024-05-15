import 'package:carousel_slider/carousel_slider.dart';
import 'package:dreampage/components/app_appbar.dart';
import 'package:dreampage/utils/scale_size.dart';
import 'package:dreampage/views/home/providers/carousel_provider.dart';
import 'package:dreampage/views/home/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageWrapper extends StatelessWidget {
  const HomePageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CarouselProvider(),
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
      appBar: AppAppBar(
        textTitle: 'DreamPage',
        textStyle: GoogleFonts.monteCarlo(fontSize: 30, color: Colors.white),
      ),
      body: Padding(
        padding:
            const EdgeInsets.fromLTRB(8, 8, 8, kBottomNavigationBarHeight - 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Welcome Back, User',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              const SizedBox(height: 15),

              // Search Bar
              const CustomSearchBar(hintText: 'Search'),

              const SizedBox(height: 30),

              //
              Consumer<CarouselProvider>(
                builder: (context, provider, _) {
                  return Stack(
                    children: [
                      // white box
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                            color: Colors.white),
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 30),
                          const Text('BASED ON YOUR LAST READ'),
                          const SizedBox(height: 12),
                          Column(
                            children: [
                              Text(
                                provider.getCurrentBookTitle(),
                                textAlign: TextAlign.center,
                                textScaler: TextScaler.linear(
                                    ScaleSize.textScaleFactor(context)),
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                provider.getCurrentBookAuthor(),
                                textScaler: TextScaler.linear(
                                    ScaleSize.textScaleFactor(context)),
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),

                          // Carousel Image
                          CarouselSlider(
                            items: provider.booksSliders,
                            carouselController: provider.carouselController,
                            options: CarouselOptions(
                              autoPlay: true,
                              aspectRatio: 1,
                              enlargeCenterPage: true,
                              viewportFraction: 0.6,
                              enlargeStrategy: CenterPageEnlargeStrategy.scale,
                              autoPlayAnimationDuration:
                                  const Duration(seconds: 4),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              onPageChanged: (index, reason) =>
                                  provider.changeCarouselImage(index),
                            ),
                          ),
                        ],
                      ),

                      Positioned(
                        bottom: 30,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                provider.goToBookDetail(context);
                              },
                              child: const Text(
                                'View Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                  decorationThickness: 1,
                                ),
                              ),
                            ),
                            const SizedBox(width: 60),
                            IconButton(
                                onPressed: () {
                                  // TODO: IMPLEMENT ONTAP FUNCTION FOR BOOKMARK
                                },
                                icon:
                                    (provider.getCurrentBookFavStatus() == true)
                                        ? const Icon(
                                            Icons.bookmark_outline_outlined,
                                            color: Colors.white,
                                            size: 25,
                                          )
                                        : const Icon(
                                            Icons.bookmark,
                                            color: Colors.white,
                                            size: 25,
                                          ))
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
      ),
    );
  }
}
