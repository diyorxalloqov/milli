import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/accaunt/presentation/ui/accaunt_page.dart';
import 'package:milli/modules/catalog/presentation/ui/catalog_page.dart';
import 'package:milli/modules/favourite/presentation/ui/favourite_page.dart';
import 'package:milli/modules/home/presentation/ui/home_page.dart';
import 'package:milli/modules/shopping/presentation/ui/shopping_page.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbarScreen> {
  int _currenIndex = 0;
  final List<Widget> _screens = const [
    HomeePage(),
    CatalogPage(),
    ShoppingPage(),
    FavouritePage(),
    AccauntPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currenIndex],
      bottomNavigationBar: SizedBox(
        height: 90,
        width: double.infinity,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(SvgImages.home,
                    width: 30,
                    color: _currenIndex == 0 ? primaryColor : Colors.black),
                label: "Главная"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  SvgImages.menu,
                  width: 30,
                  color: _currenIndex == 1 ? primaryColor : Colors.black,
                ),
                label: "Каталог"),
            BottomNavigationBarItem(
                icon: Stack(children: [
                  SvgPicture.asset(
                    SvgImages.shopping,
                    width: 30,
                    color: _currenIndex == 2 ? primaryColor : Colors.black,
                  ),
                  Positioned(
                      left: 10,
                      bottom: 13,
                      child: Container(
                        width: 18,
                        height: 16,
                        decoration: ShapeDecoration(
                          color: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '35',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      )),
                ]),
                label: "Корзина"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  SvgImages.favourite,
                  width: 30,
                  color: _currenIndex == 3 ? primaryColor : Colors.black,
                ),
                label: "Избранные"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  SvgImages.user,
                  width: 30,
                  color: _currenIndex == 4 ? primaryColor : Colors.black,
                ),
                label: "Войти"),
          ],
          currentIndex: _currenIndex,
          onTap: (value) {
            _currenIndex = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}
