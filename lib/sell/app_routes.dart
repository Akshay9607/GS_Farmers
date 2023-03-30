import 'package:flutter/material.dart';
import 'package:farmhelp/sell/sell2.dart';
// import 'package:ojas_s_application11/presentation/frame_two_screen/frame_two_screen.dart';
// import 'package:ojas_s_application11/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String frameOneScreen = '/sell';

  static const String frameTwoScreen = '/order';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    frameOneScreen: (context) => SellPage(),
    // frameTwoScreen: (context) => FrameTwoScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen()
  };
}
