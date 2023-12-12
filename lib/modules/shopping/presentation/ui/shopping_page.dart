import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';
import 'package:milli/modules/global/widgets/small_text_widget.dart';
import 'package:milli/modules/shopping/presentation/ui/widgets/shopping_item.dart';
import 'package:milli/modules/shopping/presentation/ui/widgets/top_category_shopping.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  final List ss = ['1', '2', '3', '4', "5"];

  bool _isCheckAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              scrolledUnderElevation: 0,
              title: const HighTextWidget(text: "2 товара в корзине"),
              centerTitle: true,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      if (index == 0)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: const HighTextWidget(
                                          text: "Удалить выбранное")),
                                  Row(
                                    children: [
                                      const SmallTextWidget(
                                          text: "Выбрать всё"),
                                      Checkbox(
                                          value: _isCheckAll,
                                          onChanged: (v) {
                                            _isCheckAll = v!;
                                            setState(() {});
                                          })
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(),
                            ],
                          ),
                        )

                      /// last widget
                      else if (index == ss.length + 1)
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const HighTextWidget(text: "Ваш заказ"),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: context.bottom / 9 + 10,
                                        top: context.top / 9 + 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SmallTextWidget(text: "4 товара"),
                                        SmallTextWidget(text: "25 000 000 сум")
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: context.bottom / 9 + 10,
                                        top: context.top / 9 + 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SmallTextWidget(
                                            text: "Скидки на товары"),
                                        SmallTextWidget(text: "1 500 000 сум")
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: context.bottom / 9 + 50,
                                        top: context.top / 9 + 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SmallTextWidget(text: "Итого"),
                                        HighTextWidget(text: "25 000 000 сум")
                                      ],
                                    ),
                                  ),
                                  HighTextWidget(text: "Рекомендуемые товары:"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: context.bottom / 9 + 30),
                              child: SizedBox(
                                height: context.height * 0.37,
                                child: const TopCategoryShopping(),
                              ),
                            ),
                          ],
                        )
                      else
                        ShoppingItem(),
                    ],
                  );
                },
                itemCount: ss.length + 2,
              ),
            ),
            const SizedBox(height: 1),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: context.height * 0.075,
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
                    textDecoration: TextDecoration.none, text: "4 товара"),
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
                child: const Text(
                  "Оформить",
                  style: TextStyle(
                    color: Color(0xFFF9F9F9),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ))
          ],
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
