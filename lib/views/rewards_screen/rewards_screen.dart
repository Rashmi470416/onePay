import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/utils/display_utils.dart';
import 'package:oneplus/views/rewards_screen/my_points_items.dart';
import 'package:oneplus/views/rewards_screen/rewars_item.dart';
import 'package:oneplus/widgets/text_button.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({super.key});

  @override
  State<RewardsScreen> createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {
  @override
  int _currentIndex = 0;

  List gameList = [
    const Item1(),
    const Item2(),
    const Item3(),
  ];

  List pointList = [const PointItem1(), const PointItem2(), const PointItem3()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  int index = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            vGap(20),
            myRewardsSlide(),
            vGap(20),
            myPoints(),
            vGap(20),
            wallets(),
            vGap(30)
          ],
        ),
      ),
    );
  }

  Widget myRewardsSlide() {
    return Column(
      children: [
        const Text(
          "500",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Text(
          "Total Rewards ",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        vGap(30),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "My Rewards",
                style: TextStyle(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 210),
              child: Text(
                "More",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Icon(Icons.chevron_right_rounded)
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 210.0,
            autoPlay: true,
            viewportFraction: 0.6,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 1.0,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: gameList.map((card) {
            return Builder(builder: (BuildContext context) {
              return Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0)),
                child: card,
              );
            });
          }).toList(),
        ),
      ],
    );
  }

  Widget myPoints() {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "My Points",
                style: TextStyle(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 210),
              child: Text(
                "More",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Icon(Icons.chevron_right_rounded)
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 210.0,
            autoPlay: true,
            viewportFraction: 0.6,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 1.0,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: pointList.map((card) {
            return Builder(builder: (BuildContext context) {
              return Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0)),
                child: card,
              );
            });
          }).toList(),
        ),
      ],
    );
  }

  Widget wallets() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "My Points",
                style: TextStyle(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 210),
              child: Text(
                "More",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Icon(Icons.chevron_right_rounded)
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              ElevvatedButtonWidget(
                buttonText: "Internal Wallet",
              ),
              ElevvatedButtonWidget(
                buttonText: "External Wallet",
              ),
              // ElevvatedButtonWidget(
              //   buttonText: "Reserve Wallet",
              // )
            ],
          ),
        )
      ],
    );
  }
}
