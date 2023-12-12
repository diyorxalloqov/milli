import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';


class InputName extends StatefulWidget {
  const InputName({super.key});

  @override
  State<InputName> createState() => _InputNameState();
}

class _InputNameState extends State<InputName> {
  late TextEditingController _surname;
  late TextEditingController _name;
  late TextEditingController _lastname;

  @override
  void initState() {
    // TODO: implement initState
    _surname = TextEditingController();
    _name = TextEditingController();
    _lastname = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _surname.dispose();
    _name.dispose();
    _lastname.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        leading: IconButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.white)),
        actions: [
          TextButton(
            onPressed: () {
              // when it tap this text, something will do here
            },
            child: Text(
              'Готово',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
        title: const Text(
          'Редактировать имя',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF9F9F9),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _surname,
                      decoration: InputDecoration(
                        hintText: 'Фамилия',
                        suffix: InkWell(
                          onTap: () {},
                          child: Text(
                            'Указать',
                            style: TextStyle(
                              color: Color(0xFF00B709),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _name,
                      decoration: InputDecoration(
                        hintText: 'Имя',
                        suffix: InkWell(
                          onTap: () {},
                          child: Text(
                            'Указать',
                            style: TextStyle(
                              color: Color(0xFF00B709),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _lastname,
                      decoration: InputDecoration(
                        hintText: 'Отчество',
                        suffix: InkWell(
                          onTap: () {},
                          child: Text(
                            'Указать',
                            style: TextStyle(
                              color: Color(0xFF00B709),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
