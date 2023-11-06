import 'package:flutter/material.dart';
import 'package:milli/assets/constants/png_images.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 10/15,
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
              children: [
                const Image(
                  image: AssetImage(PngImages.phone),
                  fit: BoxFit.cover,
                ),
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          "-15% скидка",
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 16,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ],
                ),
                Text("data"),
              ],
            ),
          ),
        );
      },
      itemCount: 15,
    );
  }
}
