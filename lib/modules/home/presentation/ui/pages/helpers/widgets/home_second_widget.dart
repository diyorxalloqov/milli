import 'dart:async';

import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/png_images.dart';

class SecondWidget extends StatefulWidget {
  const SecondWidget({super.key});

  @override
  State<SecondWidget> createState() => FirstWidgetState();
}

class FirstWidgetState extends State<SecondWidget> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    Timer.periodic(const Duration(seconds: 7), (timer) {
      // 2 data length this is coming bloc state
      if (_currentPage < 2) {
        _currentPage++;
      } else if (_currentPage == 2) {
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
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
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Товар дня",
                                style: TextStyle(
                                  overflow: TextOverflow.clip,
                                  color: Color(0xFF171515),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Image(
                                image: AssetImage(PngImages.phone),
                                width: 75,
                              )
                            ],
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MacBook Pro 13 inch 8/256/A2338",
                                style: TextStyle(
                                    color: Color(0xFF171515),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.ellipsis),
                                maxLines: 2,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "14 000 000 сум",
                                style: TextStyle(
                                    color: Color(0xFF171515),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.clip),
                                maxLines: 2,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
          const SizedBox(height: 10),
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
                        : const Color(0xFF171515).withOpacity(0.6),
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
