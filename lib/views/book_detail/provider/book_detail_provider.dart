import 'package:dreampage/models/books.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BookDetailProvider extends ChangeNotifier {
  final baseGdriveUrl = 'https://drive.google.com';
  String bookGdriveUrl = '';

// Function to launch the Google Drive link
  void readBook(BuildContext context, Books books) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    switch (books.id) {
      case 1:
        bookGdriveUrl =
            '$baseGdriveUrl/file/d/10DlgZ3btRLzMuvChDTjHXmxWHMDd7kRD/view';
      case 2:
        bookGdriveUrl =
            '$baseGdriveUrl/file/d/1DbmMMvmK6EzyI_Rh4h1AZPgM83awMlc3/view';
      case 3:
        bookGdriveUrl =
            '$baseGdriveUrl/file/d/1xIktZYFbGNoFZXjuEFL53MNxSgQURpIC/view';
      case 4:
        bookGdriveUrl =
            '$baseGdriveUrl/file/d/1SiWxAliZHsY14c6FgEe_cydq4CdvZHDw/view';
      case 5:
        bookGdriveUrl =
            '$baseGdriveUrl/file/d/1WXl3WBuVcXM1JCU7XlXbvqTVac1E4KQ5/view';
      case 6:
        bookGdriveUrl =
            '$baseGdriveUrl/file/d/1q8bB7qzYRKvrSC0AYo4-TjsxouK1t_9o/view';

      default:
        bookGdriveUrl = '';
    }

    try {
      if (await canLaunchUrlString(bookGdriveUrl)) {
        await launchUrlString(bookGdriveUrl);
      } else {
        throw 'Could not launch $bookGdriveUrl';
      }
    } catch (e) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text(
            'Error, book is not available at the moment',
          ),
        ),
      );
    }
  }
}
