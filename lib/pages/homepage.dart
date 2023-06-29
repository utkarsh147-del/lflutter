import 'package:flutter/material.dart';

import '../utils/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  // const Homepage({super.key});
  int day = 49;
  final hj = "gian";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $day heer by $hj"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
