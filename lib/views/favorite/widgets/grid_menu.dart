import 'package:dreampage/utils/scale_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({
    super.key,
    required this.imageSrc,
    required this.bookTitle,
    required this.bookAuthor,
    this.onTap,
  });
  final String imageSrc;
  final String bookTitle;
  final String bookAuthor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: onTap ?? () {},
        child: Column(
          children: [
            Container(
              width: 88,
              height: 133,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageSrc),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: Text(
                bookTitle,
                textScaler:
                    TextScaler.linear(ScaleSize.textScaleFactor(context)),
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: Text(
                bookAuthor,
                textScaler:
                    TextScaler.linear(ScaleSize.textScaleFactor(context)),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, color: Color(0xff7D848D)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
