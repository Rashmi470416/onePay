import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oneplus/constant/color_const.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/utils/display_utils.dart';
import 'package:oneplus/views/dashboard_screen/home_screen/home_screen.dart';
import 'package:oneplus/views/offers_screen/offers_screen.dart';
import 'package:oneplus/widgets/circular_image_view.dart';
import 'package:oneplus/widgets/icon_button.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var tabindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: blueColor),
          shadowColor: whiteColor,
          backgroundColor: whiteColor,
          leading: InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.profileScreen);
              },
              child: CircularImageWidget()),
          title: _mobileNumberWidget(),
          actions: [
            Stack(
              children: [
                IconButtonWidget(
                  icon: CupertinoIcons.bell,
                  iconSize: 24,
                  onPressed: () {},
                ),
                Positioned(
                  right: 13,
                  top: 10,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: blueColor,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [vGap(10), _dashBoardTabBar()],
          ),
        ));
  }

  Widget _mobileNumberWidget() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Container(
          width: 380,
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: mobBgColor,
              border: Border.all(
                  width: 0, color: mobBgColor, style: BorderStyle.solid)),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: 'search User Id`s etc',
                hintStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: greyColor),
                contentPadding: EdgeInsets.all(15),
                fillColor: mobBgColor,
                focusColor: greyColor,
                border: InputBorder.none),
            onChanged: (value) {
              // Do something
            },
          ),
        ),
      ),
    );
  }

  Widget _dashBoardTabBar() {
    return DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TabBar(
                onTap: (index) {
                  setState(() {
                    tabindex = index;
                  });
                },
                labelColor: blueColor,
                indicatorColor: blueColor,
                unselectedLabelColor: blackColor,
                tabs: const [
                  Tab(text: '   Home'),
                  Tab(text: ' Balance  '),
                  Tab(text: '   Offers  '),
                  Tab(
                    text: ' Rewards      ',
                  )
                ],
              ),
              Container(
                  height: 1000,
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.2))),
                  child: TabBarView(children: <Widget>[
                    Container(child: HomeDashboardScreen()),
                    Container(
                      child: Center(child: Text("Balance")),
                    ),
                    Container(
                      child: OfferDashboardScreen(),
                    ),
                    Container(
                      child: Center(child: Text("REWARDS")),
                    ),
                  ]))
            ]));
  }
}
