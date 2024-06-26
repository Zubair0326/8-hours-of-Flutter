class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iPhone 12",
      desc: "Apple iPhone 12th generation",
      price: 99999,
      color: "#33505a",
      image: "https://m.media-amazon.com/images/I/615+xw-8jFL.jpg",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
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
