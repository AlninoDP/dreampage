import 'package:flutter/material.dart';

class BookshelfButton extends StatelessWidget {
  const BookshelfButton({
    super.key,
    required this.btnText1,
    required this.btnText2,
    required this.bgColor,
    required this.txtColor,
    this.onTap,
  });
  final String btnText1;
  final String btnText2;
  final Color bgColor;
  final Color txtColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap ?? () {},
        borderRadius: BorderRadius.circular(40),
        child: Container(
          width: 100,
          height: 30,
          padding: const EdgeInsets.fromLTRB(11, 5, 11, 5),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  btnText1,
                  style: TextStyle(color: txtColor, fontSize: 12),
                ),
              ),
              Text(
                btnText2,
                style: TextStyle(color: txtColor, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
