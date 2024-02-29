import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/image_const.dart';
import 'package:oneplus/utils/display_utils.dart';
import 'package:oneplus/views/login_screen/login_screen.dart';

class SplashSCreen2 extends StatefulWidget {
  const SplashSCreen2({super.key});

  @override
  State<SplashSCreen2> createState() => _SplashSCreen2State();
}

class _SplashSCreen2State extends State<SplashSCreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [cureveWdt(), vGap(180), dotIndicator()],
      ),
    ));
  }

  Widget cureveWdt() {
    return Container(
        child: Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: WaveClipper(),
            child: Container(
              color: blueColor,
              height: 200,
            ),
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
              padding: EdgeInsets.only(bottom: 50),
              color: bgBlueColr,
              height: 450,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Center(
                    child: Column(
                      children: [
                        vGap(70),
                        Image.asset(ImageConstant.plaincardimg2),
                        const Center(
                          child: Text(
                            " Fast and easy Wallet \n        Redemption",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        vGap(15),
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ],
    ));
  }

  Widget dotIndicator() {
    return const Column(
      children: [
        Center(
            child: Text(
          "Your Perfect Payment Partner",
          style: TextStyle(color: blueColor, fontWeight: FontWeight.w400),
        )),
        // DotsIndicator(
        //   dotsCount: 4,
        //   decorator: const DotsDecorator(
        //     color: blueColor,
        //     activeColor: greyColor,
        //   ),
        // )
      ],
    );
  }
}
