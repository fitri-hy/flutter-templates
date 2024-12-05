import 'package:flutter/material.dart';
import 'views/home.dart';
import 'views/about.dart';
import 'views/setting.dart';
import 'views/page1.dart';
import 'views/page2.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
	  case '/about':
        return MaterialPageRoute(builder: (_) => About());
	  case '/setting':
        return MaterialPageRoute(builder: (_) => Setting());
		
      case '/page_a':
        return MaterialPageRoute(builder: (_) => Page1());
      case '/page_b':
        return MaterialPageRoute(builder: (_) => Page2());
		
      default:
        return MaterialPageRoute(builder: (_) => Home());
    }
  }
}
