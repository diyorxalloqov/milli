import 'package:flutter/material.dart';
import 'package:milli/assets/constants/png_images.dart';
import 'package:milli/modules/global/widgets/extensions/size.dart';

class ImagePageView extends StatefulWidget {
  const ImagePageView({super.key});

  @override
  State<ImagePageView> createState() => FirstWidgetState();
}

class FirstWidgetState extends State<ImagePageView> {
  late PageController _pageController;
  int _currentPage = 0;
  List items = ["", "", "", ""];

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.25,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                _currentPage = value;
                setState(() {});
              },
              itemBuilder: (context, index) {
                return Center(
                  child: Image.asset(
                    PngImages.macBook,
                    fit: BoxFit.fitHeight,
                  ),
                );
              },
              itemCount: items.length,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: context.right + 25),
              height: context.height * 0.05,
              width: context.width * 0.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black12),
              child: Center(
                child: Text("${_currentPage+1}/${items.length}"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
