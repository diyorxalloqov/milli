import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/global/widgets/high_text_widget.dart';
import 'package:milli/modules/global/widgets/small_text_widget.dart';

class ClientDescriptionItem extends StatefulWidget {
  const ClientDescriptionItem({Key? key}) : super(key: key);

  @override
  State<ClientDescriptionItem> createState() => _ClientDescriptionItemState();
}

class _ClientDescriptionItemState extends State<ClientDescriptionItem> {
  List<bool> isStarTappedList = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HighTextWidget(text: "Gulnoza"),
            SmallTextGreyWidget(
                textDecoration: TextDecoration.none, text: 'text')
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              5,
              (index) => Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isStarTappedList[index] = !isStarTappedList[index];
                      });
                    },
                    child: SvgPicture.asset(
                      isStarTappedList[index]
                          ? SvgImages.unstar
                          : SvgImages.star,
                    ),
                  ),
                  SizedBox(width: 10.w)
                ],
              ),
            ),
          ),
        ),
        const Text(
          "Прежде всего, перспективное планирование предоставляет широкие возможности для системы обучения кадров, соответствующей насущным потребностям.",
          style: TextStyle(overflow: TextOverflow.ellipsis),
          maxLines: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: List.generate(
                4,
                (index) => Container(
                      width: 60,
                      height: 60,
                      margin: EdgeInsets.only(right: 10.w),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFCCCCCC),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    )),
          ),
        ),
        const Divider()
      ],
    );
  }
}
