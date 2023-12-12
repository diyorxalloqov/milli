import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/auth/domain/usecase/login_use_case.dart';
import 'package:milli/modules/auth/domain/usecase/register_use_case.dart';
import 'package:milli/modules/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:milli/modules/global/presentation/product/helpers/spacer_widget.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/textFormfield_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignInPage> {
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  late AuthBloc _authBloc;

  bool _isCheck = false;

  @override
  void initState() {
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    _authBloc = AuthBloc(LoginUseCase(), RegisterUseCase());
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
          const SpaceWidth(),
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
                    const SpaceHeight(),
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
                      Text(
                        "Запомнить меня",
                        style: TextStyle(
                          color: blackColor,
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
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'bottomNavbar', (route) => false);
                  },
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
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            'sign_up', (route) => false,
                            arguments: _authBloc);
                      },
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
