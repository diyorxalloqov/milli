import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/png_images.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';

class TopCategoryShopping extends StatefulWidget {
  const TopCategoryShopping({super.key});

  @override
  State<TopCategoryShopping> createState() => _TopCategory2State();
}

class _TopCategory2State extends State<TopCategoryShopping> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      itemBuilder: (context, index) {
        return Container(
          width: context.width * 0.44,
          margin: const EdgeInsets.symmetric(horizontal: 8),
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
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: const Center(
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
                      height: 16,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: const Center(
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
                const Text(
                  "3 370 927 сум",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Color(0xFF999999),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('1 727 019 сум',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: context.width * 0.26,
                        height: context.height * 0.035,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              SvgImages.shopping,
                              color: Colors.white,
                              width: 17,
                            ),
                            const Text(
                              "В корзину",
                              style: TextStyle(
                                color: Color(0xFFF9F9F9),
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _isLiked = !_isLiked;
                        setState(() {});
                      },
                      child: Container(
                        width: 31,
                        height: 31,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5),
                            borderRadius: BorderRadius.circular(3)),
                        child: Center(
                          child: SvgPicture.asset(
                            _isLiked
                                ? SvgImages.favourite
                                : SvgImages.un_favourite,
                            width: 25,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}
