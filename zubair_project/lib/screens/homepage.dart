import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = 'vedant';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 103, 145, 236),
        title: Text(
          "Zubair Patel",
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Welcome to $days days of flutter by $name'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
