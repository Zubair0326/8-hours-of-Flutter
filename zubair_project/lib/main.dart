import 'package:flutter/material.dart';
import 'package:zubair_project/screens/homepage.dart';

// import 'package:zubair_project/screens/homepage.dart';
import 'package:zubair_project/screens/login_page.dart';
import 'package:zubair_project/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      themeMode: ThemeMode.dark,
      routes: {
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
