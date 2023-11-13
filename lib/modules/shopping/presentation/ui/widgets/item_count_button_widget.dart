import 'package:flutter/material.dart';

class ItemCountButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;
  final Color color;
  const ItemCountButton(
      {super.key,
      required this.color,
      required this.onTap,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: const Color(0xFFCCCCCC), width: 1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
