import 'package:flutter/material.dart';

class ExpansionTileItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const ExpansionTileItemWidget(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFF999999),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ));
  }
}
