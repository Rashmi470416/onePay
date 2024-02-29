import 'package:flutter/material.dart';
import 'package:oneplus/constant/dimen.dart';

import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/widgets/dashboard_grid_view/recentTrans_grid/recentTrans_grid_item.dart';

class DashboardGridRecentTransView extends StatefulWidget {
  const DashboardGridRecentTransView(
      {super.key, required this.dashboardGridModelList});

  final List<DashboardGridModel> dashboardGridModelList;

  @override
  State<DashboardGridRecentTransView> createState() =>
      _DashboardGridRecentTransViewState();
}

class _DashboardGridRecentTransViewState
    extends State<DashboardGridRecentTransView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: Dimension.gapXLarge,
          crossAxisSpacing: 0.0),
      itemBuilder: (context, index) {
        DashboardGridModel dashboardGridModel =
            widget.dashboardGridModelList[index];
        return InkWell(
          child: DashboardRecentTransGridItem(
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
