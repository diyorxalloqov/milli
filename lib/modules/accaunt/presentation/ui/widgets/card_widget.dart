import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/modules/accaunt/presentation/ui/screens/cards_screen.dart';
import 'package:milli/modules/accaunt/presentation/ui/screens/check_screen.dart';
import 'package:milli/modules/accaunt/presentation/ui/screens/liked_screen.dart';
import 'package:milli/modules/accaunt/presentation/ui/screens/saved_screen.dart';
import 'package:milli/modules/accaunt/presentation/ui/screens/shopping_screen.dart';
import 'package:milli/modules/accaunt/presentation/ui/screens/star_brand_screen.dart';

class CardWidgets extends StatelessWidget {
  final String title;
  final String icon;
  final int index;

  const CardWidgets(
      {super.key,
      required this.title,
      required this.icon,
      required this.index});
  final List<Widget> _pages = const [
    CheckPage(),
    StarBrandPage(),
    ShoppingScreen(),
    SavedPage(),
    CardsPage(),
    LikedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: Color(0xFFCCCCCC), width: 1)),
        child: ListTile(
          onTap: () {
            Navigator.of(context, rootNavigator: false)
                .push(MaterialPageRoute(builder: (context) => _pages[index]));
          },
          title: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF171515),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
