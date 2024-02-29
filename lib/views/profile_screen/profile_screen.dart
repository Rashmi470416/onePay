import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/constant/image_const.dart';
import 'package:oneplus/utils/display_utils.dart';
import 'package:oneplus/widgets/profile_menu/profile_menu_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.1),
          child: Column(
            children: [
              vGap(20),
              Container(
                height: 215,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 28,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                ImageConstant.profileImage,
                              )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 13),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Pravakar",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    hGap(10),
                                    Image.asset(
                                      ImageConstant.coinImg,
                                    ),
                                    hGap(130),
                                    Image.asset(ImageConstant.closeCircle)
                                  ],
                                ),
                              ),
                              vGap(13),
                              LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width - 80,
                                animation: true,
                                lineHeight: 15.0,
                                animationDuration: 2500,
                                percent: 0.8,
                                center: const Text(
                                  "80.0%",
                                  style: TextStyle(color: whiteColor),
                                ),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                barRadius: Radius.circular(20),
                                progressColor: blueColor,
                              ),
                            ],
                          )
                        ],
                      ),
                      vGap(6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            children: [
                              Text(
                                "1,208",
                                style: TextStyle(
                                    color: blueColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text("Transactions")
                            ],
                          ),
                          const Column(
                            children: [
                              Text(
                                "726",
                                style: TextStyle(
                                    color: blueColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text("Points")
                            ],
                          ),
                          const Column(
                            children: [
                              Text(
                                "8",
                                style: TextStyle(
                                    color: blueColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text("Ranks")
                            ],
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: blackColor,
                                elevation: 2,
                                backgroundColor: scanQrColor1),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Explore"),
                                hGap(10),
                                Image.asset(ImageConstant.cicularChevern)
                              ],
                            ),
                          )
                        ],
                      ),
                      vGap(
                        15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: blackColor,
                                elevation: 2,
                                backgroundColor: scanQrColor1),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text("Edit Profile"),
                                hGap(8),
                                Image.asset(ImageConstant.editProgileImg)
                              ],
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: blackColor,
                                elevation: 2,
                                backgroundColor: scanQrColor1),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text("Settings"),
                                hGap(8),
                                Image.asset(ImageConstant.settingImg)
                              ],
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: blackColor,
                                elevation: 2,
                                backgroundColor: scanQrColor1),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text("Share"),
                                hGap(8),
                                Image.asset(ImageConstant.shareImg)
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              vGap(20),

              ProfileMenuWidget(
                  title: "All Transactions",
                  icon: ImageConstant.receieptMinus,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "Pending Transactions",
                  icon: ImageConstant.cousionSign,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "Pending Transactions",
                  icon: ImageConstant.clockImg,
                  onPress: () {}),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: "Raise an issue",
                  icon: ImageConstant.cousion,
                  onPress: () {}),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: "Help and Support",
                  icon: ImageConstant.heartImg,
                  onPress: () {}),

              ProfileMenuWidget(
                  title: "About Us",
                  icon: ImageConstant.cousionSign,
                  onPress: () {}),

              ProfileMenuWidget(
                  title: "Terms and Conditions ",
                  icon: ImageConstant.clockImg,
                  onPress: () {}),

              ProfileMenuWidget(
                  title: "Feedback ",
                  icon: ImageConstant.cousion,
                  onPress: () {}),

              // ProfileMenuWidget(
              //     title: "Logout",
              //     icon: Icons.login,
              //     textColor: Colors.red,
              //     endIcon: false,
              //     onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
