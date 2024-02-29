import 'package:flutter/material.dart';

import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/widgets/dashboard_grid_view/moneyTrans_grid/dashboard_moneyTrans_grid_item.dart';

class DashboardGridViewForMoneyBill extends StatefulWidget {
  const DashboardGridViewForMoneyBill(
      {super.key, required this.dashboardGridModelList});

  final List<DashboardGridModel> dashboardGridModelList;

  @override
  State<DashboardGridViewForMoneyBill> createState() =>
      _DashboardGridViewForMoneyBillState();
}

class _DashboardGridViewForMoneyBillState
    extends State<DashboardGridViewForMoneyBill> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 1.0,
          childAspectRatio: 2.6),
      itemBuilder: (context, index) {
        DashboardGridModel dashboardGridModel =
            widget.dashboardGridModelList[index];
        return InkWell(
          child: DashboardMoneyBillGridItem(
            dashboardGridModel: dashboardGridModel,
          ),
          onTap: () =>
              {Navigator.pushNamed(context, AppRoutes.dashboardScreen)},
        );
      },
      itemCount: widget.dashboardGridModelList.length,
      shrinkWrap: true,
      primary: false,
    );
  }
}
