import 'package:oneplus/constant/image_const.dart';
import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';

class DashboardGridBilldata {
  List<DashboardGridModel> myAppItemList = [
    DashboardGridModel(
      label: 'Mobile Recharge',
      iconPath: ImageConstant.mobileImage,
      pageToNavigate: '',
      badgeCount: 3,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Electricity Bill',
      iconPath: ImageConstant.lightModeImage,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'DTH Recharge',
      iconPath: ImageConstant.playImage,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Postpaid bill',
      iconPath: ImageConstant.receieptMinus,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    // DashboardGridModel(
    //   label: 'Leaderboard',
    //   iconPath: ImageConstant.instituteImage,
    //   pageToNavigate: '',
    //   badgeCount: 0,
    //   gridCategory: '',
    // ),
    // DashboardGridModel(
    //   label: 'Live Class',
    //   iconPath: ImageConstant.addUserImage,
    //   pageToNavigate: '',
    //   badgeCount: 0,
    //   gridCategory: '',
    // ),
  ];
}
