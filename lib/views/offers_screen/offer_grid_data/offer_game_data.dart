import 'package:oneplus/constant/image_const.dart';
import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';

class OffersGridGamedata {
  List<DashboardGridModel> offergameItemList = [
    DashboardGridModel(
      label: 'BGMI',
      iconPath: ImageConstant.bmgiImg,
      pageToNavigate: '',
      badgeCount: 3,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Clash Of Clan',
      iconPath: ImageConstant.clashImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Fruit Ninja ',
      iconPath: ImageConstant.fruitNinjaImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Free Fire ',
      iconPath: ImageConstant.freeFireImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    // DashboardGridModel(
    //   label: 'Cars',
    //   iconPath: ImageConstant.carImg,
    //   pageToNavigate: '',
    //   badgeCount: 0,
    //   gridCategory: '',
    // ),
  ];
}
