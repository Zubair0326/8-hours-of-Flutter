import 'package:flutter/material.dart';
import 'package:zubair_project/screens/homepage.dart';

// import 'package:zubair_project/screens/homepage.dart';
import 'package:zubair_project/screens/login_page.dart';
import 'package:zubair_project/utils/routes.dart';
import 'package:zubair_project/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
