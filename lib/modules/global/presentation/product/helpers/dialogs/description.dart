import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:milli/modules/global/presentation/product/helpers/spacer_widget.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';

class DescriptionDialog extends StatelessWidget {
  const DescriptionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      scrollable: true,
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.all(1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: SizedBox(
        width: context.width * 0.93,
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
                  "Описание",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SpaceWidth(width: 35),
              ],
            ),
            Image(
              // image kelgunicha circle progress chiqarib qoyish kerak blocda image success kelsa state ozgarganda tekshirish kerak
              image: const FastCachedImageProvider(
                  "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/macbook-pro-13-og-202011?wid=600&hei=315&fmt=jpeg&qlt=95&.v=1604347427000"),
              fit: BoxFit.cover,
              errorBuilder: (context, child, error) {
                return const Center(
                  child: Text("Image connecting error"),
                );
              },
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                return Padding(
                  padding: const EdgeInsets.all(24),
                  child: child,
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  HighTextWidget(
                      text: "Двигатель. Производитель.Нарушитель границ."),
                  SpaceHeight(height: 10),
                  Text(
                      "MacBook Pro с наддувом от M2Pro или M2 Max повышает свою мощность и эффективность еще больше, чем когда-либо. Он обеспечивает исключительную производительность независимо от того, подключен он к сети или нет, и теперь имеет еще более длительное время автономной работы. В сочетании с потрясающим дисплеем Liquid Retina XDR и всеми необходимыми портами — это профессиональный ноутбук, которому нет равных."),
                  SpaceHeight(height: 20)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
