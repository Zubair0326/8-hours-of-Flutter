import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
        body: Column(
          children: [
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Login",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
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
            ElevatedButton(
                onPressed: () {
                  print("Hi Zubair");
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
