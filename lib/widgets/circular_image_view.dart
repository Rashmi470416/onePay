import 'package:flutter/material.dart';
import 'package:oneplus/constant/image_const.dart';

class CircularImageWidget extends StatelessWidget {
  const CircularImageWidget(
      {super.key,
      this.radius,
      this.height = 50.0,
      this.width = 50.0,
      // this.imageProvider = EnumImageProvider.providerNetwork,
      this.imageProvider});

  final double? height;
  final String? imageProvider;
  final double? radius;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 100),
      child:
          //  imageProvider == null
          //     ? Image.network(
          //         imagePath,
          //         height: height,
          //         width: width,
          //         fit: BoxFit.cover,
          //       )
          //     :
          Image.asset(
        ImageConstant.profileImage,
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
