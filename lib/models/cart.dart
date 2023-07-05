import 'dart:core';

import 'package:helloworld/models/catalogue.dart';

class CartModel {
  late CatalogueModel _catalog;

  final List<int> _itemIds = [];

  CatalogueModel get catalog => _catalog;

  set catalog(CatalogueModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
