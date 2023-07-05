import 'package:flutter/material.dart';
import 'package:helloworld/pages/cartpage.dart';
import 'package:helloworld/utils/routs.dart';
import 'package:helloworld/utils/widgets/themes.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';
import 'package:flutter/src/material/text_theme.dart';

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
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRouter.homeRoute,
        routes: {
          "/": (context) => LoginPage(),
          MyRouter.loginRoute: (context) => LoginPage(),
          MyRouter.homeRoute: (context) => Homepage(),
          MyRouter.cartRoute: (context) => CartPage(),
        });
  }
}
