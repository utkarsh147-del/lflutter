class CatalogueModel {
  static List<Item> items = [
    // Item(
    //   id: 001,
    //   name: "Iphone 7",
    //   desc: "Apple i phone mazing",
    //   price: 900,
    //   color: "#3305a",
    //   image:
    //       "data:image/jpeg;base64,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",
    // )
  ];

  Item getById(int id) =>
      items.firstWhere((element) => element.id, orElse: null);

  Item getByPosition(int pos) => items[pos];
}

class Item {
  final id;
  final name;
  final desc;
  final price;
  final color;
  final image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
