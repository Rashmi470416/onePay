import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/dimen.dart';

class TextLabel extends StatelessWidget {
  const TextLabel({
    super.key,
    required this.label,
    this.fontWeight,
    this.labelColor,
    this.textAlign,
    this.fontSize = Dimension.textSizeNormal,
  });

  final double? fontSize;
  final FontWeight? fontWeight;
  final String label;
  final Color? labelColor;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.normal,
        color: labelColor ?? blackColor,
        fontSize: fontSize,
      ),
    );
  }
}
