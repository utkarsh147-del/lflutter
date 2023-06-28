import "package:flutter/material.dart";

import 'package:flutter/material.dart';
import 'package:helloworld/utils/routs.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset("images/login.png", fit: BoxFit.cover),
        SizedBox(
          height: 22.0,
        ),
        Text(
          "Welcome",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 22.0,
        ),
        Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "password",
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRouter.homeRoute);
                  },
                )
              ],
            ))
      ],
    ));
  }
}
