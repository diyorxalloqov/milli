// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/png_images.dart';

class ShoppingItem1 extends StatefulWidget {
  const ShoppingItem1({super.key});

  @override
  State<ShoppingItem1> createState() => _ProductItemState();
}

class _ProductItemState extends State<ShoppingItem1> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thickness: 6,
      radius: const Radius.circular(8),
      trackVisibility: true,
      interactive: true,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 10 / 15,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: const Color(0xFFEBEBEB), width: 1)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage(PngImages.noteBook),
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 5),
                  Flexible(
                    child: Text(
                      "Macbook Air 13 M1 8gb RAM / 256gb SSD storage",
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Продано",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Text(
                        "20.08.2023- 19:28",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color(0xFF999999),
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Text('1 727 019 сум',
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
