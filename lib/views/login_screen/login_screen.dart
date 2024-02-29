import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/string_const.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/utils/display_utils.dart';

class LoginSCreen extends StatefulWidget {
  const LoginSCreen({super.key});

  @override
  State<LoginSCreen> createState() => _LoginSCreenState();
}

class _LoginSCreenState extends State<LoginSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("login"), backgroundColor: Colors.redAccent),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
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
                    padding: const EdgeInsets.only(bottom: 50),
                    color: bgBlueColr,
                    height: 380,
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 80),
                      child: Text(
                        "LOGIN WITH YOUR \n MOBILE PHONE \n NUMBER",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ),
            ],
          )),
          vGap(30),
          _mobileNumberWidget(),
          vGap(10),
          _varifyBtn(),
          vGap(5),
          _textWidget()
        ],
      ),
    ));
  }

  Widget _mobileNumberWidget() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Container(
          width: 380,
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: mobBgColor,
              border: Border.all(
                  width: 0, color: mobBgColor, style: BorderStyle.solid)),
          child: TextFormField(
            keyboardType: TextInputType.number,
            validator: (v) {
              if (v!.isEmpty) {
                return CStrings.pleaseenterYourMbileNumber;
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 8, left: 14, right: 9),
                  child: Text('+91',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: blueColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 19)),
                ),
                hintText: 'Enter your Mobile Number',
                hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: greyColor),
                contentPadding: EdgeInsets.all(15),
                fillColor: mobBgColor,
                focusColor: greyColor,
                border: InputBorder.none),
            onChanged: (value) {
              // Do something
            },
          ),
        ),
      ),
    );
  }

  Widget _varifyBtn() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        width: getWidth(context),
        child: CupertinoButton(
            borderRadius: BorderRadius.circular(25),
            color: bgBlueColr,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.otpScreen);
              // if (_formKey.currentState!.validate()) {
              //   _formKey.currentState!.save();
              //   dataFromLogin();
              //   //   _loginLoader(context);
              //   setState(() {
              //     _empIdController.text == "";
              //     _passwordController.text == "";
              //   });
              // }
            },
            child: const Text(
              "Verify",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: whiteColor, fontSize: 18),
            )),
      ),
    );
  }

  Widget _textWidget() {
    return const Text(
      "Your personal details are safe with us  \n Read our Privacy Policy and Terms and \n Conditions",
      style: TextStyle(color: termCondionColor, fontSize: 16),
      textAlign: TextAlign.center,
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(2, size.height);
    //start path with this if you are making at bottom
    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
