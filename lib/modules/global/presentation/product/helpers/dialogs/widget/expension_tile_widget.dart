import 'package:flutter/material.dart';
import 'package:milli/modules/global/presentation/product/helpers/spacer_widget.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';
import 'package:milli/modules/global/widgets/small_text_widget.dart';

class ExpensionTileInfo extends StatelessWidget {
  final String name;

  const ExpensionTileInfo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: HighTextWidget(text: name),
        shape: const RoundedRectangleBorder(side: BorderSide.none),
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallTextGreyWidget(
                    textDecoration: TextDecoration.none, text: "Процессор"),
                const SpaceWidth(),
                Expanded(
                    child: Text(
                  "." * 100,
                  maxLines: 1,
                )),
                const SpaceWidth(),
                HighTextWidget(text: "High text")
              ],
            ),
          );
        }));
  }
}
