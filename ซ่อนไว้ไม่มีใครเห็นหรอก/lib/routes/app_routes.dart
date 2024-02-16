import 'package:flutter/material.dart';
import 'package:nathanon_s_application1/presentation/home_screen/home_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen()
  };
}
