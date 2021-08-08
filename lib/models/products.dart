import 'dart:convert';

class ProductsModel {
  static List<Item> items = [
// get item by id
  ];
  static Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);


 static Item getByPosition(int pos) => items[pos];
}
//     Item(
//     id: 1,
//         name: "iPhone 12 Pro",
//         desc: "Apple iPhone 12th generation",
//         price: 999,
//         color: "#33505a",
//         image: "assets/images/brgrs.jpg"),
//          Item(
//   id: 2,
//   name: "Black Sandal",
//   desc: "1st step | Sandal | women",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/chappal.png",
// ),
// Item(
//   id: 3,
//   name: "White Sandal",
//   desc: "ECS | White | Chappal | women",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/white.png",
// ),
// Item(
//   id: 4,
//   name: "Midium Burger",
//   desc: "KFC | Midium Size | CHicken Burger",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/brgrs.jpg",
// ),
// Item(
//   id: 5,
//   name: "Pink Frok",
//   desc: "Diners | Pink | Child",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/frok-.png",
// ),
// Item(
//   id: 6,
//   name: "Dress Shirt",
//   desc: "Diners | White | Men",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/whiteshirt.png",
// ),
// Item(
//   id: 7,
//   name: "Black Suit",
//   desc: "Diners | Black | Men",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/cot.png",
// )
//   ];

//static List<Item> items;

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
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

  Item copyWith({
    required int id,
    required String name,
    required String desc,
    required num price,
    required String color,
    required String image,
  }) {
    return Item(
      id: id,
      name: name,
      desc: desc,
      price: price,
      color: color,
      image: image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    //if (map == null) return null;

    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Item &&
        o.id == id &&
        o.name == name &&
        o.desc == desc &&
        o.price == price &&
        o.color == color &&
        o.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }

  // Item(this.id, this.name, this.desc, this.price, this.color, this.image);

  // static fromMap(item) {}

//   factory Item.fromMap(Map<String, dynamic> map) {
//     return Item(
//       id: map["id"],
//       name: map["name"],
//       desc: map["desc"],
//       price: map["price"],
//       color: map["color"],
//       image: map["image"],
//     );
//   }
//   topMap() => {
//         "id": id,
//         "name": name,
//         "desc": desc,
//         "price": price,
//         "color": color,
//         "image": image,
//       };

  // Item copyWith({
  //   int? id,
  //   String? name,
  //   String? desc,
  //   num? price,
  //   String? color,
  //   String? image,
  // }) {
  //   return Item(
  //     id ?? this.id,
  //     name ?? this.name,
  //     desc ?? this.desc,
  //     price ?? this.price,
  //     color ?? this.color,
  //     image ?? this.image,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'name': name,
  //     'desc': desc,
  //     'price': price,
  //     'color': color,
  //     'image': image,
  //   };
  // }

  // factory Item.from(Map<String, dynamic> map) => Item(
  //       map['id'],
  //       map['name'],
  //       map['desc'],
  //       map['price'],
  //       map['color'],
  //       map['image'],
  //     );

  // String toJson() => json.encode(toMap());

  // factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  // @override
  // String toString() {
  //   return 'Item(id: $id, name: $name, desc: $desc, price: $price, color: $color, image: $image)';
  // }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is Item &&
  //       other.id == id &&
  //       other.name == name &&
  //       other.desc == desc &&
  //       other.price == price &&
  //       other.color == color &&
  //       other.image == image;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       name.hashCode ^
  //       desc.hashCode ^
  //       price.hashCode ^
  //       color.hashCode ^
  //       image.hashCode;
  // }
}


// Items(
//   id: 1,
//   name: "V Neck Shirt",
//   desc: "engine | V Neck | black Shirt",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/vneck.png",
//)
// Item(
//   id: 2,
//   name: "Black Sandal",
//   desc: "1st step | Sandal | women",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/chappal.png",
// ),
// Item(
//   id: 3,
//   name: "White Sandal",
//   desc: "ECS | White | Chappal | women",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/white.png",
// ),
// Item(
//   id: 4,
//   name: "Midium Burger",
//   desc: "KFC | Midium Size | CHicken Burger",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/brgrs.jpg",
// ),
// Item(
//   id: 5,
//   name: "Pink Frok",
//   desc: "Diners | Pink | Child",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/frok-.png",
// ),
// Item(
//   id: 6,
//   name: "Dress Shirt",
//   desc: "Diners | White | Men",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/whiteshirt.png",
// ),
// Item(
//   id: 7,
//   name: "Black Suit",
//   desc: "Diners | Black | Men",
//   price: 9099.00,
//   color: "#33505a",
//   image: "assets/images/cot.png",
// ),
//];
