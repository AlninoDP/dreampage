import 'package:dreampage/models/books.dart';
import 'package:dreampage/views/book_detail/widgets/read_button.dart';
import 'package:flutter/material.dart';

const testTxt = '''
Apakah Anda terus menunda-nunda?
Apakah Anda merasa gelisah dan tidak dapat fokus pada pekerjaan Anda?
Apakah Anda mengalami kesulitan untuk bersemangat tentang tujuan utama? 
Jika demikian, Anda mungkin memerlukan detoksifikasi dopamin.
''';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({
    super.key,
    required this.books,
  });
  final Books books;

  @override
  Widget build(BuildContext context) {
    final coverImgHeight = MediaQuery.of(context).size.height * 0.6;
    return Scaffold(
      body: Stack(
        children: [
          // Cover Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(books.coverImgSrc),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Synopsis Content
          Positioned(
            top: coverImgHeight - 110,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      books.title,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      books.author,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xff7D848D),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      'Synopsis',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    // Texy Synopsis
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      padding: const EdgeInsets.all(10),
                      color: Colors.white,
                      child: const SingleChildScrollView(
                        child: Text(
                          testTxt,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff7D848D),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),
                    // Read Button
                    const ReadButton()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}