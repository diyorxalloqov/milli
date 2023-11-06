import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milli/assets/constants/svg_images.dart';

class InformationWidget extends StatelessWidget {
  InformationWidget({super.key});

  final List<String> _images = const [
    SvgImages.medalStar,
    SvgImages.shoppingCart,
    SvgImages.shield,
    SvgImages.moneys,
    SvgImages.question
  ];
  final List<String> _text1 = [
    "Качество и экономия",
    "Быстрая доставка",
    "Безопасность платежей",
    "Выгодные цены",
    "Есть вопросы?",
  ];
  final List<String> _text2 = [
    "Comprehensive quality control and affordable prices",
    "Быстрая и удобная доставка от двери до двери",
    "Более 10 различных безопасных способов оплаты",
    "Цены пропорциональны рыночным ценам",
    "Круглосуточное обслуживание клиентов - мы здесь и рады помочь!",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
              width: 164,
              height: 206,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(_images[index]),
                    Text(
                      _text1[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      _text2[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 8.24,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
