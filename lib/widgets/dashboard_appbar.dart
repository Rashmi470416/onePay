// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:oneplus/constant/color_const.dart';
// import 'package:oneplus/widgets/circular_image_view.dart';
// import 'package:oneplus/widgets/icon_button.dart';

// class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const DashboardAppBar({
//     super.key,
//     required this.userName,
//     required this.userProfilePic,
//     this.onProfileTap,
//     this.onActionItemPressed,
//   });

//   final Function()? onProfileTap;
//   final Function()? onActionItemPressed;
//   final String userName;
//   final String userProfilePic;

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: whiteColor,
//       centerTitle: false,
//       elevation: 0,
//       automaticallyImplyLeading: false,
//       leading: CircularImageWidget(),
//       leadingWidth: 0,
//       actions: [
//         Stack(
//           children: [
//             IconButtonWidget(
//               icon: CupertinoIcons.bell,
//               iconSize: 24,
//               onPressed: onActionItemPressed,
//             ),
//             Positioned(
//               right: 13,
//               top: 10,
//               child: Container(
//                 height: 10,
//                 width: 10,
//                 decoration: BoxDecoration(
//                   color: blueColor,
//                   borderRadius: BorderRadius.circular(100),
//                   border: Border.all(
//                     color: blueColor,
//                     width: 1,
//                     style: BorderStyle.solid,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
