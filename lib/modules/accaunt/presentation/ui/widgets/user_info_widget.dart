import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;

  const UserInfoWidget({super.key, required this.title, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap ,
          title: Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        Divider(
          thickness: 1,
        )
      ],
    );
  }
}
