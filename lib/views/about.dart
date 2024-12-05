import 'package:flutter/material.dart';
import 'templates/header.dart';
import 'templates/navbar.dart';
import '../utils/navbar_state.dart';
import '../utils/navigation_utils.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
          headlineLarge: TextStyle(color: Colors.blueAccent),
          headlineMedium: TextStyle(color: Colors.blueGrey),
        ),
      ),
      home: Scaffold(
        appBar: Header(title: "About"),
        body: Center(
          child: Text(
            "About This page is empty",
            style: TextStyle(color: Colors.white70),
          ),
        ),
        bottomNavigationBar: Navbar(
          onItemTapped: (index) => NavigationUtils.navigateTo(index, context),
        ),
      ),
    );
  }
}
