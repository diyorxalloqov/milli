import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';

class InputEmail extends StatefulWidget {
  const InputEmail({super.key});

  @override
  State<InputEmail> createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Text(
          'Изменение адрес эл. почты',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF9F9F9),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 21),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Укажите адрес электронной почты',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        hintText: 'Эл. почта',
                        hintStyle: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: primaryColor,
                  fixedSize: Size(345.0, 50.0),
                ),
                child: Text(
                  'Сохранить',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF9F9F9),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
