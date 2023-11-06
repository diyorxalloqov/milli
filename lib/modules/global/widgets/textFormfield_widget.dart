import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const TextFormFieldWidget(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFF999999),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
      ),
    );
  }
}
