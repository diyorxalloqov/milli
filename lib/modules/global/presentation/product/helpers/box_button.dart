import 'package:flutter/material.dart';

class BoxButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final Widget icon;
  final Color color;

  const BoxButtonWidget({
    Key? key,
    required this.color,
    this.onTap,
    required this.icon,
  }) : super(key: key);

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
