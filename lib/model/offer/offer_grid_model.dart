import 'dart:ui';

class OffersGridModel {
  OffersGridModel(
      {required this.label,
      required this.iconPath,
      required this.title,
      this.offcolor,
      this.badgeCount = 0,
      required this.subtitle});

  int? badgeCount;
  String iconPath;
  String label;
  String title;
  String subtitle;
  Color? offcolor;
}
