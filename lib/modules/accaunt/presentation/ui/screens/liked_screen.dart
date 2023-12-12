import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/png_images.dart';
import 'package:milli/assets/constants/svg_images.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: const Text(
          "Отзывы",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff999999)),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff999999)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: const Image(
                              image: AssetImage(PngImages.noteBook),
                              width: 78,
                              height: 78),
                        ),
                        const SizedBox(width: 6),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "iPhone 12 Pro Max, 128GB, Blue",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff171515)),
                            ),
                            const Text(
                              "26 октября 2022б 18:41",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff999999)),
                            ),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(5, (index) {
                                  if (index == 4) {
                                    return IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(SvgImages.unstar,
                                          color: Colors.black),
                                    );
                                  } else {
                                    return IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                          SvgImages.star_orange),
                                    );
                                  }
                                }))
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        "За эти деньги, думаю норм!)",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff171515)),
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(SvgImages.like),
                        Text("12"),
                        const SizedBox(width: 15),
                        SvgPicture.asset(SvgImages.dislike),
                        Text("3")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
