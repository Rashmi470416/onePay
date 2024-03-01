import 'package:flutter/material.dart';
import 'package:oneplus/route/app_pages.dart';
import 'package:oneplus/route/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      title: "OnePLus",
      routes: AppPages.routes,
      initialRoute: AppRoutes.pageviwScreen,
      // home: Otp(),
    );
  }
}
