import 'dart:ffi';

class Item {
  int id;
  String name;
  double price;
  String img;

  Item({required this.id, required this.name, required this.price, required this.img});

  Item.fromJson(Map<String, dynamic> data)
    : id = data['id'],
      name = data['name'],
      price = data['price'],
      img = data['img'];
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'price': price, 'img': img};


}