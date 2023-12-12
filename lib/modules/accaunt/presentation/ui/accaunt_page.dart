import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/png_images.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/accaunt/presentation/ui/screens/notification_screen.dart';
import 'package:milli/modules/accaunt/presentation/ui/user_page/user_info_page.dart';
import 'package:milli/modules/accaunt/presentation/ui/widgets/card_widget.dart';

class AccauntPage extends StatelessWidget {
  const AccauntPage({super.key});
  final List<String> icons = const [
    SvgImages.check,
    SvgImages.starRed,
    SvgImages.bag,
    SvgImages.archive,
    SvgImages.card,
    SvgImages.like
  ];
  final List<String> title = const [
    'Чеки',
    'Любимые бренды',
    'Покупки',
    'Избранное',
    'Мои карты',
    'Отзывы'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: SizedBox(
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationScreen()));
            },
            icon: SvgPicture.asset(
              SvgImages.notification,
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Привет, Имя Фамилия',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF9F9F9),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.centerRight,
            width: 60,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                Navigator.of(context, rootNavigator: false).push(
                    MaterialPageRoute(
                        builder: (context) => const UserInfoPage()));
              },
              child: const Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(PngImages.user),
                  ),
                  Positioned(
                      right: 23,
                      top: 19,
                      child: Image(
                        image: AssetImage(PngImages.settingsPng),
                        width: 25,
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        child: Column(
            children: List.generate(
                6,
                (index) => CardWidgets(
                    title: title[index], icon: icons[index], index: index))),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        backgroundColor: primaryColor,
        child: SvgPicture.asset(
          SvgImages.percent,
          color: Colors.white,
        ),
      ),
    );
  }
}
