import 'package:flutter/material.dart';
import 'package:oneplus/route/app_routes.dart';
import 'package:oneplus/views/dashboard_screen/dashboard_screen.dart';
import 'package:oneplus/views/login_screen/login_screen.dart';
import 'package:oneplus/views/otp_screen/otp_screen.dart';
import 'package:oneplus/views/pageview/pageview_screen.dart';
import 'package:oneplus/views/profile_screen/profile_screen.dart';
import 'package:oneplus/views/splash_screen/splash_screen.dart';
import 'package:oneplus/views/splash_screen1/spalsh_screen1.dart';
import 'package:oneplus/views/splash_screen2/splash_screen2.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.splashScreen: (context) => const SpashScreen(),
      AppRoutes.loginScreen: (context) => const LoginSCreen(),
      AppRoutes.dashboardScreen: (context) => const DashboardScreen(),
      AppRoutes.profileScreen: (context) => const ProfileScreen(),
      AppRoutes.splashScreen1: (context) => const SplashSCreen1(),
      AppRoutes.SplashScreen2: (context) => const SplashSCreen2(),
      AppRoutes.pageviwScreen: (context) => const PageViewScreen(),
      AppRoutes.otpScreen: (context) => const OtpScreen()
    };
  }
}
