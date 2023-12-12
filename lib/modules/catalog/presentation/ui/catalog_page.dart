import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/catalog/presentation/ui/widgets/catalog_item.dart';
import 'package:milli/modules/global/presentation/product/helpers/spacer_widget.dart';
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
    "HP",
    "Apple",
    "Dell",
    "Acer",
    "Asus",
    "Acer",
    "Dell",
    "Acer",
    "Asus",
    "Acer",
  ];
  ///// item pagenation
  int limit = 7;
  bool showMore = false;

  List<String> getVisibleChips() {
    return showMore ? chipTitle : chipTitle.take(limit).toList();
  }
  ////////

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
                 Text(
                  "Ноутбуки",
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${chipTitle.length} товаров",
                  style: const TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: List.generate(getVisibleChips().length, (index) {
                    return ChoiceChip(
                      label: Text(getVisibleChips()[index]),
                      side: BorderSide.none,
                      disabledColor: Colors.red,
                      showCheckmark: false,
                      backgroundColor: const Color(0xFFEBEBEB),
                      selectedColor: primaryColor.withOpacity(0.5),
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
                  })
                    ..add(chipTitle.length > limit
                        ? OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0xFFEBEBEB),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {
                              setState(() {
                                showMore = !showMore;
                              });
                            },
                            child: Text(showMore
                                ? "меньше"
                                : "Ещё ${chipTitle.length - limit} "),
                          )
                        : const SizedBox()),
                )
              ],
            ),
          ),
          const Expanded(child: ProductItem()),
          const SpaceHeight()
        ],
      )),
    );
  }
}
