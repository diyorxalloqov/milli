import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;
  const MenuWidget({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
            )),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
