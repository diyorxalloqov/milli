import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/menu_widget.dart';
import 'package:milli/modules/global/widgets/search_textformfield_widget.dart';
import 'package:milli/modules/global/widgets/textFormfield_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late TextEditingController _searchController;

  bool _isCheck = false;

  @override
  void initState() {
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
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
              top: context.left / 9 + 24,
              left: context.left / 9 + 24,
              bottom: context.left / 9 + 24,
              right: context.left / 9 + 24),
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
                      "Зарегистрируйтесь в системе",
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
                    TextFormFieldWidget(
                        controller: _confirmPasswordController,
                        hintText: "Подтвердить пароль"),
                  ],
                ),
              ),
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
                  RichText(
                    maxLines: 3,
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Я согласен с ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF999999)),
                        ),
                        TextSpan(
                          onEnter: (event) => PointerEnterEvent(),
                          text: 'политикой\nконфиденциальности',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF171515),
                          ),
                        ),
                        const TextSpan(
                          text: ' и',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF999999)),
                        ),
                        TextSpan(
                          onEnter: (event) => PointerEnterEvent(),
                          text: ' условиями\n',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF171515),
                          ),
                        ),
                        const TextSpan(
                          text: 'пользование.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF999999),
                          ),
                        ),
                      ],
                    ),
                  )
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
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )),
              SizedBox(height: context.height * 0.04),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Уже есть аккаунт",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
