import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';

class CardWidget extends StatelessWidget {
  final String text;
  final String text1;
  final VoidCallback onPressed;
  const CardWidget(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.text1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HighTextWidget(text: text),
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(color: primaryColor, width: 1))),
              child: Center(
                child: Text(
                  "Посмотреть",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Divider(
            color: Colors.black12,
          ),
        )
      ],
    );
  }
}
