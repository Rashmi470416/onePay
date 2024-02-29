import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget(
      {super.key,
      required this.icon,
      this.onPressed,
      this.iconColor = Colors.black,
      this.iconSize = 16});

  final void Function()? onPressed;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
