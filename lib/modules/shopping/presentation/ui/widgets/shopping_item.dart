import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/modules/global/presentation/product/product_detail_page.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';
import 'package:milli/modules/global/widgets/small_text_widget.dart';
import 'package:milli/modules/shopping/presentation/ui/widgets/item_count_button_widget.dart';

class ShoppingItem extends StatefulWidget {
  const ShoppingItem({super.key});

  @override
  State<ShoppingItem> createState() => _ShoppingItemState();
}

class _ShoppingItemState extends State<ShoppingItem> {
  bool _isCheckIndex = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      onLongPress: () {
        _isCheckIndex = !_isCheckIndex;
        setState(() {});
      },
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // CachedNetworkImage(
          //   imageUrl: "http://via.placeholder.com/200x150",
          //   imageBuilder: (context, imageProvider) => Container(
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: imageProvider,
          //           fit: BoxFit.cover,
          //           colorFilter:
          //               ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
          //     ),
          //   ),
          //   placeholder: (context, url) => CircularProgressIndicator(),
          //   errorWidget: (context, url, error) => Icon(Icons.error),
          // ),
          Container(
            width: context.width * 0.3,
            height: context.width * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: const Color(0xFFEBEBEB)),
                image: const DecorationImage(
                  alignment: Alignment.center,
                  image: FastCachedImageProvider(
                      "https://cdn.salla.sa/eRgQD/kftjgEUjltRCFyugNAtEX3Gr1BE2qQ2KnPItuHuF.png"),
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HighTextWidget(text: "13 000 000"),
                SizedBox(height: 5),
                SmallTextGreyWidget(
                    text: "14 500 000 сум",
                    textDecoration: TextDecoration.lineThrough),
                HighTextWidget(text: "IPhone 13 Pro Max"),
                SmallTextGreyWidget(
                    textDecoration: TextDecoration.none,
                    text: "Магазин: MacBro"),
                SizedBox(height: 20),
                SmallTextGreyWidget(
                    textDecoration: TextDecoration.none,
                    text: "13 000 000 сум/шт"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemCountButton(
                        onTap: () {},
                        color: primaryColor,
                        icon: const Text(
                          "-",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xFFCCCCCC), width: 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: HighTextWidget(text: "3"),
                      ),
                    ),
                    ItemCountButton(
                        onTap: () {},
                        color: primaryColor,
                        icon: const Text(
                          "+",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                    const SizedBox(),
                    const SizedBox(),
                    const SizedBox(),
                  ],
                )
              ],
            ),
          ),
          Checkbox(
              value: _isCheckIndex,
              onChanged: (v) {
                _isCheckIndex = v!;
                setState(() {});
              })
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Divider(
          thickness: 1,
          color: whiteColor,
        ),
      ),
    );
  }
}
