import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';

class HighTextWidget extends StatelessWidget {
  final String text;
  const HighTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: blackColor,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
