import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(bottom: 15.0),
          ),
          buttonField(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'you@example.com',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'password',
        hintText: 'password',
      ),
    );
  }

  Widget buttonField() {
    return RaisedButton(
      onPressed: () {},
      child: Text(
        'submit',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.5,
        ),
      ),
      color: Colors.green,
    );
  }
}
