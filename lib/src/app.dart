import 'package:flutter/material.dart';
import './screens/loginScreen.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.redAccent,
        ),
        body: LoginScreen(),
      ),
    );
  }
}
