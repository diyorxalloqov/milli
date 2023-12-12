import 'package:flutter/material.dart';
import 'package:milli/modules/global/presentation/product/helpers/spacer_widget.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';
import 'package:milli/modules/global/widgets/small_text_widget.dart';

class ClientQuestionItem extends StatelessWidget {
  const ClientQuestionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HighTextWidget(text: 'Gulnoza'),
            SmallTextGreyWidget(
                textDecoration: TextDecoration.none, text: "Ташкент")
          ],
        ),
        SpaceHeight(height: 10),
        SmallTextWidget(text: "Здравствуйте а у вас есть доставка до дома?"),
        SpaceHeight(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HighTextWidget(text: ' • Ответ от Milli'),
            SmallTextGreyWidget(
                textDecoration: TextDecoration.none, text: "Ташкент")
          ],
        ),
        SpaceHeight(height: 10),
        Text.rich(TextSpan(
            text:
                'Здравствуйте Gulnoza, да конечно у нас есть доставка до дома')),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Divider(),
        )
      ],
    );
  }
}
