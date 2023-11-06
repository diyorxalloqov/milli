import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/menu_widget.dart';
import 'package:milli/modules/global/widgets/search_textformfield_widget.dart';
import 'package:milli/modules/global/widgets/textFormfield_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignInPage> {
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  late TextEditingController _searchController;

  bool _isCheck = false;

  @override
  void initState() {
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
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
        child: Padding(
          padding: EdgeInsets.only(
              top: context.top / 9 + 24,
              left: context.left / 9 + 24,
              bottom: context.bottom / 9 + 24,
              right: context.right / 9 + 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  MenuWidget(
                    onTap: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                      child: SearchTextFormFieldWidget(
                          text: "Поиск товаров",
                          controller: _searchController)),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Войдите в свою учетную запись",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormFieldWidget(
                        controller: _phoneController,
                        hintText: "Ваш номер телефона"),
                    TextFormFieldWidget(
                        controller: _passwordController, hintText: "Пароль"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _isCheck,
                        onChanged: (v) {
                          _isCheck = v!;
                          setState(() {});
                        },
                        checkColor: Colors.white,
                        activeColor: primaryColor,
                      ),
                      const Text(
                        "Запомнить меня",
                        style: TextStyle(
                          color: Color(0xFF171515),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Забыли пароль?",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      fixedSize: const Size(double.infinity, 50)),
                  child: const Center(
                    child: Text(
                      "Войти",
                      style: TextStyle(
                        color: Color(0xFFF9F9F9),
                        fontSize: 16,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )),
              SizedBox(height: context.height * 0.04),
              Row(
                children: [
                  const Text(
                    "У вас нет аккаунта? ",
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Зарегистрируйтесь",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
