import 'package:flutter/material.dart';
import '../presentation/android_large_two_screen/android_large_two_screen.dart';
import '../presentation/android_large_four_screen/android_large_four_screen.dart';
import '../presentation/android_large_one_screen/android_large_one_screen.dart';
import '../presentation/android_large_three_screen/android_large_three_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String androidLargeFourScreen = '/android_large_four_screen';

  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    androidLargeTwoScreen: (context) => AndroidLargeTwoScreen(),
    androidLargeFourScreen: (context) => AndroidLargeFourScreen(),
    androidLargeOneScreen: (context) => AndroidLargeOneScreen(),
    androidLargeThreeScreen: (context) => AndroidLargeThreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
