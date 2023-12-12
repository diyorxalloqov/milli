import 'dart:async';

import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/png_images.dart';
import 'package:milli/modules/global/presentation/product/helpers/spacer_widget.dart';

class FirstWidget extends StatefulWidget {
  const FirstWidget({super.key});

  @override
  State<FirstWidget> createState() => FirstWidgetState();
}

class FirstWidgetState extends State<FirstWidget> {
  late PageController _pageController;
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    _timer = Timer.periodic(const Duration(seconds: 7), (timer) {
      // 2 data length this is coming bloc state
      if (_currentPage < 2) {
        _currentPage++;
      } else if (_currentPage == _currentPage - 1) {
        _pageController.jumpToPage(_currentPage);
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(seconds: 2),
        curve: Curves.ease,
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
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
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade200,
                    image: const DecorationImage(
                      image: AssetImage(PngImages.ellipse),
                      alignment: Alignment.centerRight
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Тяжёлое машиностроение — это вам не песнь светлого будущего",
                                style: TextStyle(
                                  color: blackColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  fixedSize: const Size(150, 20),
                                ),
                                child: const Text(
                                  "Узнать больше",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Image(image: AssetImage(PngImages.phone))
                      ],
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
          const SpaceHeight(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // i coming backend data length
              for (int i = 0; i < 3; i++)
                AnimatedContainer(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: _currentPage == i
                        ? primaryColor
                        : blackColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  width: _currentPage == i ? 25 : 10,
                  height: 10,
                  duration: const Duration(milliseconds: 300),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
