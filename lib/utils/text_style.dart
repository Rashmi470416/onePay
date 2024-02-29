import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';

class TextStyles {
  static getHeadLine1(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? textColor,
      String? fontFamily}) {
    return getBaseStyle(
        fontSize ?? 25, fontWeight ?? FontWeight.w600, textColor ?? whiteColor,
        fontFamily: fontFamily ?? "Cera");
  }

  static getSubTital(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? textColor,
      String? fontFamily}) {
    return getBaseStyle(
        fontFamily: fontFamily ?? "Cera",
        fontSize ?? 20,
        fontWeight ?? FontWeight.w400,
        textColor ?? blueColor);
  }

  static getSubTital2(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? textColor,
      String? fontFamily}) {
    return getBaseStyle(
        fontFamily: fontFamily ?? "Cera",
        fontSize ?? 16,
        fontWeight ?? FontWeight.w400,
        textColor ?? blueColor);
  }

  static TextStyle getBaseStyle(
      double fontSize, FontWeight fontWeight, Color color,
      {required String fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
