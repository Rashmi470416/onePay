import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';

class ElevvatedButtonWidget extends StatelessWidget {
  const ElevvatedButtonWidget(
      {super.key,
      this.onPressed,
      this.iconColor = Colors.black,
      this.iconSize = 16,
      this.buttonText});

  final void Function()? onPressed;
  final Color? iconColor;
  final double? iconSize;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        buttonText!,
        style: TextStyle(color: blackColor, fontSize: 17),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: greyColor2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0),
    );
  }
}
