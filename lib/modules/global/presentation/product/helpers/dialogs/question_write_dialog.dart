import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/modules/global/presentation/product/helpers/spacer_widget.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';
import 'package:milli/modules/global/widgets/small_text_widget.dart';

class QuestionWriteDialog extends StatefulWidget {
  const QuestionWriteDialog({super.key});

  @override
  State<QuestionWriteDialog> createState() =>
      _ClientDescriptionWriteDialogState();
}

class _ClientDescriptionWriteDialogState extends State<QuestionWriteDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      scrollable: true,
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.all(20.0.dg),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: const HighTextWidget(text: 'Задать вопрос'),
      content: SizedBox(
        width: context.width * 0.9.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Ваша имя",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4))),
            ),
            const SpaceHeight(),
            TextField(
              decoration: InputDecoration(
                  hintText: "Ваш город",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4))),
            ),
            const SpaceHeight(),
            TextField(
              decoration: InputDecoration(
                  hintText: "E-mail",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4))),
            ),
            const SpaceHeight(),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "Вопрос*",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4))),
            ),
            const SpaceHeight(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    )),
                onPressed: () {},
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Отправить отзыв",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
