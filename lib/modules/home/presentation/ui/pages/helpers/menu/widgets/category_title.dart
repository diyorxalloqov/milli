import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';

class CategoryTitle extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CategoryTitle({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 54,
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Color(0xFFF9F9F9),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xffFAFAFA),
            )
          ],
        ),
      ),
    );
  }
}
