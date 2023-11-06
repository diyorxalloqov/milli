// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:milli/assets/constants/svg_images.dart';

class SearchTextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String text;

  const SearchTextFormFieldWidget({
    Key? key,
    required this.text,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        labelText: text,
        border: const OutlineInputBorder(),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        suffixIcon: Transform.scale(
          scale: 0.5,
          child: SvgPicture.asset(
            SvgImages.search,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
