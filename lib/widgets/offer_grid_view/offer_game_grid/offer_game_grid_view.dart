import 'package:flutter/material.dart';

import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/widgets/offer_grid_view/offer_game_grid/offer_game_grid_item.dart';

class OfferGameGridView extends StatefulWidget {
  const OfferGameGridView({super.key, required this.dashboardGridModelList});

  final List<DashboardGridModel> dashboardGridModelList;

  @override
  State<OfferGameGridView> createState() => _OfferGameGridViewState();
}

class _OfferGameGridViewState extends State<OfferGameGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 1.0,
          childAspectRatio: 3.0),
      itemBuilder: (context, index) {
        DashboardGridModel dashboardGridModel =
            widget.dashboardGridModelList[index];
        return InkWell(
          child: OfferGameGridItem(
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
