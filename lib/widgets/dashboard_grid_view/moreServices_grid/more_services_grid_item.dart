import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/dimen.dart';
import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:oneplus/widgets/text_label.dart';

class DashboardMoreSevicesGridItem extends StatelessWidget {
  const DashboardMoreSevicesGridItem(
      {super.key, required this.dashboardGridModel});

  final DashboardGridModel dashboardGridModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(Dimension.paddingSmall),
              decoration: BoxDecoration(
                color: moreServicebgColor,
                borderRadius:
                    BorderRadius.circular(Dimension.cornerRadiusMedium),
              ),
              child: Image.asset(
                dashboardGridModel.iconPath,
                height: Dimension.imageXSmall,
                width: Dimension.imageXSmall,
                color: moreServiceIconColor,
              ),
            ),
          ],
        ),
        TextLabel(
          label: dashboardGridModel.label,
          fontSize: Dimension.textSizeXSmall,
          labelColor: blackColor,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
