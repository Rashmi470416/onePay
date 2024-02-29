import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/dimen.dart';
import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/utils/display_utils.dart';
import 'package:oneplus/views/dashboard_screen/home_screen/grid_data/dashboard_bill_data.dart';
import 'package:oneplus/views/dashboard_screen/home_screen/grid_data/money_trans_data.dart';
import 'package:oneplus/views/dashboard_screen/home_screen/grid_data/more_servise_griddata.dart';
import 'package:oneplus/views/dashboard_screen/home_screen/grid_data/recentTrans_data.dart';
import 'package:oneplus/views/dashboard_screen/home_screen/grid_data/ticket_grid_data.dart';
import 'package:oneplus/widgets/dashboard_grid_view/moneyTrans_grid/dashboard_moneyTrans_grid_view.dart';
import 'package:oneplus/widgets/dashboard_grid_view/moreServices_grid/dashboard_moreServices_grid_view.dart';
import 'package:oneplus/widgets/dashboard_grid_view/recentTrans_grid/recentTrns_grid_view.dart';
import 'package:oneplus/widgets/dashboard_grid_view/ticketBook_grid/dashbord_ticket_grid_view.dart';
import 'package:oneplus/widgets/text_label.dart';

class HomeDashboardScreen extends StatefulWidget {
  const HomeDashboardScreen({super.key});

  @override
  State<HomeDashboardScreen> createState() => _HomeDashboardScreenState();
}

class _HomeDashboardScreenState extends State<HomeDashboardScreen> {
  List<DashboardGridModel> myAppList = [];
  final List<DashboardGridModel> workspaceList =
      MoneyTransItemDatas().moneyTransItemList;
  final List<DashboardGridModel> rechargeBillList =
      DashboardGridBilldata().myAppItemList;

  final List<DashboardGridModel> ticketbookList =
      DashboardGridTicketdata().ticketItemList;

  final List<DashboardGridModel> moreServicesList =
      DashboardGridMoreServicesdata().moreServicesItemList;

  final List<DashboardGridModel> recentTrnsList =
      DashboardRecentTransdata().recentTransItemList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myAppList = DashboardGridBilldata()
        .myAppItemList
        .where((element) =>
            element.gridCategory ==
                EnumBottomNavCategoryType.teacher.toString() ||
            element.gridCategory == EnumBottomNavCategoryType.global.toString())
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          vGap(10),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimension.paddingLarge,
              right: Dimension.paddingLarge,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextLabel(
                    label: 'Money Transfer',
                    fontSize: Dimension.textSizeNormal,
                    fontWeight: FontWeight.w800),
                Row(
                  children: [Text("More"), Icon(Icons.chevron_right)],
                )
              ],
            ),
          ),
          vGap(5),
          Padding(
            padding: const EdgeInsets.only(
              left: Dimension.paddingXSmall,
              right: Dimension.paddingXSmall,
            ),
            child: DashboardGridViewForMoneyBill(
                dashboardGridModelList: workspaceList),
          ),
          vGap(7),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimension.paddingLarge,
              right: Dimension.paddingLarge,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextLabel(
                  label: 'Recharege & Bill Payment',
                  fontSize: Dimension.textSizeNormal,
                  fontWeight: FontWeight.w800,
                ),
                Row(
                  children: [Text("More"), Icon(Icons.chevron_right)],
                )
              ],
            ),
          ),
          vGap(7),
          Padding(
              padding: const EdgeInsets.only(
                left: Dimension.paddingXSmall,
                right: Dimension.paddingXSmall,
              ),
              child: DashboardGridViewForMoneyBill(
                  dashboardGridModelList: rechargeBillList)),
          vGap(10),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimension.paddingLarge,
              right: Dimension.paddingLarge,
            ),
            child: Row(
              children: [
                TextLabel(
                  label: 'Ticket Booking',
                  fontSize: Dimension.textSizeNormal,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
          vGap(10),
          Padding(
            padding: const EdgeInsets.only(),
            child:
                DashboardGridTicketView(dashboardGridModelList: ticketbookList),
          ),
          vGap(12),
          const Padding(
            padding: EdgeInsets.only(
              left: Dimension.paddingLarge,
              right: Dimension.paddingLarge,
            ),
            child: Row(
              children: [
                TextLabel(
                  label: 'More Services',
                  fontSize: Dimension.textSizeNormal,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
          vGap(10),
          Padding(
            padding: const EdgeInsets.only(),
            child: DashboardGridMoreServiceView(
                dashboardGridModelList: moreServicesList),
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
                  label: 'Recent Transactions',
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
            padding: const EdgeInsets.only(left: 48, right: 48),
            child: SizedBox(
              height: 55,
              width: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.dashboardScreen);
                },
                child: Text(
                  "Recieve Money",
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
          ),
          vGap(60),
        ],
      ),
    );
  }
}

enum EnumBottomNavCategoryType { student, teacher, global }
