import 'package:dreampage/models/books.dart';

class BooksRepositoryMock {
  // List of Recommended Books
  final List<Books> recBooks = [
    Books(
      id: 1,
      title: 'Dopamine Detox',
      author: 'Thibaut Meurisse',
      coverImgSrc: 'assets/images/cover_books/dopamine_cover.png',
      bookImgSrc: 'assets/images/books/dopamine_detox.png',
      synopsis:
          'Apakah Anda terus menunda-nunda? Apakah Anda merasa gelisah dan tidak dapat fokus pada pekerjaan Anda? Apakah Anda mengalami kesulitan untuk bersemangat tentang tujuan utama? Jika demikian, Anda mungkin memerlukan detoksifikasi dopamin. Di dunia sekarang ini di mana gangguan ada di mana-mana, kemampuan untuk fokus menjadi semakin sulit dicapai..',
    ),
    Books(
      id: 2,
      title: 'Jika Kita Tak Pernah Jadi Apa Apa',
      author: 'Alvi Syahrin',
      coverImgSrc: 'assets/images/cover_books/jika_kita_cover.png',
      bookImgSrc: 'assets/images/books/jika_kita_tak_pernah.png',
      synopsis:
          'Jika Kita Tak Pernah Jadi Apa-Apa akan menemanimu selama perjalanan. Buku ini untukmu yang khawatir tentang masa depan. Tenang saja, kau tidak sedang diburu waktu. Bacalah tiap lembarnya dengan penuh kesadaran bahwa hidup adalah tentang sebaik-baiknya berusaha, jatuh lalu bangun lagi, dan tidak berhenti percaya bahwa segala perjuanganmu tidak akan sia-sia.',
    ),
    Books(
      id: 3,
      title: 'The Mountain Is You',
      author: 'Brianna West',
      coverImgSrc: 'assets/images/cover_books/the_mountain_cover.png',
      bookImgSrc: 'assets/images/books/the_mountain_is_you.png',
      synopsis:
          'Buku The Mountain Is You karya Brianna Wiest membahas tentang sabotase diri, yaitu perilaku ketika seseorang secara sadar atau tidak sadar melakukan hal-hal yang menghambatnya untuk mencapai tujuan. Brianna Wiest menjelaskan bahwa sabotase diri adalah masalah yang umum dialami oleh banyak orang, dan dapat disebabkan oleh berbagai faktor, seperti ketakutan, ketidakpercayaan diri, dan trauma masa lalu.',
    ),
  ];

  // Full List of Books
  final List<Books> books = [
    Books(
      id: 1,
      title: 'Dopamine Detox',
      author: 'Thibaut Meurisse',
      coverImgSrc: 'assets/images/cover_books/dopamine_cover.png',
      bookImgSrc: 'assets/images/books/dopamine_detox.png',
      synopsis:
          'Apakah Anda terus menunda-nunda? Apakah Anda merasa gelisah dan tidak dapat fokus pada pekerjaan Anda? Apakah Anda mengalami kesulitan untuk bersemangat tentang tujuan utama? Jika demikian, Anda mungkin memerlukan detoksifikasi dopamin. Di dunia sekarang ini di mana gangguan ada di mana-mana, kemampuan untuk fokus menjadi semakin sulit dicapai..',
      isFavorite: true,
      status: ReadingStatus.read,
    ),
    Books(
      id: 2,
      title: 'Jika Kita Tak Pernah Jadi Apa Apa',
      author: 'Alvi Syahrin',
      coverImgSrc: 'assets/images/cover_books/jika_kita_cover.png',
      bookImgSrc: 'assets/images/books/jika_kita_tak_pernah.png',
      synopsis:
          'Jika Kita Tak Pernah Jadi Apa-Apa akan menemanimu selama perjalanan. Buku ini untukmu yang khawatir tentang masa depan. Tenang saja, kau tidak sedang diburu waktu. Bacalah tiap lembarnya dengan penuh kesadaran bahwa hidup adalah tentang sebaik-baiknya berusaha, jatuh lalu bangun lagi, dan tidak berhenti percaya bahwa segala perjuanganmu tidak akan sia-sia.',
      isFavorite: true,
      status: ReadingStatus.read,
    ),
    Books(
      id: 3,
      title: 'The Mountain Is You',
      author: 'Brianna West',
      coverImgSrc: 'assets/images/cover_books/the_mountain_cover.png',
      bookImgSrc: 'assets/images/books/the_mountain_is_you.png',
      synopsis:
          'Buku The Mountain Is You karya Brianna Wiest membahas tentang sabotase diri, yaitu perilaku ketika seseorang secara sadar atau tidak sadar melakukan hal-hal yang menghambatnya untuk mencapai tujuan. Brianna Wiest menjelaskan bahwa sabotase diri adalah masalah yang umum dialami oleh banyak orang, dan dapat disebabkan oleh berbagai faktor, seperti ketakutan, ketidakpercayaan diri, dan trauma masa lalu.',
      isFavorite: true,
      status: ReadingStatus.read,
    ),
    Books(
      id: 4,
      title: 'The Things You Can See Only When You Slow Down',
      author: 'Haemin Sunim',
      coverImgSrc: 'assets/images/cover_books/the_things_cover.png',
      bookImgSrc: 'assets/images/books/the_things_you_can_see.png',
      synopsis:
          'The Things You Can See Only When You Slow Down ditulis berdasarkan latar belakang pengalaman Haemin Sunim yang relevan dengan pengalaman masyarakat. Sang penulis tidak memberikan tips dan trik secara langsung, tetapi melalui gagasan dalam rangkaian kalimat yang dapat kita renungkan sendiri jawabannya.',
      isFavorite: true,
    ),
    Books(
      id: 5,
      title: 'Every Word You Cannot Say',
      author: 'Lain S. Thomas',
      coverImgSrc: 'assets/images/cover_books/every_word_cover.png',
      bookImgSrc: 'assets/images/books/every_word_you_cannot_say.png',
      synopsis:
          'Sesuatu yang sifatnya subjektif seperti feeling, sense, atau judgement tidak mungkin dapat dibaca orang lain kecuali kita sendiri mengungkapkannya. Untuk mewakili perasaan-perasaan yang terpendam inilah Iain S. Thomas menulis buku Every Word You Cannot Say.  Isinya rangkaian kata-kata yang mewakili perasaan kebanyakan orang tentang cinta, optimisme, harapan, dan konfigurasi batin lainnya.',
      isFavorite: true,
    ),
    Books(
      id: 6,
      title: 'Things Left Behind',
      author: 'Kim Sae Byoul | Jeon Ae Won',
      coverImgSrc: 'assets/images/cover_books/things_left_cover.png',
      bookImgSrc: 'assets/images/books/things_left_behind.png',
      synopsis:
          'Ditulis dengan jernih dan menyentuh, buku yang mengilhami K-drama Move to Heaven ini menggabungkan pengalaman pribadi dan renungan personal dengan bahasa yang mengalir dan enak dibaca.Inilah buku menarik yang akan membuat pembaca menangis terharu, sekaligus menyadarkan kita akan hal-hal penting yang selama ini luput dari perhatian, antara lain betapa berharganya kehidupan, keluarga, kasih sayang, dan persahabatan.',
      isFavorite: true,
    ),
  ];

  Future<List<Books>> fetchBooks() {
    try {
      return Future.delayed(const Duration(milliseconds: 500), () => recBooks);
    } catch (e) {
      return Future.value([]);
    }
  }
}
