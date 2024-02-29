import 'package:flutter/material.dart';
import 'package:oneplus/constant/dimen.dart';

import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/widgets/dashboard_grid_view/moreServices_grid/more_services_grid_item.dart';

class DashboardGridMoreServiceView extends StatefulWidget {
  const DashboardGridMoreServiceView(
      {super.key, required this.dashboardGridModelList});

  final List<DashboardGridModel> dashboardGridModelList;

  @override
  State<DashboardGridMoreServiceView> createState() =>
      _DashboardGridMoreServiceViewState();
}

class _DashboardGridMoreServiceViewState
    extends State<DashboardGridMoreServiceView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: Dimension.gapLarge,
      ),
      itemBuilder: (context, index) {
        DashboardGridModel dashboardGridModel =
            widget.dashboardGridModelList[index];
        return InkWell(
          child: DashboardMoreSevicesGridItem(
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
