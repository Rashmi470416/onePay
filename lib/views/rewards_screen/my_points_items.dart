import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/image_const.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PointItem1 extends StatelessWidget {
  const PointItem1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: parrotColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            ImageConstant.referFriendImg,
            height: 100,
            width: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 40),
            child: Row(
              children: [
                const Text(
                  "Play Games",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Image.asset(
                    ImageConstant.playGameImg,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PointItem2 extends StatelessWidget {
  const PointItem2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: vioLateColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            ImageConstant.referFriendImg,
            height: 100,
            width: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 40),
            child: Row(
              children: [
                const Text(
                  "Refer a Friend ",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset(
                    ImageConstant.mobileImage,
                    color: blackColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PointItem3 extends StatelessWidget {
  const PointItem3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircularPercentIndicator(
              radius: 40.0,
              lineWidth: 12.0,
              animation: true,
              percent: 0.4,
              center: const Text(
                "60.0%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              // footer: new Text(
              //   "Sales this week",
              //   style:
              //       new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              // ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: blueColor,
              backgroundColor: parrotColor),
          const Padding(
            padding: EdgeInsets.only(left: 50, bottom: 15),
            child: Row(
              children: [
                Text(
                  "Overall Usage",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
