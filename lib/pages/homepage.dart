import 'package:flutter/material.dart';
import 'package:helloworld/models/catalogue.dart';
import 'package:helloworld/utils/widgets/item_widget.dart';

import '../utils/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  // const Homepage({super.key});
  int day = 49;
  final hj = "gian";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogueModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            // itemCount: CatalogueModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                // item: CatalogueModel.items[index],
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
