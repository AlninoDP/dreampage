import 'package:dreampage/components/app_appbar.dart';
import 'package:flutter/material.dart';

const List<String> listText = [
  'Selamat datang di Dreampage - Aplikasi Perpustakaan Digital Masa Depan!',
  'Dreampage membawa Anda ke dunia pengetahuan tanpa batas di ujung jari Anda. Dreampage akan menjadi teman setia Anda dalam mengeksplorasi dunia literatur yang luas dan beragam.',
  'Nikmati pengalaman membaca yang revolusioner, jelajahi ribuan judul dari berbagai genre, dan temukan pengetahuan baru yang menginspirasi setiap hari. Dreampage tidak hanya sekadar aplikasi, tetapi merupakan jendela menuju dunia pengetahuan yang tak terbatas.',
  'Segera bergabung dengan Dreampage dan biarkan imajinasi Anda terbang bebas di alam semesta literatur digital kami yang penuh warna dan mengagumkan. Selamat menikmati petualangan literasi Anda dengan Dreampage - di mana mimpi dan pengetahuan bertemu!',
];

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          backgroundColor: const Color(0xff101624),
          appBar: const AppAppBar(textTitle: 'A B O U T  A P P'),
          body: Container(
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
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Text(
                      listText[0],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      listText[1],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      listText[2],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      listText[3],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'version app - 1.0.0.0',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7D848D),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
