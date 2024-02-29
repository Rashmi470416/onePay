import 'dart:ui';

class DashboardGridModel {
  DashboardGridModel(
      {required this.label,
      required this.iconPath,
      required this.pageToNavigate,
      this.color,
      this.badgeCount = 0,
      this.gridCategory});

  int? badgeCount;
  String iconPath;
  String label;
  String pageToNavigate;
  String? gridCategory;
  Color? color;
}
