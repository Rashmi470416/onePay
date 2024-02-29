import 'package:oneplus/constant/image_const.dart';
import 'package:oneplus/model/dashboard/dashoard_moneyTrans_grid_model.dart';

class DashboardGridTicketdata {
  List<DashboardGridModel> ticketItemList = [
    DashboardGridModel(
      label: 'Movies',
      iconPath: ImageConstant.videoPlayImg,
      pageToNavigate: '',
      badgeCount: 3,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Trains',
      iconPath: ImageConstant.busImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Bus',
      iconPath: ImageConstant.busImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Flights',
      iconPath: ImageConstant.aeroplaneImage,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
    DashboardGridModel(
      label: 'Cars',
      iconPath: ImageConstant.carImg,
      pageToNavigate: '',
      badgeCount: 0,
      gridCategory: '',
    ),
  ];
}
