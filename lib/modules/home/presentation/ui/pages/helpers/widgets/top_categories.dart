import 'package:flutter/material.dart';
import 'package:milli/assets/constants/png_images.dart';

class TopCategory extends StatelessWidget {
  const TopCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 74,
              height: 74,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.greenAccent,
                image:
                    const DecorationImage(image: AssetImage(PngImages.phone)),
              ),
            ),
            const Text(
              "phone",
              maxLines: 2,
              style: TextStyle(),
            )
          ],
        );
      },
      itemCount: 10,
    );
  }
}
