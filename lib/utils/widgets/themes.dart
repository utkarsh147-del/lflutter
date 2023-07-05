import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.red,
        cardColor: Colors.white,
        canvasColor: creamColor,
        primaryColor: darkblueColor,
        accentColor: darkblueColor,
        appBarTheme: AppBarTheme(
          // titleTextStyle: Theme.of(context).textTheme,

          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black),
        ),
        textTheme: Theme.of(context).textTheme,
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        cardColor: Colors.black,
        canvasColor: darkcreamColor,
        primaryColor: lightblueColor,
        accentColor: Colors.white,
        appBarTheme: AppBarTheme(
          // titleTextStyle: Theme.of(context).textTheme,

          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.black),
        ),
      );
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color darkblueColor = Color(0xff403b58);
  static Color lightblueColor = Vx.indigo400;
}
