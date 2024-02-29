import 'package:flutter/material.dart';

import 'package:oneplus/model/offer/offer_grid_model.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/widgets/offer_grid_view/offer_coupons_grid/offer_coupen_grid_item.dart';

class OfferCoupensGridView extends StatefulWidget {
  const OfferCoupensGridView({super.key, required this.dashboardGridModelList});

  final List<OffersGridModel> dashboardGridModelList;

  @override
  State<OfferCoupensGridView> createState() => _OfferCoupensGridViewState();
}

class _OfferCoupensGridViewState extends State<OfferCoupensGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 1.0,
          childAspectRatio: 2.6),
      itemBuilder: (context, index) {
        OffersGridModel dashboardGridModel =
            widget.dashboardGridModelList[index];
        return InkWell(
          child: OfferCoupenGridItem(
            offerGridModel: dashboardGridModel,
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
