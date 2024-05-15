import 'package:flutter/material.dart';

class ReadButton extends StatelessWidget {
  const ReadButton({
    super.key,
    this.onTap,
  });
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: onTap ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff101624),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: const Center(
          child: Text(
            'READ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
