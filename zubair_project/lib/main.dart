import 'package:flutter/material.dart';

// import 'package:zubair_project/screens/homepage.dart';
import 'package:zubair_project/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      themeMode: ThemeMode.dark,
      routes: {"/login": (context) => LoginPage()},
    );
  }
}
