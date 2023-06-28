import 'package:flutter/material.dart';
import 'package:helloworld/utils/routs.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

// This widget is the root of your application.

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // const MyApp({Key key}):super(key:key)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: Homepage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.red),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        routes: {
          "/": (context) => LoginPage(),
          MyRouter.loginRoute: (context) => LoginPage(),
          MyRouter.homeRoute: (context) => Homepage(),
        });
  }
}
