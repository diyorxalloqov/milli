import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/png_images.dart';
import 'package:milli/modules/accaunt/presentation/ui/user_page/delete_acc.dart';
import 'package:milli/modules/accaunt/presentation/ui/user_page/input_email.dart';
import 'package:milli/modules/accaunt/presentation/ui/user_page/input_name.dart';
import 'package:milli/modules/accaunt/presentation/ui/widgets/user_info_widget.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'Мои данные',
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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: context.height * 0.1,
                    width: context.width * 0.21,
                    decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(PngImages.phone)),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  const Text(
                    'Имя Фамилия',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF171515),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              UserInfoWidget(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputName()));
                },
                title: 'Редактировать имя',
                color: Color(0xFF171515),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    CupertinoContextMenu(
                      previewBuilder: (context, animation, child) =>
                          SizedBox.shrink(),
                      actions: [
                        CupertinoContextMenuAction(
                          child: Center(
                            child: Text('Пол'),
                          ),
                        ),
                        CupertinoContextMenuAction(
                          child: Center(
                            child: Text(
                              'Мужской',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF00B709),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        CupertinoContextMenuAction(
                          child: Center(
                            child: Text(
                              'Женский',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF00B709),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CupertinoContextMenuAction(
                          child: Center(
                            child: Text(
                              'Отмена',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF00B709),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Пол - Мужской',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF171515),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              UserInfoWidget(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InputEmail(),
                      ));
                },
                color: Color(0xFF171515),
                title: 'Изменить email',
              ),
              UserInfoWidget(
                onTap: () {
                  showAdaptiveDialog(
                    context: context,
                    builder: (context) => AlertDialog.adaptive(
                      title: Text('Выход из системы'),
                      content: Text('Вы выходите из системы? '),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Нет'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Да'),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                color: Color(0xFFF71C1C),
                title: 'Выйти из аккаунта',
              ),
              UserInfoWidget(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeleteAccPage(),
                    ),
                  );
                },
                color: Color(0xFF171515),
                title: 'Удалить аккаунт',
              )
            ],
          ),
        ),
      ),
    );
  }
}
