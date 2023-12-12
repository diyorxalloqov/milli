import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/png_images.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/global/presentation/product/helpers/box_button.dart';
import 'package:milli/modules/global/presentation/product/helpers/card_widget.dart';
import 'package:milli/modules/global/presentation/product/helpers/dialogs/all_info.dart';
import 'package:milli/modules/global/presentation/product/helpers/dialogs/client_description.dart';
import 'package:milli/modules/global/presentation/product/helpers/dialogs/description.dart';
import 'package:milli/modules/global/presentation/product/helpers/dialogs/question.dart';
import 'package:milli/modules/global/presentation/product/helpers/image_page_view.dart';
import 'package:milli/modules/global/presentation/product/helpers/product_info_widget.dart';
import 'package:milli/modules/global/presentation/product/helpers/spacer_widget.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';
import 'package:milli/modules/global/widgets/small_text_widget.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/widgets/top_category_3.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final List<bool> _selectedItemsImage = List.generate(10, (index) => false);
  final List<bool> _selectedItemsdetails = List.generate(5, (index) => false);
  final List<Map<String, String>> productDetails = [
    {
      "Бренд": 'Apple',
      "Модель": "Macbook Air 13 2020",
      "Сертификат": "Не подлежит сертификации",
      "Операционной системы": "MacOS",
      "Диагональ": "13.3”",
      "Процессор": "M1",
      "Цвет": "Синий",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          BoxButtonWidget(
              color: Colors.transparent,
              onTap: () {
                FlutterShare.share(title: 'Salom', linkUrl: '', text: "Hello");
              },
              icon: const Icon(Icons.share_outlined)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.left / 9 + 15),
            child: BoxButtonWidget(
                color: Colors.transparent,
                onTap: () {},
                icon: SvgPicture.asset(SvgImages.un_favourite)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImagePageView(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      HighTextWidget(text: "Магазин:"),
                      const SpaceWidth(),
                      Text(
                        "BSB STORE",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  const SpaceHeight(),
                  Text(
                    "Ноутбук Apple Macbook Air 13 2020 / M1 / 8GB / 256GB / Apple graphics 7-core, серебристый",
                    maxLines: 3,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      SmallTextGreyWidget(
                          textDecoration: TextDecoration.none, text: "Цвет:"),
                      const SpaceWidth(),
                      HighTextWidget(text: "Синий"),
                    ],
                  ),
                  const SpaceHeight(),
                  SizedBox(
                    width: double.infinity,
                    height: context.height * 0.15,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              for (int i = 0;
                                  i < _selectedItemsImage.length;
                                  i++) {
                                if (i != index) {
                                  _selectedItemsImage[i] = false;
                                }
                              }

                              // Toggle the selected state of the tapped item
                              _selectedItemsImage[index] =
                                  !_selectedItemsImage[index];
                              setState(() {});
                            },
                            child: Container(
                              height: context.height * 0.1,
                              width: context.width * 0.3,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1,
                                      color: _selectedItemsImage[index]
                                          ? Colors.green
                                          : Colors.black12),
                                  image: const DecorationImage(
                                      image: AssetImage(PngImages.macBook),
                                      fit: BoxFit.cover)),
                            ),
                          );
                        },
                        itemCount: _selectedItemsImage.length),
                  ),
                  const SpaceHeight(),
                  const SmallTextGreyWidget(
                      textDecoration: TextDecoration.none, text: "Память"),
                  const SpaceHeight(),
                  SizedBox(
                    width: double.infinity,
                    height: context.height * 0.05,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              for (int i = 0;
                                  i < _selectedItemsdetails.length;
                                  i++) {
                                if (i != index) {
                                  _selectedItemsdetails[i] = false;
                                }
                              }

                              // Toggle the selected state of the tapped item
                              _selectedItemsdetails[index] =
                                  !_selectedItemsdetails[index];
                              setState(() {});
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 1,
                                    color: _selectedItemsdetails[index]
                                        ? Colors.green
                                        : Colors.black12),
                              ),
                              child: Center(
                                child: Text(
                                  "8/256",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: _selectedItemsdetails.length),
                  ),
                  const SpaceHeight(),
                  const SmallTextGreyWidget(
                      textDecoration: TextDecoration.none, text: "Количество:"),
                  const SpaceHeight(),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxButtonWidget(
                          color: primaryColor,
                          onTap: () {},
                          icon: const Text(
                            "-",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                      const SpaceWidth(),
                      BoxButtonWidget(
                          color: whiteColor,
                          icon: const Text(
                            "1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          )),
                      const SpaceWidth(),
                      BoxButtonWidget(
                          color: primaryColor,
                          onTap: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const SpaceHeight(),
                  const SmallTextGreyWidget(
                      textDecoration: TextDecoration.none, text: "Цена:"),
                  const SpaceHeight(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HighTextWidget(text: "25 000 000 сум"),
                      Row(
                        children: [
                          SmallTextGreyWidget(
                              textDecoration: TextDecoration.lineThrough,
                              text: "30 000 000"),
                          SpaceWidth(),
                          SmallTextGreyWidget(
                              textDecoration: TextDecoration.none, text: "сум")
                        ],
                      ),
                    ],
                  ),
                  const SpaceHeight(),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Center(
                          child: Text(
                            "15% chegirma",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SpaceWidth(),
                      Container(
                        height: 30,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Center(
                          child: Text(
                            "Top",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SpaceHeight(height: 20),
                  const HighTextWidget(text: "О продукте"),
                  const SpaceHeight(height: 10),
                  Column(
                    children: List.generate(
                        productDetails.first.length,
                        (index) => Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SmallTextGreyWidget(
                                        textDecoration: TextDecoration.none,
                                        text: productDetails.first.entries
                                            .toList()[index]
                                            .key),
                                    SmallTextWidget(
                                        text: productDetails.first.entries
                                            .toList()[index]
                                            .value)
                                  ],
                                ),
                                const SpaceHeight(),
                              ],
                            )),
                  ),
                  const SpaceHeight(height: 25),
                  ProductInfoWidget(
                      text: "Все характеристики",
                      onTap: () {
                        showAdaptiveDialog(
                            context: context,
                            builder: (context) => const AllInfoDialog());
                      }),
                  ProductInfoWidget(
                      text: "Описание",
                      onTap: () {
                        showAdaptiveDialog(
                            context: context,
                            builder: (context) => const DescriptionDialog());
                      }),
                  ProductInfoWidget(
                      text: "Отзывы покупателей (21)",
                      onTap: () {
                        showAdaptiveDialog(
                            context: context,
                            builder: (context) =>
                                const ClientDescriptionDialog());
                      }),
                  ProductInfoWidget(
                      text: "Вопросы (3)",
                      onTap: () {
                        showAdaptiveDialog(
                            context: context,
                            builder: (context) => const QuestionDialog());
                      }),
                  const SpaceHeight(height: 25),
                  const Text(
                    "Этот товар в других магазинах:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                  ),
                  const SpaceHeight(height: 10),
                  CardWidget(
                      onPressed: () {},
                      text: "MULTI BRAND",
                      text1: "22 900 000 сум"),
                  CardWidget(
                      onPressed: () {},
                      text: "FILL STORE",
                      text1: "22 900 000 сум"),
                  CardWidget(
                      onPressed: () {},
                      text: "SAROY MARKET",
                      text1: "22 900 000 сум"),
                  CardWidget(
                      onPressed: () {},
                      text: "TEXNOGEN MARKET",
                      text1: "22 900 000 сум"),
                  CardWidget(
                      onPressed: () {}, text: "STS", text1: "22 900 000 сум"),
                  const SpaceHeight(height: 20),
                  const HighTextWidget(text: "Похожие товары:"),
                ],
              ),
            ),
            SizedBox(
              height: context.height * 0.35,
              width: double.infinity,
              child: TopCategory3(),
            ),
            const SpaceHeight(height: 50)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: context.height * 0.09,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5.0,
              spreadRadius: 2.0,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: ListTile(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallTextGreyWidget(
                    textDecoration: TextDecoration.none, text: "Цена:"),
                HighTextWidget(text: "25 000 000 сум")
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(context.width * 0.4, context.height * 0.04),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      SvgImages.shopping,
                      color: Colors.white,
                    ),
                    const SpaceWidth(),
                    const Text(
                      "В корзину",
                      style: TextStyle(
                        color: Color(0xFFF9F9F9),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )),
          ],
        )),
      ),
    );
  }
}
