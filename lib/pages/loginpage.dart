import "package:flutter/material.dart";

import 'package:flutter/material.dart';
import 'package:helloworld/utils/routs.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool change = false;
  final _FormKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_FormKey.currentState!.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 4));

      await Navigator.pushNamed(context, MyRouter.homeRoute);
      setState(() {
        change = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int c = 0;
    print(c);
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
                key: _FormKey,
                child: Column(
                  children: [
                    Image.asset("images/login.png", fit: BoxFit.cover),
                    SizedBox(
                      height: 22.0,
                    ),
                    Text(
                      'Welcome $name',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 22.0,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        child: Column(
                          children: [
                            TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Username",
                                  labelText: "Username",
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please enter username";
                                  }
                                  return null;
                                },
                                onChanged: (value) {
                                  name = value;
                                  setState(() {});
                                }),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter Password",
                                labelText: "password",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter password";
                                } else if (value.length < 6) {
                                  return "Passsword length be > 6";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Material(
                                color: Colors.deepPurple,
                                borderRadius:
                                    BorderRadius.circular(change ? 20 : 8),
                                child: InkWell(
                                  splashColor: Colors.red,
                                  onTap: () => moveToHome(context),
                                  child: AnimatedContainer(
                                    duration: Duration(seconds: 2),
                                    width: change ? 50 : 150,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: change
                                        ? Icon(Icons.done, color: Colors.white)
                                        : Text(
                                            "Login",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                    // decoration: BoxDecoration(
                                    //     color: Colors.deepPurple,
                                  ),
                                ))
                            // ElevatedButton(
                            //   child: Text("Login"),
                            //   style: TextButton.styleFrom(),
                            //   onPressed: () {
                            //     Navigator.pushNamed(context, MyRouter.homeRoute);
                            //   },
                            // )
                          ],
                        ))
                  ],
                ))));
  }
}
