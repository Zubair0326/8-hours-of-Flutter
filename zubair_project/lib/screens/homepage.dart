import 'package:flutter/material.dart';
import 'package:zubair_project/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int days = 30;
    // String name = 'vedant';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catelog App",
        ),
      ),
      body: Container(
        child: Center(
          child: Text(''),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
