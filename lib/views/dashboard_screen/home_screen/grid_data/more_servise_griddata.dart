import 'package:oneplus/constant/image_const.dart';
import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';

class DashboardGridMoreServicesdata {
  List<DashboardGridModel> moreServicesItemList = [
    DashboardGridModel(
      label: 'Invest',
      iconPath: ImageConstant.investImg,
      pageToNavigate: '',
      badgeCount: 3,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Loans',
      iconPath: ImageConstant.loansImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Insurances',
      iconPath: ImageConstant.heartImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Fastag',
      iconPath: ImageConstant.smartCarImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
  ];
}
