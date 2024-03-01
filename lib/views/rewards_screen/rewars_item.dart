import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/image_const.dart';

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: rewardspayColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "10 - 50",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 7),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: yellowColor,
                  child: Image.asset(
                    ImageConstant.clockImg,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: [Text("Cash Back on next water \n bill payment")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset(
                  ImageConstant.oneplusSplashImg,
                  height: 40,
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    ImageConstant.waterImg,
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

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: blackCoolor2,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "10 - 50",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 7),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: blackColor2,
                  child: Image.asset(
                    ImageConstant.clockImg,
                    color: blackColor,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [Text("Cash Back on next water bill")],
            ),
          ),
          Container(
            width: 699,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0)),
              elevation: 0,
              color: whiteColor,
              child: const Text(
                  "                    Redeemed                                  "),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset(
                  ImageConstant.oneplusSplashImg,
                  height: 40,
                  width: 40,
                ),
                Image.asset(
                  ImageConstant.clockImg,
                  height: 80,
                  width: 80,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "10 - 50",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 7),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: greyColor,
                  child: Image.asset(
                    ImageConstant.clockImg,
                    color: blackColor,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [Text("Cash Back on next water bill")],
            ),
          ),
          Container(
            width: 699,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0)),
              elevation: 0,
              color: whiteColor,
              child: const Text(
                  "                    Expired                                  "),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset(
                  ImageConstant.oneplusSplashImg,
                  height: 40,
                  width: 40,
                ),
                Image.asset(
                  ImageConstant.clockImg,
                  height: 80,
                  width: 80,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
