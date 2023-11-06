import 'package:flutter/material.dart';
import 'package:milli/modules/bottom_navigation_bar/presentation/bottom_navbar.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const BottomNavbarScreen()
        // const SignUpPage(),
        );
  }
}
