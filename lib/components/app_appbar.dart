import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    required this.textTitle,
  });
  final String textTitle;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        textTitle,
        style: const TextStyle(fontSize: 18, color: Colors.white),
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
