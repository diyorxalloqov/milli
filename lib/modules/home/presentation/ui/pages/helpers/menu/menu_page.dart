import 'package:flutter/material.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';
import 'package:milli/modules/global/widgets/search_textformfield_widget.dart';
import 'package:milli/modules/home/presentation/ui/pages/helpers/menu/widgets/category_title.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SearchTextFormFieldWidget(
                  text: "Поиск товаров и категории",
                  controller: _textEditingController),
            ),
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.only(
                  top: context.height * 0.02,
                  left: context.width * 0.03,
                  right: context.width * 0.03),
              itemBuilder: (context, index) {
                return CategoryTitle(
                  onTap: () {},
                  text: "Телефоны и гаджеты",
                );
              },
              itemCount: 20,
            ))
          ],
        ),
      ),
    );
  }
}
