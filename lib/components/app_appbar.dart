import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({super.key, required this.textTitle, this.textStyle});
  final String textTitle;
  final TextStyle? textStyle;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white, //change your color here
      ),
      title: Text(
        textTitle,
        style: textStyle ?? GoogleFonts.abel(fontSize: 18, color: Colors.white),
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          onPressed: () {
            //TODO: IMPLEMENT ONTAP FUNCTION
          },
          icon: const Icon(
            Icons.notifications_outlined,
            size: 30,
            color: Color(0xffA28D4F),
          ),
        ),
      ],
    );
  }
}
