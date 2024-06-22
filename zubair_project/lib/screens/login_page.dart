// import 'dart:ffi';
// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';
import 'package:zubair_project/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 76, 157, 228),
          title: Text(
            'New App',
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                " Welcome $name",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    labelText: 'Username',
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     },
              //     child: Text("Login")
              //     ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changebutton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changebutton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changebutton
                      ? Icon(Icons.done, color: Colors.white)
                      : Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
