import 'dart:async';
import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/image_const.dart';
import 'package:oneplus/utils/display_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  String? employeeIdPref;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            vGap(200),
            Center(child: Image.asset(ImageConstant.oneplusSplashImg)),
            const Center(
                child: Text(
              "ONEAPP",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: blueColor,
                  fontFamily: AutofillHints.newUsername),
            )),
            vGap(250),
            const Center(
                child: Text(
              "Your Perfect Payment Partner",
              style: TextStyle(color: blueColor, fontWeight: FontWeight.w400),
            )),
            vGap(5),
            // DotsIndicator(
            //   dotsCount: 4,
            //   decorator: const DotsDecorator(
            //     color: blueColor,
            //     activeColor: greyColor,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void initState() {
    // getValidation().whenComplete(() async {
    //   Timer(Duration(seconds: 3), () {
    //     Navigator.pushNamed(
    //         context,
    //         employeeIdPref == null
    //             ? AppRoutes.loginScreen
    //             : AppRoutes.loginScreen);
    //   });
    // });
    super.initState();
  }

  Future getValidation() async {
    final SharedPreferences sharedPrefEmployeeId =
        await SharedPreferences.getInstance();
    final employeeId = sharedPrefEmployeeId.getString("employeeId");
    setState(() {
      employeeIdPref = employeeId.toString();
    });
    print(employeeIdPref);
  }
}
