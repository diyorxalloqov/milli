import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/png_images.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/widgets/expansionTile_item_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: context.height * 0.2,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
              color: const Color(0xff9f9f81).withOpacity(0.1),
              borderRadius: BorderRadius.circular(2),
              border: Border.all(color: Colors.white10),
              image: const DecorationImage(
                  image: AssetImage(PngImages.image2),
                  alignment: Alignment.centerLeft)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const HighTextWidget(text: "Стать поставщиком на Milli"),
              Text(
                "Продавайте свои товары и продукты удобно и легко на нашей оптовой платформе.",
                maxLines: 2,
                textAlign: TextAlign.end,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 80),
        ExpansionTile(
            title: const HighTextWidget(text: "Покупателям"),
            expandedAlignment: Alignment.center,
            shape: const RoundedRectangleBorder(side: BorderSide.none),
            children: [
              ExpansionTileTitleWidget(onTap: () {}, text: "Как сделать заказ"),
              ExpansionTileTitleWidget(onTap: () {}, text: "Способы оплаты"),
              ExpansionTileTitleWidget(onTap: () {}, text: "Доставка"),
              ExpansionTileTitleWidget(onTap: () {}, text: "Возврат товара"),
              ExpansionTileTitleWidget(
                  onTap: () {}, text: "Возврат денежных средств"),
              ExpansionTileTitleWidget(onTap: () {}, text: "Вопросы и ответы"),
            ]),
        Divider(
          endIndent: context.width * 0.035,
          indent: context.width * 0.035,
        ),
        ExpansionTile(
            title: const HighTextWidget(text: "Партнёрам"),
            expandedAlignment: Alignment.center,
            shape: const RoundedRectangleBorder(side: BorderSide.none),
            children: [
              ExpansionTileTitleWidget(onTap: () {}, text: "Как сделать заказ"),
            ]),
        Divider(
          endIndent: context.width * 0.035,
          indent: context.width * 0.035,
        ),
        ExpansionTile(
            title: const HighTextWidget(text: "Компания"),
            expandedAlignment: Alignment.center,
            shape: const RoundedRectangleBorder(side: BorderSide.none),
            children: [
              ExpansionTileTitleWidget(onTap: () {}, text: "Как сделать заказ"),
            ]),
        Divider(
          endIndent: context.width * 0.035,
          indent: context.width * 0.035,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HighTextWidget(text: "Контакты"),
              SizedBox(height: context.height * 0.02),
              const Text(
                "Г. Ташкент, Юнусабадский р. ул.Юнус Раджаби дом а16",
                style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: context.height * 0.02),
              const Text(
                "+998 99 123 45 67",
                style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: context.height * 0.02),
              const Text(
                "help@mail.uz",
                style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Divider(
          endIndent: context.width * 0.035,
          indent: context.width * 0.035,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HighTextWidget(text: "Социальные сети"),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: context.width * 0.04, top: context.height * 0.03),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(30),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            const Color(0xFF999999).withOpacity(0.1),
                        child: Center(
                          child:
                              SvgPicture.asset(SvgImages.telegram, width: 25),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: context.width * 0.04, top: context.height * 0.03),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(30),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            const Color(0xFF999999).withOpacity(0.1),
                        child: Center(
                          child: SvgPicture.asset(SvgImages.insta, width: 25),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: context.width * 0.04, top: context.height * 0.03),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(30),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            const Color(0xFF999999).withOpacity(0.1),
                        child: Center(
                          child:
                              SvgPicture.asset(SvgImages.facebook, width: 40),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: context.height * 0.02),
        Divider(
          endIndent: context.width * 0.035,
          indent: context.width * 0.035,
        ),
        SizedBox(height: context.height * 0.02),
        const Center(
          child: Text(
            "Milli | Все права защищены. 2022",
            style: TextStyle(
                color: Color(0xFF999999),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
