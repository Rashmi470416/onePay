import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/dimen.dart';
import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:oneplus/model/offer/offer_grid_model.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/utils/display_utils.dart';
import 'package:oneplus/views/dashboard_screen/home_screen/grid_data/recentTrans_data.dart';
import 'package:oneplus/views/offers_screen/offer_grid_data/offer_coupons_data.dart';
import 'package:oneplus/views/offers_screen/offer_grid_data/offer_game_data.dart';
import 'package:oneplus/widgets/dashboard_grid_view/recentTrans_grid/recentTrns_grid_view.dart';
import 'package:oneplus/widgets/offer_grid_view/offer_coupons_grid/offer_coupen_grid_view.dart';
import 'package:oneplus/widgets/offer_grid_view/offer_game_grid/offer_game_grid_view.dart';
import 'package:oneplus/widgets/text_label.dart';

class OfferDashboardScreen extends StatefulWidget {
  const OfferDashboardScreen({super.key});

  @override
  State<OfferDashboardScreen> createState() => _OfferDashboardScreenState();
}

class _OfferDashboardScreenState extends State<OfferDashboardScreen> {
  List<DashboardGridModel> myAppList = [];

  final List<DashboardGridModel> recentTrnsList =
      DashboardRecentTransdata().recentTransItemList;

  final List<DashboardGridModel> offerGameList =
      OffersGridGamedata().offergameItemList;

  final List<OffersGridModel> offerCoupensList =
      OffersGridCouponsdata().offerCouponsItemList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // myAppList = DashboardGridBilldata()
    //     .myAppItemList
    //     .where((element) =>
    //         element.gridCategory ==
    //             EnumBottomNavCategoryType.teacher.toString() ||
    //         element.gridCategory == EnumBottomNavCategoryType.global.toString())
    //     .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          vGap(15),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimension.paddingLarge,
              right: Dimension.paddingLarge,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextLabel(
                    label: 'Games',
                    fontSize: Dimension.textSizeNormal,
                    fontWeight: FontWeight.w800),
                Row(
                  children: [Text("More"), Icon(Icons.chevron_right)],
                )
              ],
            ),
          ),
          vGap(8),
          Padding(
            padding: const EdgeInsets.only(
              left: Dimension.paddingXSmall,
              right: Dimension.paddingXSmall,
            ),
            child: OfferGameGridView(dashboardGridModelList: offerGameList),
          ),
          vGap(30),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimension.paddingLarge,
              right: Dimension.paddingLarge,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextLabel(
                    label: 'Coupons',
                    fontSize: Dimension.textSizeNormal,
                    fontWeight: FontWeight.w800),
                Row(
                  children: [Text("More"), Icon(Icons.chevron_right)],
                )
              ],
            ),
          ),
          vGap(12),
          Padding(
            padding: const EdgeInsets.only(),
            child:
                OfferCoupensGridView(dashboardGridModelList: offerCoupensList),
          ),
          vGap(10),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimension.paddingLarge,
              right: Dimension.paddingLarge,
            ),
            child: Row(
              children: [
                TextLabel(
                  label: 'Recent Teammates',
                  fontSize: Dimension.textSizeNormal,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
          vGap(10),
          Padding(
            padding: const EdgeInsets.only(),
            child: DashboardGridRecentTransView(
                dashboardGridModelList: recentTrnsList),
          ),
          vGap(18),
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: SizedBox(
              height: 55,
              width: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.dashboardScreen);
                },
                child: Text(
                  "Play Game",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                      fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: blueColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum EnumBottomNavCategoryType { student, teacher, global }
