import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:milli/core/db/shared/shared_preferences.dart';
import 'package:milli/core/router/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: kIsWeb ? const Size(1440, 1024) : const Size(412, 892),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteList.router.onGenerate,
            initialRoute: '/',
          );
        });
  }
}

/// Splash screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => checkToken(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // child: Image.asset(PngImages.applogo),
        child: Text("Splash Screen"),
      ),
    );
  }

  void checkToken(BuildContext context) async {
    String token = StorageRepository.getString("access_token");

    if (token.isEmpty || JwtDecoder.isExpired(token)) {
      Navigator.of(context).pushNamedAndRemoveUntil(
          'bottomNavbar', /* sign_in */ (route) => false);
    } else {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('bottomNavbar', (route) => false);
    }
  }
}
