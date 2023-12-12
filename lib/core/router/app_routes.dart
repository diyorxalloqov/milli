import 'package:flutter/material.dart';
import 'package:milli/app.dart';
import 'package:milli/modules/accaunt/presentation/ui/user_page/user_info_page.dart';
import 'package:milli/modules/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:milli/modules/auth/presentation/ui/login_page.dart';
import 'package:milli/modules/auth/presentation/ui/register_page.dart';
import 'package:milli/modules/bottom_navigation_bar/presentation/bottom_navbar.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/menu/menu_page.dart';

class RouteList {
  static final RouteList _generate = RouteList._init();
  static RouteList get router => _generate;

  RouteList._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _navigate(const SplashScreen());
      case "bottomNavbar":
        return _navigate(const BottomNavbarScreen());
      case "sign_in":
        return _navigate(const SignInPage());
      case "sign_up":
        return _navigate(SignUpPage(authBloc: settings.arguments as AuthBloc));
      case "menu_page":
        return _navigate(MenuPage());
    }
    return null;
  }

  _navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
  // SecondPage(data: settings.arguments as UserModel)
}
