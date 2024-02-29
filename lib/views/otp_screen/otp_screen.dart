import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/image_const.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/utils/text_style.dart';
import 'package:oneplus/views/login_screen/login_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../utils/display_utils.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

final _formKey = GlobalKey<FormState>();
TextEditingController otpController = TextEditingController();
TextEditingController _otpVarifyController = TextEditingController();
TextEditingController _employeeIdController = TextEditingController();

StreamController<ErrorAnimationType>? errorController;

bool hasError = false;
String currentText = "";
// OtpVerifyRes? _otpVerifyRes;
// ForgotPasswordRes? _forgotPasswordRes;
int secondsRemaining = 30;
bool enableResend = false;
Timer? timer;

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      // backgroundColor: blueColor,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                vGap(15),
                _imgWidget(),
                vGap(10),
                _verificationCode(),
                vGap(10),
                _userIdText(),
                _userPhoneNumber(),
                vGap(20),
                otpScreFilelds(),
                vGap(20),
                // _getOtpBtn(args["userId"].toString()),
                _getOtpBtn(""),
                vGap(10),
                // _resend(args["userId"].toString()),
                _resend(""),
                vGap(50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _imgWidget() {
    return Container(
        child: Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: WaveClipper(),
            child: Container(
              color: blueColor,
              height: 180,
            ),
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
              padding: EdgeInsets.only(bottom: 50),
              color: bgBlueColr,
              height: 280,
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(right: 0, bottom: 10),
                child: Image.asset(ImageConstant.otpImge),
              )),
        ),
      ],
    ));
  }

  Widget _verificationCode() {
    return Text(
      "OTP Varification",
      style: TextStyles.getSubTital(
          fontSize: 22, textColor: blackColor, fontWeight: FontWeight.bold),
    );
  }

  Widget _userIdText() {
    return Text(
      "Enter the code from the sms we sent  to",
      style: TextStyles.getSubTital(textColor: greyColor),
    );
  }

  Widget _userPhoneNumber() {
    return Text(
      "********79",
      style: TextStyles.getSubTital(
          textColor: blackColor, fontWeight: FontWeight.w600),
    );
  }

  void _resendCode() {
    //other code here
    setState(() {
      secondsRemaining = 30;
      enableResend = false;
    });
  }

  @override
  // dispose() {
  //   timer!.cancel();
  //   errorController!.close();
  //   super.dispose();
  // }

  Widget _resend(args) {
    return Column(
      children: [
        CupertinoButton(
            child: const Text(
              "  I didn't receive any code. RESEND",
              style: TextStyle(color: bgBlueColr, fontSize: 17),
            ),
            onPressed: () {}
            // enableResend ? _resendCode : null,
            ),
        // Text(
        //   'After $secondsRemaining seconds',
        //   style: TextStyle(color: redColor, fontSize: 10),
        // ),
      ],
    );
  }

  Widget _otpFeilds() {
    return SizedBox(
      width: getWidth(context) / 1.8,
      child: PinCodeTextField(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        errorTextSpace: 20,
        autoFocus: true,

        pinTheme: PinTheme(
          shape: PinCodeFieldShape.underline,
          fieldHeight: 50,
          fieldWidth: 50,
          activeBorderWidth: 0.0,
          activeFillColor: whiteColor,
          inactiveFillColor: whiteColor,
          selectedFillColor: whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        autoDismissKeyboard: true,
        appContext: context,
        length: 4,
        blinkWhenObscuring: true,
        animationType: AnimationType.fade,
        // validator: (v) {
        //   if (v!.length < 3) {
        //     return "Please enter otp";
        //   } else {
        //     return null;
        //   }
        // },

        boxShadows: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4.0,
          )
        ],

        cursorColor: whiteColor,
        cursorHeight: 10,
        animationDuration: Duration(milliseconds: 300),
        enableActiveFill: true,

        textStyle: TextStyle(color: blackColor),
        errorAnimationController: errorController,
        controller: otpController,
        keyboardType: TextInputType.number,
        onCompleted: (v) {
          debugPrint("Completed");
        },
        onChanged: (value) {
          debugPrint(value);
          setState(() {
            currentText = value;
          });
        },
        beforeTextPaste: (text) {
          debugPrint("Allowing to paste $text");
          return true;
        },
      ),
    );
  }

  Widget otpCfields() {
    return Container(
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _textFieldOTP(first: true, last: false),
              _textFieldOTP(first: false, last: false),
              _textFieldOTP(first: false, last: false),
              _textFieldOTP(first: false, last: true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getOtpBtn(args) {
    return SizedBox(
      width: getWidth(context) / 1.2,
      child: CupertinoButton(
          borderRadius: BorderRadius.circular(15),
          color: bgBlueColr,
          onPressed: () {
            Navigator.pushNamed(context,
                AppRoutes.dashboardScreen); // now i add to navigate dashboard

            // if (_formKey.currentState!.validate()) {
            //   _formKey.currentState!.save();
            //   if (otpController.text != "") {
            //     // "postOtpVarifyAction"(args);
            //     Text("postOtpVarifyAction");
            //   } else {
            //     showErrorMessage(context, "Please enter otp");
            //   }
            //   setState(() {
            //     otpController == "";
            //   });
            // }
          },
          child: const Center(
            child: Text(
              "Submit",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: whiteColor),
            ),
          )),
    );
  }

  // postOtpVarifyAction(args) async {
  //   try {
  //     var otpUrl = ApiEndPoint.baseUrl + ApiEndPoint.loginUrl;
  //     final forgetPayload = {
  //       "otpverify": true,
  //       "employee_id": args.toString(),
  //       "otp": otpController.text
  //     };

  //     final otpHeader = {"ver": 1};
  //     Response otpResponse = await Dio().post(otpUrl,
  //         data: forgetPayload, options: Options(headers: otpHeader));
  //     final otpResult = OtpVerifyRes.fromJson(otpResponse.data);
  //     print(otpResponse);
  //     setState(() {
  //       _otpVerifyRes = otpResult;
  //     });

  //     if (otpResult.result == "success") {
  //       showSuccessMessage(context, "OTP varify successfully");
  //       Navigator.pushNamedAndRemoveUntil(
  //           context,
  //           AppRoutes.confirmPasswordScreen,
  //           arguments: args,
  //           (route) => false);
  //     } else if (otpResult.error != "" || (otpResult.error!.isEmpty)) {
  //       showErrorMessage(context, "${otpResult.error}");
  //     } else {
  //       return null;
  //     }
  //   } on DioError catch (e) {
  //     print(e.error);
  //     print(e.message);
  //   }
  // }

  // postGetOtpAction(args) async {
  //   try {
  //     var forgotUrl = ApiEndPoint.baseUrl + ApiEndPoint.loginUrl;
  //     final forgetPayload = {
  //       "forgetpass_otp": true,
  //       "employee_id": args,
  //     };
  //     final stateHeader = {"ver": 1};
  //     Response forgetResponse = await Dio().post(forgotUrl,
  //         data: forgetPayload, options: Options(headers: stateHeader));
  //     final forgotResult = ForgotPasswordRes.fromJson(forgetResponse.data);
  //     print(forgetResponse);
  //     setState(() {
  //       _forgotPasswordRes = forgotResult;
  //     });

  //     if (forgotResult.result == "success") {
  //       showSuccessMessage(context, "OTP send Your registered mobile number");
  //     } else if (forgotResult.error != "" || (forgotResult.error!.isEmpty)) {
  //       showErrorMessage(context, "${forgotResult.error}");
  //     } else {
  //       return null;
  //     }
  //   } on DioError catch (e) {
  //     print(e.error);
  //     print(e.message);
  //   }
  // }

  // void initState() {
  //   errorController = StreamController<ErrorAnimationType>();
  //   super.initState();
  //   timer = Timer.periodic(Duration(seconds: 1), (_) {
  //     if (secondsRemaining != 0) {
  //       setState(() {
  //         secondsRemaining--;
  //       });
  //     } else {
  //       setState(() {
  //         enableResend = true;
  //       });
  //     }
  //   });
  // }

// String number="=+911234567890"

// String newNumber=number;

// String replaceCharAt(String oldString, int index, String newChar) {
//        return oldString.substring(0, index) + newChar + oldString.substring(index + 1);
//      }

//    for(int i=6; i<number.length;i++){
//          newNumber = replaceCharAt(newNumber, i, "*") ;
//          print("PHONE_NUMBER_LOOP:$newNumber");

//     }

//    print("FinalNumber:$newNumber");

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 75,
      child: AspectRatio(
        aspectRatio: 0.9,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: blueColor),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }

  Widget otpScreFilelds() {
    return OtpTextField(
      handleControllers: (controllers) {
        _otpVarifyController;
        _employeeIdController;
      },
      showFieldAsBox: true,
      fieldWidth: 70,
      autoFocus: true,
      borderWidth: 1.5,
      numberOfFields: 4,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(border: InputBorder.none),
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    );
  }
}
