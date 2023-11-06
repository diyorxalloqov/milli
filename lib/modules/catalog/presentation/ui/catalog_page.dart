import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/catalog/presentation/ui/widgets/product_item.dart';
import 'package:milli/modules/global/widgets/menu_widget.dart';
import 'package:milli/modules/global/widgets/search_textformfield_widget.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  late TextEditingController _textEditingController;
  int selectedChipIndex = -1;
  List<String> chipTitle = [
    "Lenovo",
    "HP",
    "Apple",
    "Dell",
    "Acer",
    "Asus",
    "Lenovo",
    "HP",
    "Apple",
    "Dell",
    "Acer",
    "Asus",
  ];

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SearchTextFormFieldWidget(
                          text: "Поиск товаров",
                          controller: _textEditingController),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: MenuWidget(
                          onTap: () {}, icon: SvgPicture.asset(SvgImages.equa)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Ноутбуки",
                  style: TextStyle(
                    color: Color(0xFF171515),
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  "159 товаров",
                  style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: List.generate(chipTitle.length, (index) {
                    return ChoiceChip(
                      label: Text(chipTitle[index]),
                      side: BorderSide.none,
                      showCheckmark: false,
                      backgroundColor: const Color(0xFFEBEBEB),
                      onSelected: (value) {
                        setState(() {
                          if (value) {
                            selectedChipIndex = index;
                          } else {
                            selectedChipIndex = -1;
                          }
                        });
                      },
                      selected: selectedChipIndex == index,
                    );
                  }),
                ),
              ],
            ),
          ),
          Expanded(child: ProductItem()),
          const SizedBox(height: 10)
        ],
      )),
    );
  }
}
