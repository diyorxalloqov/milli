import 'package:flutter/material.dart';
import 'package:milli/assets/constants/png_images.dart';

class TopCategory2 extends StatelessWidget {
  const TopCategory2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 10 / 15,
          crossAxisCount: 2,
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
                      height: 20,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          "-15% скидка",
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 20,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          "Супер цена",
                          style: TextStyle(
                            color: Color(0xFFF9F9F9),
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
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
      itemCount: 10,
    );
  }
}
