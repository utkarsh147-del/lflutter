import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloworld/models/catalogue.dart';
import 'package:helloworld/utils/routs.dart';
import 'package:helloworld/utils/widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/widgets/drawer.dart';

import '../utils/widgets/home_widgets/catalog_header.dart';
import '../utils/widgets/home_widgets/catalog_image.dart';
import '../utils/widgets/home_widgets/catalog_list.dart';
import '../utils/widgets/themes.dart';

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
      backgroundColor: context.canvasColor,
      // backgroundColor: Theme.of(context).cardColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRouter.cartRoute),
        backgroundColor: context.theme.primaryColor,
        child: Icon(
          CupertinoIcons.cart,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatHeader(),
              if (CatalogueModel.items != null &&
                  CatalogueModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().py16().expand(),
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(
            image: catalog.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: catalog.name,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            RichText(
              text: TextSpan(text: catalog.desc, style: context.captionStyle),
            ),

            // catalog.desc.text.textStyle(context.captionStyle).make()
          ],
        ))
      ],
    )).white.rounded.square(100).make().py16();
  }
}
