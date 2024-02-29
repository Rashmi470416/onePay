import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final String icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    // var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    // var iconColor = isDark ? blackColor : redColor;

    return ListTile(
        onTap: onPress,
        leading: Image.asset(
          icon,
          color: blackColor,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.apply(color: blackColor)),
        ),
        trailing:
            const Icon(Icons.chevron_right, size: 30.0, color: blackColor));
  }
}
