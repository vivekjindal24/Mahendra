import 'package:flutter/material.dart';
import 'package:shiv_shakti/presentation/android_large_one_screen/android_large_one_screen.dart';

class AppRoutes {
  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        androidLargeOneScreen: AndroidLargeOneScreen.builder,
        initialRoute: AndroidLargeOneScreen.builder
      };
}
