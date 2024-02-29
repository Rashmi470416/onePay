import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/dimen.dart';
import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:oneplus/utils/display_utils.dart';
import 'package:oneplus/widgets/text_label.dart';

class OfferGameGridItem extends StatelessWidget {
  const OfferGameGridItem({super.key, required this.dashboardGridModel});

  final DashboardGridModel dashboardGridModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          elevation: 10,
          color: moneyTransItemColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              ClipRRect(
                child: Image.asset(
                  dashboardGridModel.iconPath,
                  height: Dimension.imageSmall,
                  width: Dimension.imageSmall,
                ),
              ),
              hGap(5),
              TextLabel(
                labelColor: blackColor,
                label: dashboardGridModel.label,
                fontSize: Dimension.textSizeSmall,
              )
            ],
          ),
        ),
      ],
    );
  }
}
