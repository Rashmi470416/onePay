import 'package:oneplus/constant/image_const.dart';
import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';

class DashboardRecentTransdata {
  List<DashboardGridModel> recentTransItemList = [
    DashboardGridModel(
      label: 'Pravakar sir',
      iconPath: ImageConstant.profileImage,
      pageToNavigate: '',
      badgeCount: 3,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Adarsh',
      iconPath: ImageConstant.adrashImag,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Seema',
      iconPath: ImageConstant.seemaImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Soumya',
      iconPath: ImageConstant.soumyaImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Soudamini',
      iconPath: ImageConstant.soudaminiImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    // DashboardGridModel(
    //   label: 'Live Class',
    //   iconPath: ImageConstant.addUserImage,
    //   pageToNavigate: '',
    //   badgeCount: 0,
    //   gridCategory: '',
    // ),
  ];
}
