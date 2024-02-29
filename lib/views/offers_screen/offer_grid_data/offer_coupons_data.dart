import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/image_const.dart';
import 'package:oneplus/model/offer/offer_grid_model.dart';

class OffersGridCouponsdata {
  List<OffersGridModel> offerCouponsItemList = [
    OffersGridModel(
        label: 'Get flat 10% off',
        iconPath: ImageConstant.mobileImage,
        title: 'Redeem Now ',
        subtitle: "Coupon Code ",
        badgeCount: 3,
        offcolor: ticketBookColor),
    OffersGridModel(
        label: 'Get 50 % off ',
        iconPath: ImageConstant.lightModeImage,
        title: 'Redeem Now ',
        subtitle: "Coupon Code :AVVAIL67806K",
        badgeCount: 0,
        offcolor: scanQrColor1),
    OffersGridModel(
        label: 'Limited Offer Discount  ',
        iconPath: ImageConstant.videoPlayImg,
        title: "Redeem Now ",
        subtitle: "Coupon Code :AVVAIL67806K",
        badgeCount: 0,
        offcolor: videoPlaycolor),
    OffersGridModel(
        label: 'Buy One Get One Free  ',
        iconPath: ImageConstant.receieptMinus,
        title: 'Redeem Now  ',
        subtitle: "Coupon Code :AVVAIL67806K",
        badgeCount: 0,
        offcolor: greyColor),
    // DashboardGridModel(
    //   label: 'Cars',
    //   iconPath: ImageConstant.carImg,
    //   pageToNavigate: '',
    //   badgeCount: 0,
    //   gridCategory: '',
    // ),
  ];
}
