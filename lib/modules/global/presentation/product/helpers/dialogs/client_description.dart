import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/global/presentation/product/helpers/dialogs/client_description_write_page.dart';
import 'package:milli/modules/global/presentation/product/helpers/dialogs/widget/client_description_item.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';

class ClientDescriptionDialog extends StatelessWidget {
  const ClientDescriptionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      scrollable: true,
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.all(20.0.dg),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: SizedBox(
        width: context.width * 0.9.w,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.cancel_outlined)),
                const HighTextWidget(text: 'Отзывы покупателей'),
                SizedBox(width: 20.w)
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r),
                          side: BorderSide(color: primaryColor, width: 1))),
                  onPressed: () {
                    Navigator.pop(context);
                    showAdaptiveDialog(
                        context: context,
                        builder: (context) =>
                            const ClientDescriptionWriteDialog());
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(SvgImages.magicpen),
                        SizedBox(width: 10.w),
                        Text(
                          "Оставить отзыв",
                          style: TextStyle(color: primaryColor),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10),
              child: Column(
                children:
                    List.generate(3, (index) => const ClientDescriptionItem()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
