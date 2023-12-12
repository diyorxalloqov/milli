import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/global/presentation/product/helpers/spacer_widget.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';
import 'package:milli/modules/global/widgets/small_text_widget.dart';

class ClientDescriptionWriteDialog extends StatefulWidget {
  const ClientDescriptionWriteDialog({super.key});

  @override
  State<ClientDescriptionWriteDialog> createState() =>
      _ClientDescriptionWriteDialogState();
}

class _ClientDescriptionWriteDialogState
    extends State<ClientDescriptionWriteDialog> {
  List<bool> isStarTappedList = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      scrollable: true,
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.all(20.0.dg),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: const HighTextWidget(text: 'Написать отзыв'),
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
                  hintText: "Отзыв",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4))),
            ),
            const SpaceHeight(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        side: BorderSide(color: primaryColor, width: 1))),
                onPressed: () {
                  
                },
                child: Text(
                  "Добавить фото",
                  style: TextStyle(color: primaryColor),
                )),
            const SpaceHeight(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SmallTextGreyWidget(
                    textDecoration: TextDecoration.none,
                    text: 'Оценка товара:'),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        5,
                        (index) => Row(
                              children: [
                                SizedBox(width: 10.w),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isStarTappedList[index] =
                                          !isStarTappedList[index];
                                    });
                                  },
                                  child: SvgPicture.asset(
                                    isStarTappedList[index]
                                        ? SvgImages.unstar
                                        : SvgImages.star,
                                  ),
                                ),
                              ],
                            ))),
              ],
            ),
            const SpaceHeight(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    )),
                onPressed: () {
                  Navigator.pop(context);
                  showAdaptiveDialog(
                      context: context,
                      builder: (context) =>
                          const ClientDescriptionWriteDialog());
                },
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
