import 'package:dreampage/components/app_appbar.dart';
import 'package:dreampage/views/bookshelf/provider/bookshelf_provider.dart';
import 'package:dreampage/views/bookshelf/widgets/bookshelf_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class BookshelfPageWrapper extends StatelessWidget {
  const BookshelfPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookshelfProvider(),
      child: const BookshelfPage(),
    );
  }
}

class BookshelfPage extends StatelessWidget {
  const BookshelfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
          backgroundColor: const Color(0xff101624),
          appBar: const AppAppBar(textTitle: 'M Y  B O O K  S H E L F'),
          body: Consumer<BookshelfProvider>(
            builder: (context, provider, _) {
              final books = provider.books;
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
                            text: TextSpan(
                              text: 'You currently have ',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: books.length.toString(),
                                  style: const TextStyle(
                                      color: Color(0xffA28D4F), fontSize: 48),
                                ),
                                const TextSpan(text: ' books in your shelf')
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BookshelfButton(
                              btnText1: 'All',
                              btnText2: provider.books.length.toString(),
                              onTap: provider.showAllBooks,
                              bgColor: (provider.selectedButton == 'All')
                                  ? const Color(0xff121921)
                                  : const Color(0xffD9D9D9),
                              txtColor: (provider.selectedButton == 'All')
                                  ? const Color(0xffD9D9D9)
                                  : const Color(0xff121921),
                            ),
                            BookshelfButton(
                              btnText1: 'Read',
                              btnText2: provider.readedBooks.length.toString(),
                              onTap: provider.showReadedBooks,
                              bgColor: (provider.selectedButton == 'Read')
                                  ? const Color(0xff121921)
                                  : const Color(0xffD9D9D9),
                              txtColor: (provider.selectedButton == 'Read')
                                  ? const Color(0xffD9D9D9)
                                  : const Color(0xff121921),
                            ),
                            BookshelfButton(
                              btnText1: 'Unread',
                              btnText2:
                                  provider.unreadedBooks.length.toString(),
                              onTap: provider.showUnreadedBooks,
                              bgColor: (provider.selectedButton == 'Unread')
                                  ? const Color(0xff121921)
                                  : const Color(0xffD9D9D9),
                              txtColor: (provider.selectedButton == 'Unread')
                                  ? const Color(0xffD9D9D9)
                                  : const Color(0xff121921),
                            )
                          ],
                        ),

                        const SizedBox(height: 20),

                        // Book List
                        ListView.builder(
                          itemCount: provider.displayedList.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final item = provider.displayedList[index];
                            return Container(
                              width: double.infinity,
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xffE2E2E2),
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 88,
                                    height: 133,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(item.bookImgSrc),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const VerticalDivider(),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.title,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          item.author,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              context.pushNamed(
                                                'detail',
                                                extra: item,
                                              );
                                            },
                                            icon: const Row(
                                              children: [
                                                Icon(
                                                  Icons.menu_book_outlined,
                                                ),
                                                SizedBox(width: 5),
                                                Text('Read Now')
                                              ],
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
