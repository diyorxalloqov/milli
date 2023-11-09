import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/png_images.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/menu_widget.dart';
import 'package:milli/modules/global/widgets/search_textformfield_widget.dart';
import 'package:milli/modules/global/widgets/text_widget.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/about_page.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/widgets/top_category_3.dart';
import 'package:milli/modules/home/presentation/ui/pages/infomation_page.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/widgets/home_first_widget.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/widgets/home_second_widget.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/widgets/top_category_1.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/widgets/top_category_2.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/menu/menu_page.dart';

class HomeePage extends StatefulWidget {
  const HomeePage({super.key});

  @override
  State<HomeePage> createState() => _HomeePageState();
}

class _HomeePageState extends State<HomeePage> {
  late TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(SvgImages.logo),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(SvgImages.percent)),
          const SizedBox(width: 10),
          IconButton(onPressed: () {}, icon: SvgPicture.asset(SvgImages.call)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      MenuWidget(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuPage()));
                        },
                        icon: const Icon(Icons.menu),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SearchTextFormFieldWidget(
                            text: "Поиск товаров",
                            controller: _searchController),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  const FirstWidget(),
                  const SizedBox(height: 30),
                  const SecondWidget(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget(text: "Лучшие категории"),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Все категории",
                            style: TextStyle(color: primaryColor),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 130,
                    width: double.infinity,
                    child: TopCategory(),
                  ),
                  // for ads - advertising
                  Container(
                    height: 67,
                    decoration: const BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage(PngImages.ads))),
                  )
                ],
              ),
            ),
            InformationWidget(),
            SizedBox(height: context.height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.height * 0.024,
                  vertical: context.height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextWidget(text: "Лучшие категории"),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Все категории",
                        style: TextStyle(color: primaryColor),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: context.height * 0.37,
              child: const TopCategory2(),
            ),
            const SizedBox(height: 20),
            //// for ads
            Container(
              height: 70,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(PngImages.ads), fit: BoxFit.cover)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 24, vertical: context.height * 0.03),
              child: const TextWidget(text: "Рекомендуем вам"),
            ),
            SizedBox(
              height: context.height * 0.37,
              child: const TopCategory3(),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
              child: AboutPage(),
            )
          ],
        ),
      ),
    );
  }
}
