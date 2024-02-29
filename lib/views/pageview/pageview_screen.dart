import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oneplus/views/login_screen/login_screen.dart';
import 'package:oneplus/views/splash_screen/splash_screen.dart';
import 'package:oneplus/views/splash_screen1/spalsh_screen1.dart';
import 'package:oneplus/views/splash_screen2/splash_screen2.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  late int selectedPage;
  // final PageController? _pageController;

  Timer? _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  final List<Widget> _pages = [
    const SpashScreen(),
    const SplashSCreen1(),
    const SplashSCreen2(),
    const LoginSCreen()
  ];
  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);

    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (selectedPage < 3) {
        selectedPage++;
      } else {
        selectedPage = 0;
      }

      _pageController.animateToPage(
        selectedPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    selectedPage = page;
                  });
                },
                itemCount: _pages.length,
                itemBuilder: (BuildContext context, int index) {
                  return _pages[index % _pages.length];
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(
                height: 10,
                margin: EdgeInsets.only(right: 5),
                child: PageViewDotIndicator(
                  currentItem: selectedPage,
                  count: _pages.length,
                  unselectedColor: Colors.black26,
                  selectedColor: Colors.blue,
                  duration: const Duration(milliseconds: 200),
                  boxShape: BoxShape.circle,
                  onItemClicked: (index) {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
