import 'package:flutter/material.dart';

class NavigationUtils {
  static const Map<int, String> routes = {
    0: '/home',
    1: '/about',
    2: '/setting',
  };

  static void navigateTo(int index, BuildContext context) {
    final routeName = routes[index];
    if (routeName != null && ModalRoute.of(context)?.settings.name != routeName) {
      Navigator.pushReplacementNamed(context, routeName);
    }
  }
}
