import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';

class SmallTextWidget extends StatelessWidget {
  final String text;
  const SmallTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: blackColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SmallTextGreyWidget extends StatelessWidget {
  final String text;
  final TextDecoration textDecoration;
  const SmallTextGreyWidget(
      {super.key, required this.textDecoration, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: greyColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          decorationColor: greyColor,
          decoration: textDecoration),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
