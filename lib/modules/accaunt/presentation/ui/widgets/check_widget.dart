import 'package:flutter/material.dart';
import 'package:milli/assets/constants/png_images.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/small_text_widget.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "ID заказа 1234567",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Статус:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff999999)),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: const BoxDecoration(
                        color: Color(0xffECECEC),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Center(child: Text("Продано")),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Дата заказа:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff999999)),
                  ),
                  Text('02.10.2023-13:42')
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Сумма заказа:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff999999)),
                  ),
                  Text('125 000 сум')
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              ExpansionTile(
                  title: const Text('2 товара'),
                  tilePadding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(side: BorderSide.none),
                  children:
                      List.generate(5, (index) => const ExpansionTileItem())),
            ],
          ),
        ),
      ],
    );
  }
}

class ExpansionTileItem extends StatelessWidget {
  const ExpansionTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(PngImages.tree))),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text('Цветы японские'),
            const SmallTextGreyWidget(
                textDecoration: TextDecoration.none, text: "Цвет: зеленйы"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('1 шт.'),
                SizedBox(width: context.width * 0.35),
                const Text('100 000 сум')
              ],
            )
          ],
        )
      ],
    );
  }
}
