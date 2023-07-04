import 'package:flutter/material.dart';
import 'package:helloworld/pages/home_page_detail.dart';

import '../../../models/catalogue.dart';
import '../../../pages/homepage.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CatalogueModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogueModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetailPage(catalog: catalog))),
              child: CatalogItem(catalog: catalog));
        });
  }
}
