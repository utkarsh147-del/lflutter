import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloworld/models/catalogue.dart';
import 'package:helloworld/utils/widgets/item_widget.dart';

import '../utils/widgets/drawer.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // const Homepage({super.key});
  int day = 49;

  final hj = "gian";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 5));
    var catjson = await rootBundle.loadString("files/catalog.json");
    var decode = jsonDecode(catjson);
    var product = decode["products"];
    CatalogueModel.items =
        List.from(product).map<Item>((item) => Item.fromMap((item))).toList();
    // print(product);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogueModel.items != null && CatalogueModel.items.isNotEmpty)
            ? ListView.builder(
                // itemCount: CatalogueModel.items.length,
                itemCount: CatalogueModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    // item: CatalogueModel.items[index],
                    item: CatalogueModel.items[index],
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
