import 'package:flutter/material.dart';
import 'package:milli/modules/global/presentation/product/helpers/dialogs/widget/expension_tile_widget.dart';
import 'package:milli/modules/global/presentation/product/helpers/spacer_widget.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';

class AllInfoDialog extends StatelessWidget {
  const AllInfoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      scrollable: true,
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: SizedBox(
        width: context.width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Все характеристики",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SpaceWidth(width: 30),
              ],
            ),
            ExpensionTileInfo(name: "Процессор"),
            ExpensionTileInfo(name: "Изображение"),
            ExpensionTileInfo(name: "Устройство хранения данных"),
            ExpensionTileInfo(name: "Связь"),
            ExpensionTileInfo(name: "Питание"),
            ExpensionTileInfo(name: "Устройство ввода"),
            ExpensionTileInfo(name: "Звук"),
            ExpensionTileInfo(name: "Дополнительно"),
          ],
        ),
      ),
    );
  }
}
